/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * <joerg@FreeBSD.ORG> wrote this file.  As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me a beer in return.        Joerg Wunsch
 * ----------------------------------------------------------------------------
 */

/* $Id: twitest.c,v 1.1 2008/07/05 14:14:27 claytong Exp $ */

/*
 * Simple demo program that talks to a 24Cxx I²C EEPROM using the
 * builtin TWI interface of an ATmega device.
 */

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#include <avr/io.h>
#include <util/twi.h>		/* Note [1] */

#define ASCII_LF        0x0a
#define ASCII_CR        0x0d

#define DEBUG 1

/*
 * System clock in Hz.
 */
//#define F_CPU 14745600UL	/* Note [2] */
#define F_CPU 8000000UL	/* Note [2] */

/*
 * Compatibility defines.  This should work on ATmega8, ATmega16,
 * ATmega163, ATmega323 and ATmega128 (IOW: on all devices that
 * provide a builtin TWI interface).
 *
 * On the 128, it defaults to USART 1.
 */
#ifndef UCSRB
# ifdef UCSR1A		/* ATmega128 */
#  define UCSRA UCSR1A
#  define UCSRB UCSR1B
#  define UBRR UBRR1L
#  define UDR UDR1
# else /* ATmega8 */
#  define UCSRA USR
#  define UCSRB UCR
# endif
#endif
#ifndef UBRR
#  define UBRR UBRRL
#endif

/*
 * Note [3]
 * TWI address for 24Cxx EEPROM:
 *
 * 1 0 1 0 E2 E1 E0 R/~W	24C01/24C02
 * 1 0 1 0 E2 E1 A8 R/~W	24C04
 * 1 0 1 0 E2 A9 A8 R/~W	24C08
 * 1 0 1 0 A10 A9 A8 R/~W	24C16
 */
//#define TWI_SLA_24CXX	0xa0	/* E2 E1 E0 = 0 0 0 */
#define TWI_SLA_24CXX	0xaC	/* E2 E1 E0 = 1 1 0 */

/*
 * Maximal number of iterations to wait for a device to respond for a
 * selection.  Should be large enough to allow for a pending write to
 * complete, but low enough to properly abort an infinite loop in case
 * a slave is broken or not present at all.  With 100 kHz TWI clock,
 * transfering the start condition and SLA+R/W packet takes about 10
 * µs.  The longest write period is supposed to not exceed ~ 10 ms.
 * Thus, normal operation should not require more than 100 iterations
 * to get the device to respond to a selection.
 */
#define MAX_ITER	200

/*
 * Number of bytes that can be written in a row, see comments for
 * ee24xx_write_page() below.  Some vendor's devices would accept 16,
 * but 8 seems to be the lowest common denominator.
 *
 * Note that the page size must be a power of two, this simplifies the
 * page boundary calculations below.
 */
#define PAGE_SIZE 8

/*
 * Saved TWI status register, for error messages only.  We need to
 * save it in a variable, since the datasheet only guarantees the TWSR
 * register to have valid contents while the TWINT bit in TWCR is set.
 */
uint8_t twst;


// Save current step
uint8_t step;

uint8_t data1[] = { 0x75,0x91,0x20,0x75,0x92,0x00,0x75,0x93,0xFF,0x75,0x94,0x1F,0x75,0x85,0x4A,0xD4 };
uint8_t data2[] = { 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF };
uint8_t data3[] = { 0x02,0x02,0x10,0x02,0x13,0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 };

/*
 * Do all the startup-time peripheral initializations: UART (for our
 * debug/test output), and TWI clock.
 */
void
ioinit(void)
{

#if F_CPU <= 1000000UL
  /*
   * Note [4]
   * Slow system clock, double Baud rate to improve rate error.
   */
  UCSRA = _BV(U2X);
//  UBRR = (F_CPU / (8 * 9600UL)) - 1; /* 9600 Bd */
  UBRR = (F_CPU / (8 * 38400UL)) - 1; /* 38400 Bd */
#else
//  UBRR = (F_CPU / (16 * 9600UL)) - 1; /* 9600 Bd */
  UBRR = (F_CPU / (16 * 38400UL)) - 1; /* 38400 Bd */
#endif
  UCSRB = _BV(TXEN)|_BV(RXEN);		/* tx&rx enable */

  /* initialize TWI clock: 100 kHz clock, TWPS = 0 => prescaler = 1 */
#if defined(TWPS0)
  /* has prescaler (mega128 & newer) */
  TWSR = 0;
#endif

#if F_CPU < 3600000UL
  TWBR = 10;			/* smallest TWBR value, see note [5] */
#else
  TWBR = (F_CPU / 10000UL - 16) / 2;
#endif
}

/*
 * Note [6]
 * Send character c down the UART Tx, wait until tx holding register
 * is empty.
 */
int
uart_putchar(char c, FILE *unused)
{

  if (c == '\n')
    uart_putchar('\r', 0);
  loop_until_bit_is_set(UCSRA, UDRE);
  UDR = c;
  return 0;
}

/*
 * Wait for a character from the UART
 */
int
uart_getchar( void)
{
  loop_until_bit_is_set(UCSRA, RXC);
  return UDR;
}

/*
 * Note [7]
 *
 * Read "len" bytes from EEPROM starting at "eeaddr" into "buf".
 *
 * This requires two bus cycles: during the first cycle, the device
 * will be selected (master transmitter mode), and the address
 * transfered.  Address bits exceeding 256 are transfered in the
 * E2/E1/E0 bits (subaddress bits) of the device selector.
 *
 * The second bus cycle will reselect the device (repeated start
 * condition, going into master receiver mode), and transfer the data
 * from the device to the TWI master.  Multiple bytes can be
 * transfered by ACKing the client's transfer.  The last transfer will
 * be NACKed, which the client will take as an indication to not
 * initiate further transfers.
 */
int
ee24xx_read_bytes(uint16_t eeaddr, int len, uint8_t *buf)
{
  uint8_t sla, twcr, n = 0;
  int rv = 0;

  step = 1;
  /* patch high bits of EEPROM address into SLA */
  sla = TWI_SLA_24CXX;
  step = 2;

  /*
   * Note [8]
   * First cycle: master transmitter mode
   */
  step = 3;
  restart:
  if (n++ >= MAX_ITER)
    return -1;
  begin:
  step = 4;

  TWCR = _BV(TWINT) | _BV(TWSTA) | _BV(TWEN); /* send start condition */
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  step = 5;

  switch ((twst = TW_STATUS))
    {
    case TW_REP_START:		/* OK, but should not happen */
    case TW_START:
      break;

    case TW_MT_ARB_LOST:	/* Note [9] */
      goto begin;

    default:
      return -1;		/* error: not in start condition */
				/* NB: do /not/ send stop condition */
    }
  step = 6;

  /* Note [10] */
  /* send SLA+W */
  TWDR = sla | TW_WRITE;
  TWCR = _BV(TWINT) | _BV(TWEN); /* clear interrupt to start transmission */
  step = 7;
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  step = 8;
  switch ((twst = TW_STATUS))
    {
    case TW_MT_SLA_ACK:
      break;

    case TW_MT_SLA_NACK:	/* nack during select: device busy writing */
      step = 81;
				/* Note [11] */
      goto restart;

    case TW_MT_ARB_LOST:	/* re-arbitrate */
      goto begin;

    default:
      goto error;		/* must send stop condition */
    }
  step = 9;

  TWDR = eeaddr>>8;		/* high 8 bits of addr */
  TWCR = _BV(TWINT) | _BV(TWEN); /* clear interrupt to start transmission */
  step = 10;
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  switch ((twst = TW_STATUS))
    {
    case TW_MT_DATA_ACK:
      break;

    case TW_MT_DATA_NACK:
      goto quit;

    case TW_MT_ARB_LOST:
      goto begin;

    default:
      goto error;		/* must send stop condition */
    }
  step = 11;

  TWDR = eeaddr;		/* low 8 bits of addr */
  TWCR = _BV(TWINT) | _BV(TWEN); /* clear interrupt to start transmission */
  step = 12;
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  step = 13;
  switch ((twst = TW_STATUS))
    {
    case TW_MT_DATA_ACK:
      break;

    case TW_MT_DATA_NACK:
      goto quit;

    case TW_MT_ARB_LOST:
      goto begin;

    default:
      goto error;		/* must send stop condition */
    }
  step = 14;

  /*
   * Note [12]
   * Next cycle(s): master receiver mode
   */
  TWCR = _BV(TWINT) | _BV(TWSTA) | _BV(TWEN); /* send (rep.) start condition */
  step = 15;
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  step = 16;
  switch ((twst = TW_STATUS))
    {
    case TW_START:		/* OK, but should not happen */
    case TW_REP_START:
      break;

    case TW_MT_ARB_LOST:
      goto begin;

    default:
      goto error;
    }
  step = 17;

  /* send SLA+R */
  TWDR = sla | TW_READ;
  TWCR = _BV(TWINT) | _BV(TWEN); /* clear interrupt to start transmission */
  step = 18;
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  step = 19;
  switch ((twst = TW_STATUS))
    {
    case TW_MR_SLA_ACK:
      break;

    case TW_MR_SLA_NACK:
      goto quit;

    case TW_MR_ARB_LOST:
      goto begin;

    default:
      goto error;
    }

  step = 20;
  for (twcr = _BV(TWINT) | _BV(TWEN) | _BV(TWEA) /* Note [13] */;
       len > 0;
       len--)
    {
      if (len == 1)
	twcr = _BV(TWINT) | _BV(TWEN); /* send NAK this time */
      TWCR = twcr;		/* clear int to start transmission */
      while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
      switch ((twst = TW_STATUS))
	{
	case TW_MR_DATA_NACK:
	  len = 0;		/* force end of loop */
	  /* FALLTHROUGH */
	case TW_MR_DATA_ACK:
	  *buf++ = TWDR;
	  rv++;
	  break;

	default:
	  goto error;
	}
    }
  quit:
  /* Note [14] */
  TWCR = _BV(TWINT) | _BV(TWSTO) | _BV(TWEN); /* send stop condition */

  return rv;

  error:
  rv = -1;
  goto quit;
}

/*
 * Write "len" bytes into EEPROM starting at "eeaddr" from "buf".
 *
 * This is a bit simpler than the previous function since both, the
 * address and the data bytes will be transfered in master transmitter
 * mode, thus no reselection of the device is necessary.  However, the
 * EEPROMs are only capable of writing one "page" simultaneously, so
 * care must be taken to not cross a page boundary within one write
 * cycle.  The amount of data one page consists of varies from
 * manufacturer to manufacturer: some vendors only use 8-byte pages
 * for the smaller devices, and 16-byte pages for the larger devices,
 * while other vendors generally use 16-byte pages.  We thus use the
 * smallest common denominator of 8 bytes per page, declared by the
 * macro PAGE_SIZE above.
 *
 * The function simply returns after writing one page, returning the
 * actual number of data byte written.  It is up to the caller to
 * re-invoke it in order to write further data.
 */
int
ee24xx_write_page(uint16_t eeaddr, int len, uint8_t *buf)
{
  uint8_t sla, n = 0;
  int rv = 0;
  uint16_t endaddr;

  if (eeaddr + len < (eeaddr | (PAGE_SIZE - 1)))
    endaddr = eeaddr + len;
  else
    endaddr = (eeaddr | (PAGE_SIZE - 1)) + 1;
  len = endaddr - eeaddr;

  /* patch high bits of EEPROM address into SLA */
  //sla = TWI_SLA_24CXX | (((eeaddr >> 8) & 0x07) << 1);
  sla = TWI_SLA_24CXX;

  restart:
  if (n++ >= MAX_ITER)
    return -1;
  begin:

  /* Note [15] */
  TWCR = _BV(TWINT) | _BV(TWSTA) | _BV(TWEN); /* send start condition */
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  switch ((twst = TW_STATUS))
    {
    case TW_REP_START:		/* OK, but should not happen */
    case TW_START:
      break;

    case TW_MT_ARB_LOST:
      goto begin;

    default:
      return -1;		/* error: not in start condition */
				/* NB: do /not/ send stop condition */
    }

  /* send SLA+W */
  TWDR = sla | TW_WRITE;
  TWCR = _BV(TWINT) | _BV(TWEN); /* clear interrupt to start transmission */
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  switch ((twst = TW_STATUS))
    {
    case TW_MT_SLA_ACK:
      break;

    case TW_MT_SLA_NACK:	/* nack during select: device busy writing */
      goto restart;

    case TW_MT_ARB_LOST:	/* re-arbitrate */
      goto begin;

    default:
      goto error;		/* must send stop condition */
    }

  TWDR = (eeaddr>>8);		/* upper 8 bits of addr */
  TWCR = _BV(TWINT) | _BV(TWEN); /* clear interrupt to start transmission */
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  switch ((twst = TW_STATUS))
    {
    case TW_MT_DATA_ACK:
      break;

    case TW_MT_DATA_NACK:
      goto quit;

    case TW_MT_ARB_LOST:
      goto begin;

    default:
      goto error;		/* must send stop condition */
    }

  TWDR = eeaddr;		/* low 8 bits of addr */
  TWCR = _BV(TWINT) | _BV(TWEN); /* clear interrupt to start transmission */
  while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
  switch ((twst = TW_STATUS))
    {
    case TW_MT_DATA_ACK:
      break;

    case TW_MT_DATA_NACK:
      goto quit;

    case TW_MT_ARB_LOST:
      goto begin;

    default:
      goto error;		/* must send stop condition */
    }

  for (; len > 0; len--)
    {
      TWDR = *buf++;
      TWCR = _BV(TWINT) | _BV(TWEN); /* start transmission */
      while ((TWCR & _BV(TWINT)) == 0) ; /* wait for transmission */
      switch ((twst = TW_STATUS))
	{
	case TW_MT_DATA_NACK:
	  goto error;		/* device write protected -- Note [16] */

	case TW_MT_DATA_ACK:
	  rv++;
	  break;

	default:
	  goto error;
	}
    }
  quit:
  TWCR = _BV(TWINT) | _BV(TWSTO) | _BV(TWEN); /* send stop condition */

  return rv;

  error:
  rv = -1;
  goto quit;
}

/*
 * Wrapper around ee24xx_write_page() that repeats calling this
 * function until either an error has been returned, or all bytes
 * have been written.
 */
int
ee24xx_write_bytes(uint16_t eeaddr, int len, uint8_t *buf)
{
  int rv, total;

  total = 0;
  do
    {
#if DEBUG
      printf("Calling ee24xx_write_page(%d, %d, %p)",
	     eeaddr, len, buf);
#endif
      rv = ee24xx_write_page(eeaddr, len, buf);
#if DEBUG
      printf(" => %d\n", rv);
#endif
      if (rv == -1)
        return -1;
      eeaddr += rv;
      len -= rv;
      buf += rv;
      total += rv;
    }
  while (len > 0);

  return total;
}

void
error(void)
{

  printf("error: TWI status %#x  Step %d\n", twst, step);
  exit(0);
}

FILE mystdout = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);

//--------------------------------------------------------------
//
//  Read the EEPROM ROM over the IIC bus and output in intel hex format
//
void
read_ROM(void)
{
    uint16_t a;
    int rv;
    uint8_t b[16];
    uint8_t x;
    uint8_t sum;

    for (a = 0; a < 0x2000;)
    {
        printf(":10%04X00", a);
        rv = ee24xx_read_bytes(a, 16, b);
        if (rv <= 0)
            error();
        if (rv < 16)
            printf("warning: short read %d\n", rv);
        sum = 0x10+(a>>8)+(a&0xFF);
        a += rv;
        for (x = 0; x < rv; x++)
        {
            sum += b[x];
            printf("%02X", b[x]);
        }
        printf("%02X\n", (0-sum)&0xFF);
    }
    printf(":00000001FF\n\n");
}

//--------------------------------------------------------------
//
//  Read an ASCII hex value from a string
//      Returns value or a negative error code
//
int GetHex( char *szText )
{
	char	cChar1, cChar2;
	int		iNumber1, iNumber2;

	cChar1 = *szText;
	szText++;
	cChar2 = *szText;
	if ( (cChar1>'F') || (cChar1<'0') ||
		 ( (cChar1>'9') && (cChar1<'A') ) )
	{	/* bad character - might be CR or LF */
		if ( (cChar1==ASCII_LF) ||
		     (cChar1==ASCII_CR) ||
		     (cChar1==0) )
			return( -1 );			/* return End-of-Line */
		return( -2 );				/* return invalid character */
	}
	if ( (cChar2>'F') || (cChar2<'0') ||
		 ( (cChar2>'9') && (cChar2<'A') ) )
		return( -2 );				/* return invalid character */
	iNumber1 = cChar1-'0';
	if ( iNumber1>9 )
		iNumber1 -= ('A'-'9'-1);
	iNumber2 = cChar2-'0';
	if ( iNumber2>9 )
		iNumber2 -= ('A'-'9'-1);
	return( iNumber1*0x10 + iNumber2 );
}

//--------------------------------------------------------------
//
//  Read a line from an Intel hex file and program EEPROM
//  pcHexLine = hex line data (excludes the ':')
//
int ReadIntelHex( char *pcHexLine )
{
    short   iResult;
    short   iNumCodes;
    unsigned char ucChecksum;
    static unsigned char aucHexCodes[40];
    unsigned int uiFirstAddr;

	/* decode line to an array of byte values */
	iNumCodes = 0;
	ucChecksum = 0;
	do
	{
		iResult = GetHex( pcHexLine );
		if ( iResult==-2 )
		    return -1;
		aucHexCodes[iNumCodes] = iResult;
		pcHexLine++;
		pcHexLine++;
		iNumCodes++;
		if ( iNumCodes>40 )
		    return -2;
		ucChecksum += iResult;
	} while ( iResult>=0 );	/* continue till error - end of line */
	/* Decode the data bytes to their appropriate fields */
	iNumCodes--;
	if ( iNumCodes<5 )
        return -3;
	ucChecksum -= iResult;
	if ( ucChecksum!=0 )
        return -4;
	iResult = aucHexCodes[0];
    switch ( aucHexCodes[3] )
    {
        case 0:     /* normal data line */
    		uiFirstAddr = (0x100L*aucHexCodes[1]) + aucHexCodes[2];
    		if ( iResult!=(iNumCodes-5) )
                return -5;
    		/* Copy data bytes into EEPROM */
            ee24xx_write_bytes(uiFirstAddr,  iResult, &(aucHexCodes[4]) );
            return iResult;
        case 1:     /* end marker */
            break;
        default:
            return -6;
    }
    return 0;
}

//--------------------------------------------------------------
//
//  Read a line of hex and program EEPROM
//
void
read_hexline(void)
{
    static char szHexLine[70];
    int iIndex = 0;
    int iChIn;
    
    while ( 1 )
    {
        iChIn = uart_getchar();
        if ( iChIn<' ' )
            break;
        if ( iIndex>=70 )
        {
            printf("Line Overflow\n");
            return;
        }
        szHexLine[iIndex] = iChIn;
        iIndex++;
        szHexLine[iIndex] = 0;
    }
    // try to process the line
    iIndex = ReadIntelHex( szHexLine );
    if ( iIndex<0 )
        printf("ERROR %d\n", iIndex );
    else
        printf("Wrote %d\n", iIndex );
    
}

//--------------------------------------------------------------
//
//  Application Main
//
int
main(void)
{
  int iCh;

  ioinit();

  stdout = &mystdout;

  putchar('\n');
  
  while ( 1 )
  {
      printf(" KiwiSAT Camera EEPROM Programmer\n");
      printf("    r = read EEPROM\n");
      printf("    :.... = write a HEX data line\n");
      printf("\n");

      iCh = uart_getchar();

      if ( iCh=='r' )
      {
        printf("READ\n\n");
        read_ROM();
        continue;
      }

      if ( iCh==':' )
      {
        read_hexline();
        continue;
      }
  }
    
/*    
#define EE_WRITE(addr, str) ee24xx_write_bytes(addr, sizeof(str)-1, str)
  rv = EE_WRITE(55, "The quick brown fox jumps over the lazy dog.");
  if (rv < 0)
    error();
  printf("Wrote %d bytes.\n", rv);
  for (a = 0; a < 256;)
    {
      printf("%#04x: ", a);
      rv = ee24xx_read_bytes(a, 16, b);
      if (rv <= 0)
	error();
      if (rv < 16)
	printf("warning: short read %d\n", rv);
      a += rv;
      for (x = 0; x < rv; x++)
	printf("%02x ", b[x]);
      putchar('\n');
    }
*/

//printf("Write block 1 - %d\n",ee24xx_write_bytes(0,  16, data1 ) );
//printf("Write block 2 - %d\n",ee24xx_write_bytes(16, 16, data2 ) );
//printf("Write block 3 - %d\n",ee24xx_write_bytes(32, 16, data3 ) );

  printf("done.\n");
  while(1);
  return 0;
}
