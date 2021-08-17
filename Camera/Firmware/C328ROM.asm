;===============================================================;
; Disassembled Using DIS8051   -  (C)1989 Data Sync Engineering ;
;===============================================================;
;
;
;
        org     00000h
;
        ljmp    L0210                   ;0000   02 02 10                ...
;
        ljmp    L13B3                   ;0003   02 13 B3                ...
;
        nop                             ;0006   00                      .
        nop                             ;0007   00                      .
;
L0008:  nop                             ;0008   00                      .
        nop                             ;0009   00                      .
        nop                             ;000A   00                      .
        nop                             ;000B   00                      .
        nop                             ;000C   00                      .
        nop                             ;000D   00                      .
        nop                             ;000E   00                      .
        nop                             ;000F   00                      .
        nop                             ;0010   00                      .
        nop                             ;0011   00                      .
        nop                             ;0012   00                      .
        ljmp    L1483                   ;0013   02 14 83                ...
;
        nop                             ;0016   00                      .
        nop                             ;0017   00                      .
;
L0018:  nop                             ;0018   00                      .
        nop                             ;0019   00                      .
        nop                             ;001A   00                      .
        nop                             ;001B   00                      .
        nop                             ;001C   00                      .
        nop                             ;001D   00                      .
        nop                             ;001E   00                      .
        nop                             ;001F   00                      .
        nop                             ;0020   00                      .
        nop                             ;0021   00                      .
        nop                             ;0022   00                      .
        nop                             ;0023   00                      .
        nop                             ;0024   00                      .
        nop                             ;0025   00                      .
        nop                             ;0026   00                      .
        nop                             ;0027   00                      .
        nop                             ;0028   00                      .
        nop                             ;0029   00                      .
        nop                             ;002A   00                      .
        ljmp    L13AA                   ;002B   02 13 AA                ...
;
        nop                             ;002E   00                      .
        nop                             ;002F   00                      .
;
L0030:  jbc     00ch,L003D              ;0030   10 0C 0A                ...
        jbc     018h,L005E              ;0033   10 18 28                ..(
        addc    a,#03eh                 ;0036   34 3E                   4>
        inc     r4                      ;0038   0C                      .
        inc     r4                      ;0039   0C                      .
        inc     r6                      ;003A   0E                      .
        dec     a                       ;003B   14                      .
        dec     r2                      ;003C   1A                      .
;
L003D:  addc    a,r2                    ;003D   3A                      :
        addc    a,r4                    ;003E   3C                      <
        addc    a,r0                    ;003F   38                      8
        inc     r6                      ;0040   0E                      .
        inc     r6                      ;0041   0E                      .
        jbc     018h,L006D              ;0042   10 18 28                ..(
        addc    a,r2                    ;0045   3A                      :
        orl     a,@r0                   ;0046   46                      F
        addc    a,r0                    ;0047   38                      8
        inc     r6                      ;0048   0E                      .
        lcall   L161E                   ;0049   12 16 1E                ...
        addc    a,#058h                 ;004C   34 58                   4X
        jnc     L008E                   ;004E   50 3E                   P>
        lcall   L1626                   ;0050   12 16 26                ..&
        addc    a,r0                    ;0053   38                      8
        orl     a,#06eh                 ;0054   44 6E                   Dn
        xrl     a,r0                    ;0056   68                      h
        orl     a,r6                    ;0057   4E                      N
        dec     r0                      ;0058   18                      .
        add     a,#038h                 ;0059   24 38                   $8
        jc      L00AF                   ;005B   40 52                   @R
        xrl     a,r0                    ;005D   68                      h
;
L005E:  orl     c,05ch                  ;005E   72 5C                   r\
        reti                            ;0060   32                      2
;
        jc      L00B1                   ;0061   40 4E                   @N
        anl     a,r0                    ;0063   58                      X
        xrl     a,r0                    ;0064   68                      h
        mov     r2,#078h                ;0065   7A 78                   zx
        xrl     a,@r0                   ;0067   66                      f
        orl     a,r0                    ;0068   48                      H
        anl     a,r4                    ;0069   5C                      \
        jz      L00CE                   ;006A   60 62                   `b
        jnz     L00D2                   ;006C   70 64                   pd
        xrl     a,r0                    ;006E   68                      h
        xrl     a,#012h                 ;006F   64 12                   d.
        lcall   L1630                   ;0071   12 16 30                ..0
        xrl     a,#064h                 ;0074   64 64                   dd
        xrl     a,#064h                 ;0076   64 64                   dd
        lcall   L161A                   ;0078   12 16 1A                ...
        orl     064h,a                  ;007B   42 64                   Bd
        xrl     a,#064h                 ;007D   64 64                   dd
        xrl     a,#016h                 ;007F   64 16                   d.
        dec     r2                      ;0081   1A                      .
        addc    a,r0                    ;0082   38                      8
        xrl     a,#064h                 ;0083   64 64                   dd
        xrl     a,#064h                 ;0085   64 64                   dd
        xrl     a,#030h                 ;0087   64 30                   d0
        orl     064h,a                  ;0089   42 64                   Bd
        xrl     a,#064h                 ;008B   64 64                   dd
        xrl     a,#064h                 ;008D   64 64                   dd
        xrl     a,#064h                 ;008F   64 64                   dd
        xrl     a,#064h                 ;0091   64 64                   dd
        xrl     a,#064h                 ;0093   64 64                   dd
        xrl     a,#064h                 ;0095   64 64                   dd
        xrl     a,#064h                 ;0097   64 64                   dd
        xrl     a,#064h                 ;0099   64 64                   dd
        xrl     a,#064h                 ;009B   64 64                   dd
        xrl     a,#064h                 ;009D   64 64                   dd
        xrl     a,#064h                 ;009F   64 64                   dd
        xrl     a,#064h                 ;00A1   64 64                   dd
        xrl     a,#064h                 ;00A3   64 64                   dd
        xrl     a,#064h                 ;00A5   64 64                   dd
        xrl     a,#064h                 ;00A7   64 64                   dd
        xrl     a,#064h                 ;00A9   64 64                   dd
        xrl     a,#064h                 ;00AB   64 64                   dd
        xrl     a,#064h                 ;00AD   64 64                   dd
;
L00AF:  xrl     a,#000h                 ;00AF   64 00                   d.
;
L00B1:  ajmp    L0008                   ;00B1   01 08                   ..
;
        jbc     009h,L00B8              ;00B3   10 09 02                ...
        rr      a                       ;00B6   03                      .
        inc     r2                      ;00B7   0A                      .
;
L00B8:  acall   L0018                   ;00B8   11 18                   ..
        jb      019h,L00CF              ;00BA   20 19 12                 ..
        inc     r3                      ;00BD   0B                      .
        inc     a                       ;00BE   04                      .
        inc     00ch                    ;00BF   05 0C                   ..
        rrc     a                       ;00C1   13                      .
        dec     r2                      ;00C2   1A                      .
        ajmp    L0128                   ;00C3   21 28                   !(
;
        jnb     029h,L00EA              ;00C5   30 29 22                0)"
        dec     r3                      ;00C8   1B                      .
        dec     a                       ;00C9   14                      .
        inc     r5                      ;00CA   0D                      .
        inc     @r0                     ;00CB   06                      .
        inc     @r1                     ;00CC   07                      .
        inc     r6                      ;00CD   0E                      .
;
L00CE:  dec     01ch                    ;00CE   15 1C                   ..
        rl      a                       ;00D0   23                      #
        add     a,r2                    ;00D1   2A                      *
;
L00D2:  acall   L0138                   ;00D2   31 38                   18
        addc    a,r1                    ;00D4   39                      9
        reti                            ;00D5   32                      2
;
        add     a,r3                    ;00D6   2B                      +
        add     a,#01dh                 ;00D7   24 1D                   $.
        dec     @r0                     ;00D9   16                      .
        inc     r7                      ;00DA   0F                      .
        dec     @r1                     ;00DB   17                      .
        dec     r6                      ;00DC   1E                      .
        add     a,02ch                  ;00DD   25 2C                   %,
        rlc     a                       ;00DF   33                      3
        addc    a,r2                    ;00E0   3A                      :
        addc    a,r3                    ;00E1   3B                      ;
        addc    a,#02dh                 ;00E2   34 2D                   4-
        add     a,@r0                   ;00E4   26                      &
        dec     r7                      ;00E5   1F                      .
        add     a,@r1                   ;00E6   27                      '
        add     a,r6                    ;00E7   2E                      .
        addc    a,03ch                  ;00E8   35 3C                   5<
;
L00EA:  addc    a,r5                    ;00EA   3D                      =
        addc    a,@r0                   ;00EB   36                      6
        add     a,r7                    ;00EC   2F                      /
        addc    a,@r1                   ;00ED   37                      7
        addc    a,r6                    ;00EE   3E                      >
        addc    a,r7                    ;00EF   3F                      ?
;
L00F0:  inc     r7                      ;00F0   0F                      .
        dec     r7                      ;00F1   1F                      .
        add     a,r7                    ;00F2   2F                      /
        addc    a,r7                    ;00F3   3F                      ?
        anl     a,r7                    ;00F4   5F                      _
        mov     r7,#0bfh                ;00F5   7F BF                   ..
        mov     r7,a                    ;00F7   FF                      .
        nop                             ;00F8   00                      .
        nop                             ;00F9   00                      .
        nop                             ;00FA   00                      .
        nop                             ;00FB   00                      .
        nop                             ;00FC   00                      .
        nop                             ;00FD   00                      .
        nop                             ;00FE   00                      .
        nop                             ;00FF   00                      .
        nop                             ;0100   00                      .
        nop                             ;0101   00                      .
        nop                             ;0102   00                      .
        nop                             ;0103   00                      .
        nop                             ;0104   00                      .
        nop                             ;0105   00                      .
        nop                             ;0106   00                      .
        nop                             ;0107   00                      .
        nop                             ;0108   00                      .
        nop                             ;0109   00                      .
        nop                             ;010A   00                      .
        nop                             ;010B   00                      .
        nop                             ;010C   00                      .
        nop                             ;010D   00                      .
        nop                             ;010E   00                      .
        nop                             ;010F   00                      .
        nop                             ;0110   00                      .
        nop                             ;0111   00                      .
        nop                             ;0112   00                      .
        nop                             ;0113   00                      .
        nop                             ;0114   00                      .
        nop                             ;0115   00                      .
        nop                             ;0116   00                      .
        nop                             ;0117   00                      .
        nop                             ;0118   00                      .
        nop                             ;0119   00                      .
        nop                             ;011A   00                      .
        nop                             ;011B   00                      .
        nop                             ;011C   00                      .
        nop                             ;011D   00                      .
        nop                             ;011E   00                      .
        nop                             ;011F   00                      .
        nop                             ;0120   00                      .
        nop                             ;0121   00                      .
        nop                             ;0122   00                      .
        nop                             ;0123   00                      .
        nop                             ;0124   00                      .
        nop                             ;0125   00                      .
        nop                             ;0126   00                      .
        nop                             ;0127   00                      .
;
L0128:  nop                             ;0128   00                      .
        nop                             ;0129   00                      .
        nop                             ;012A   00                      .
        nop                             ;012B   00                      .
        nop                             ;012C   00                      .
        nop                             ;012D   00                      .
        nop                             ;012E   00                      .
        nop                             ;012F   00                      .
        nop                             ;0130   00                      .
        nop                             ;0131   00                      .
        nop                             ;0132   00                      .
        nop                             ;0133   00                      .
        nop                             ;0134   00                      .
        nop                             ;0135   00                      .
        nop                             ;0136   00                      .
        nop                             ;0137   00                      .
;
L0138:  nop                             ;0138   00                      .
        nop                             ;0139   00                      .
        nop                             ;013A   00                      .
        nop                             ;013B   00                      .
        nop                             ;013C   00                      .
        nop                             ;013D   00                      .
        nop                             ;013E   00                      .
        nop                             ;013F   00                      .
        nop                             ;0140   00                      .
        nop                             ;0141   00                      .
        nop                             ;0142   00                      .
        nop                             ;0143   00                      .
        nop                             ;0144   00                      .
        nop                             ;0145   00                      .
        nop                             ;0146   00                      .
        nop                             ;0147   00                      .
        nop                             ;0148   00                      .
        nop                             ;0149   00                      .
        nop                             ;014A   00                      .
        nop                             ;014B   00                      .
        nop                             ;014C   00                      .
        nop                             ;014D   00                      .
        nop                             ;014E   00                      .
        nop                             ;014F   00                      .
        nop                             ;0150   00                      .
        nop                             ;0151   00                      .
        nop                             ;0152   00                      .
        nop                             ;0153   00                      .
        nop                             ;0154   00                      .
        nop                             ;0155   00                      .
        nop                             ;0156   00                      .
        nop                             ;0157   00                      .
        nop                             ;0158   00                      .
        nop                             ;0159   00                      .
        nop                             ;015A   00                      .
        nop                             ;015B   00                      .
        nop                             ;015C   00                      .
        nop                             ;015D   00                      .
        nop                             ;015E   00                      .
        nop                             ;015F   00                      .
        nop                             ;0160   00                      .
        nop                             ;0161   00                      .
        nop                             ;0162   00                      .
        nop                             ;0163   00                      .
        nop                             ;0164   00                      .
        nop                             ;0165   00                      .
        nop                             ;0166   00                      .
        nop                             ;0167   00                      .
        nop                             ;0168   00                      .
        nop                             ;0169   00                      .
        nop                             ;016A   00                      .
        nop                             ;016B   00                      .
        nop                             ;016C   00                      .
        nop                             ;016D   00                      .
        nop                             ;016E   00                      .
        nop                             ;016F   00                      .
        nop                             ;0170   00                      .
        nop                             ;0171   00                      .
        nop                             ;0172   00                      .
        nop                             ;0173   00                      .
        nop                             ;0174   00                      .
        nop                             ;0175   00                      .
        nop                             ;0176   00                      .
        nop                             ;0177   00                      .
        nop                             ;0178   00                      .
        nop                             ;0179   00                      .
        nop                             ;017A   00                      .
        nop                             ;017B   00                      .
        nop                             ;017C   00                      .
        nop                             ;017D   00                      .
        nop                             ;017E   00                      .
        nop                             ;017F   00                      .
        nop                             ;0180   00                      .
        nop                             ;0181   00                      .
        nop                             ;0182   00                      .
        nop                             ;0183   00                      .
        nop                             ;0184   00                      .
        nop                             ;0185   00                      .
        nop                             ;0186   00                      .
        nop                             ;0187   00                      .
        nop                             ;0188   00                      .
        nop                             ;0189   00                      .
        nop                             ;018A   00                      .
        nop                             ;018B   00                      .
        nop                             ;018C   00                      .
        nop                             ;018D   00                      .
        nop                             ;018E   00                      .
        nop                             ;018F   00                      .
        nop                             ;0190   00                      .
        nop                             ;0191   00                      .
        nop                             ;0192   00                      .
        nop                             ;0193   00                      .
        nop                             ;0194   00                      .
        nop                             ;0195   00                      .
        nop                             ;0196   00                      .
        nop                             ;0197   00                      .
        nop                             ;0198   00                      .
        nop                             ;0199   00                      .
        nop                             ;019A   00                      .
        nop                             ;019B   00                      .
        nop                             ;019C   00                      .
        nop                             ;019D   00                      .
        nop                             ;019E   00                      .
        nop                             ;019F   00                      .
        nop                             ;01A0   00                      .
        nop                             ;01A1   00                      .
        nop                             ;01A2   00                      .
        nop                             ;01A3   00                      .
        nop                             ;01A4   00                      .
        nop                             ;01A5   00                      .
        nop                             ;01A6   00                      .
        nop                             ;01A7   00                      .
        nop                             ;01A8   00                      .
        nop                             ;01A9   00                      .
        nop                             ;01AA   00                      .
        nop                             ;01AB   00                      .
        nop                             ;01AC   00                      .
        nop                             ;01AD   00                      .
        nop                             ;01AE   00                      .
        nop                             ;01AF   00                      .
        nop                             ;01B0   00                      .
        nop                             ;01B1   00                      .
        nop                             ;01B2   00                      .
        nop                             ;01B3   00                      .
        nop                             ;01B4   00                      .
        nop                             ;01B5   00                      .
        nop                             ;01B6   00                      .
        nop                             ;01B7   00                      .
        nop                             ;01B8   00                      .
        nop                             ;01B9   00                      .
        nop                             ;01BA   00                      .
        nop                             ;01BB   00                      .
        nop                             ;01BC   00                      .
        nop                             ;01BD   00                      .
        nop                             ;01BE   00                      .
        nop                             ;01BF   00                      .
        nop                             ;01C0   00                      .
        nop                             ;01C1   00                      .
        nop                             ;01C2   00                      .
        nop                             ;01C3   00                      .
        nop                             ;01C4   00                      .
        nop                             ;01C5   00                      .
        nop                             ;01C6   00                      .
        nop                             ;01C7   00                      .
        nop                             ;01C8   00                      .
        nop                             ;01C9   00                      .
        nop                             ;01CA   00                      .
        nop                             ;01CB   00                      .
        nop                             ;01CC   00                      .
        nop                             ;01CD   00                      .
        nop                             ;01CE   00                      .
        nop                             ;01CF   00                      .
        nop                             ;01D0   00                      .
        nop                             ;01D1   00                      .
        nop                             ;01D2   00                      .
        nop                             ;01D3   00                      .
        nop                             ;01D4   00                      .
        nop                             ;01D5   00                      .
        nop                             ;01D6   00                      .
        nop                             ;01D7   00                      .
        nop                             ;01D8   00                      .
        nop                             ;01D9   00                      .
        nop                             ;01DA   00                      .
        nop                             ;01DB   00                      .
        nop                             ;01DC   00                      .
        nop                             ;01DD   00                      .
        nop                             ;01DE   00                      .
        nop                             ;01DF   00                      .
        nop                             ;01E0   00                      .
        nop                             ;01E1   00                      .
        nop                             ;01E2   00                      .
        nop                             ;01E3   00                      .
        nop                             ;01E4   00                      .
        nop                             ;01E5   00                      .
        nop                             ;01E6   00                      .
        nop                             ;01E7   00                      .
        nop                             ;01E8   00                      .
        nop                             ;01E9   00                      .
        nop                             ;01EA   00                      .
        nop                             ;01EB   00                      .
        nop                             ;01EC   00                      .
        nop                             ;01ED   00                      .
        nop                             ;01EE   00                      .
        nop                             ;01EF   00                      .
        nop                             ;01F0   00                      .
        nop                             ;01F1   00                      .
        nop                             ;01F2   00                      .
        nop                             ;01F3   00                      .
        nop                             ;01F4   00                      .
        nop                             ;01F5   00                      .
        nop                             ;01F6   00                      .
        nop                             ;01F7   00                      .
        nop                             ;01F8   00                      .
        nop                             ;01F9   00                      .
        nop                             ;01FA   00                      .
        nop                             ;01FB   00                      .
        nop                             ;01FC   00                      .
        nop                             ;01FD   00                      .
        nop                             ;01FE   00                      .
        nop                             ;01FF   00                      .
        jmp     @a+dptr                 ;0200   73                      s
;
        ajmp    L0367                   ;0201   61 67                   ag
;
        xrl     a,03eh                  ;0203   65 3E                   e>
        addc    a,r4                    ;0205   3C                      <
        orl     a,r5                    ;0206   4D                      M
        xrl     a,073h                  ;0207   65 73                   es
        jmp     @a+dptr                 ;0209   73                      s
;
        ajmp    L0367                   ;020A   61 67                   ag
;
        xrl     a,020h                  ;020C   65 20                   e 
        orl     a,#061h                 ;020E   44 61                   Da
;
L0210:  mov     sp,#050h                ;0210   75 81 50                u.P
        lcall   L02F8                   ;0213   12 02 F8                ...
        ljmp    L02B8                   ;0216   02 02 B8                ...
;
;
L0219:  mov     dptr,#LFF0D             ;0219   90 FF 0D                ...
        mov     a,#00fh                 ;021C   74 0F                   t.
        movx    @dptr,a                 ;021E   F0                      .
        inc     dptr                    ;021F   A3                      .
        mov     a,#001h                 ;0220   74 01                   t.
        movx    @dptr,a                 ;0222   F0                      .
        lcall   L0410                   ;0223   12 04 10                ...
        lcall   L03E6                   ;0226   12 03 E6                ...
        lcall   L0501                   ;0229   12 05 01                ...
        mov     04ah,#000h              ;022C   75 4A 00                uJ.
        mov     dptr,#LFF83             ;022F   90 FF 83                ...
        movx    a,@dptr                 ;0232   E0                      .
        orl     a,#0ffh                 ;0233   44 FF                   D.
        movx    @dptr,a                 ;0235   F0                      .
        mov     dptr,#LFF86             ;0236   90 FF 86                ...
        movx    a,@dptr                 ;0239   E0                      .
        anl     a,#0f0h                 ;023A   54 F0                   T.
        movx    @dptr,a                 ;023C   F0                      .
        inc     dptr                    ;023D   A3                      .
        mov     a,#0afh                 ;023E   74 AF                   t.
        movx    @dptr,a                 ;0240   F0                      .
;
L0241:  lcall   L042F                   ;0241   12 04 2F                ../
        lcall   L02D0                   ;0244   12 02 D0                ...
;
L0247:  jb      009h,L024C              ;0247   20 09 02                 ..
        ajmp    L0247                   ;024A   41 47                   AG
;
;
L024C:  mov     r2,#006h                ;024C   7A 06                   z.
;
L024E:  lcall   L052E                   ;024E   12 05 2E                ...
        jc      L0241                   ;0251   40 EE                   @.
        cjne    a,#0aah,L0259           ;0253   B4 AA 03                ...
        ljmp    L027E                   ;0256   02 02 7E                ..~
;
;
L0259:  djnz    r2,L024E                ;0259   DA F3                   ..
        clr     009h                    ;025B   C2 09                   ..
        mov     a,04ah                  ;025D   E5 4A                   .J
        inc     a                       ;025F   04                      .
        mov     04ah,a                  ;0260   F5 4A                   .J
        cjne    a,#008h,L0267           ;0262   B4 08 02                ...
        sjmp    L0271                   ;0265   80 0A                   ..
;
L0267:  mov     dptr,#L00F0             ;0267   90 00 F0                ...
        movc    a,@a+dptr               ;026A   93                      .
        mov     dptr,#LFF0D             ;026B   90 FF 0D                ...
        movx    @dptr,a                 ;026E   F0                      .
        ajmp    L0241                   ;026F   41 41                   AA
;
;
L0271:  mov     dptr,#LFF86             ;0271   90 FF 86                ...
        movx    a,@dptr                 ;0274   E0                      .
        anl     a,#0f0h                 ;0275   54 F0                   T.
        movx    @dptr,a                 ;0277   F0                      .
        inc     dptr                    ;0278   A3                      .
        mov     a,#0a0h                 ;0279   74 A0                   t.
        movx    @dptr,a                 ;027B   F0                      .
        ajmp    L0210                   ;027C   41 10                   A.
;
;
L027E:  lcall   L052E                   ;027E   12 05 2E                ...
        jc      L0241                   ;0281   40 BE                   @.
        cjne    a,#00dh,L0241           ;0283   B4 0D BB                ...
;
L0286:  lcall   L0501                   ;0286   12 05 01                ...
        clr     00bh                    ;0289   C2 0B                   ..
        clr     009h                    ;028B   C2 09                   ..
        clr     078h                    ;028D   C2 78                   .x
        mov     022h,#00dh              ;028F   75 22 0D                u".
        mov     r2,#00ah                ;0292   7A 0A                   z.
;
L0294:  lcall   L0478                   ;0294   12 04 78                ..x
        lcall   L0469                   ;0297   12 04 69                ..i
        lcall   L04AD                   ;029A   12 04 AD                ...
        mov     a,023h                  ;029D   E5 23                   .#
        jnz     L02A3                   ;029F   70 02                   p.
        djnz    r2,L0294                ;02A1   DA F1                   ..
;
L02A3:  mov     023h,#000h              ;02A3   75 23 00                u#.
        mov     022h,a                  ;02A6   F5 22                   ."
        setb    00dh                    ;02A8   D2 0D                   ..
        clr     001h                    ;02AA   C2 01                   ..
;
L02AC:  lcall   L04AD                   ;02AC   12 04 AD                ...
        mov     a,023h                  ;02AF   E5 23                   .#
        jz      L02AC                   ;02B1   60 F9                   `.
        lcall   L05F8                   ;02B3   12 05 F8                ...
        sjmp    L02AC                   ;02B6   80 F4                   ..
;
L02B8:  lcall   L0416                   ;02B8   12 04 16                ...
        mov     a,#001h                 ;02BB   74 01                   t.
        mov     dptr,#LFF2D             ;02BD   90 FF 2D                ..-
        movx    @dptr,a                 ;02C0   F0                      .
        inc     dptr                    ;02C1   A3                      .
        mov     a,#001h                 ;02C2   74 01                   t.
        movx    @dptr,a                 ;02C4   F0                      .
        mov     dptr,#LFF2C             ;02C5   90 FF 2C                ..,
        mov     a,#007h                 ;02C8   74 07                   t.
        movx    @dptr,a                 ;02CA   F0                      .
        lcall   L131D                   ;02CB   12 13 1D                ...
        ajmp    L0219                   ;02CE   41 19                   A.
;
;
L02D0:  mov     dptr,#LFF0C             ;02D0   90 FF 0C                ...
        mov     a,#017h                 ;02D3   74 17                   t.
        movx    @dptr,a                 ;02D5   F0                      .
        mov     a,#09eh                 ;02D6   74 9E                   t.
        mov     dptr,#LFF74             ;02D8   90 FF 74                ..t
        movx    @dptr,a                 ;02DB   F0                      .
        mov     dptr,#LFF90             ;02DC   90 FF 90                ...
        mov     a,#000h                 ;02DF   74 00                   t.
        movx    @dptr,a                 ;02E1   F0                      .
        mov     a,#02bh                 ;02E2   74 2B                   t+
        mov     dptr,#LFF28             ;02E4   90 FF 28                ..(
        movx    @dptr,a                 ;02E7   F0                      .
        clr     009h                    ;02E8   C2 09                   ..
        clr     00bh                    ;02EA   C2 0B                   ..
        mov     dptr,#LFF69             ;02EC   90 FF 69                ..i
        clr     a                       ;02EF   E4                      .
        movx    @dptr,a                 ;02F0   F0                      .
        inc     dptr                    ;02F1   A3                      .
        movx    @dptr,a                 ;02F2   F0                      .
        inc     dptr                    ;02F3   A3                      .
        mov     a,#006h                 ;02F4   74 06                   t.
        movx    @dptr,a                 ;02F6   F0                      .
        ret                             ;02F7   22                      "
;
;
L02F8:  clr     a                       ;02F8   E4                      .
        mov     023h,a                  ;02F9   F5 23                   .#
        mov     029h,a                  ;02FB   F5 29                   .)
        mov     033h,a                  ;02FD   F5 33                   .3
        mov     034h,a                  ;02FF   F5 34                   .4
        mov     047h,a                  ;0301   F5 47                   .G
        mov     020h,a                  ;0303   F5 20                   . 
        mov     021h,a                  ;0305   F5 21                   .!
        mov     02fh,a                  ;0307   F5 2F                   ./
        mov     01eh,#03ah              ;0309   75 1E 3A                u.:
        mov     01fh,#000h              ;030C   75 1F 00                u..
        lcall   L042E                   ;030F   12 04 2E                ...
        mov     dptr,#LFF05             ;0312   90 FF 05                ...
        mov     a,#007h                 ;0315   74 07                   t.
        movx    @dptr,a                 ;0317   F0                      .
        lcall   L0374                   ;0318   12 03 74                ..t
        mov     dptr,#LFF00             ;031B   90 FF 00                ...
        mov     a,035h                  ;031E   E5 35                   .5
        movx    @dptr,a                 ;0320   F0                      .
        cjne    a,#0ffh,L0326           ;0321   B4 FF 02                ...
        sjmp    L033F                   ;0324   80 19                   ..
;
L0326:  lcall   L03CA                   ;0326   12 03 CA                ...
        lcall   L03D7                   ;0329   12 03 D7                ...
        mov     a,035h                  ;032C   E5 35                   .5
        cjne    a,#000h,L0336           ;032E   B4 00 05                ...
        mov     dptr,#L1494             ;0331   90 14 94                ...
        sjmp    L033C                   ;0334   80 06                   ..
;
L0336:  cjne    a,#004h,L033C           ;0336   B4 04 03                ...
        mov     dptr,#L15A1             ;0339   90 15 A1                ...
;
L033C:  lcall   L12F6                   ;033C   12 12 F6                ...
;
L033F:  lcall   L1432                   ;033F   12 14 32                ..2
        setb    ea                      ;0342   D2 AF                   ..
        setb    ex0                     ;0344   D2 A8                   ..
        mov     dptr,#LFF0D             ;0346   90 FF 0D                ...
        mov     a,#00fh                 ;0349   74 0F                   t.
        movx    @dptr,a                 ;034B   F0                      .
        inc     dptr                    ;034C   A3                      .
        mov     a,#001h                 ;034D   74 01                   t.
        movx    @dptr,a                 ;034F   F0                      .
        lcall   L0367                   ;0350   12 03 67                ..g
        lcall   L0501                   ;0353   12 05 01                ...
        lcall   L05BE                   ;0356   12 05 BE                ...
        setb    c                       ;0359   D3                      .
        lcall   L0552                   ;035A   12 05 52                ..R
        lcall   L05E6                   ;035D   12 05 E6                ...
        clr     00dh                    ;0360   C2 0D                   ..
        ret                             ;0362   22                      "
;
        mov     dptr,#LFF0D             ;0363   90 FF 0D                ...
        movx    @dptr,a                 ;0366   F0                      .
;
L0367:  mov     dptr,#LFF0C             ;0367   90 FF 0C                ...
        mov     a,#017h                 ;036A   74 17                   t.
        movx    @dptr,a                 ;036C   F0                      .
        mov     a,#09fh                 ;036D   74 9F                   t.
;
L036F:  mov     dptr,#LFF74             ;036F   90 FF 74                ..t
        movx    @dptr,a                 ;0372   F0                      .
        ret                             ;0373   22                      "
;
;
L0374:  mov     r7,#000h                ;0374   7F 00                   ..
;
L0376:  mov     dptr,#L1484             ;0376   90 14 84                ...
        mov     a,r7                    ;0379   EF                      .
        rl      a                       ;037A   23                      #
        rl      a                       ;037B   23                      #
        rl      a                       ;037C   23                      #
        mov     008h,a                  ;037D   F5 08                   ..
        lcall   L03C4                   ;037F   12 03 C4                ...
        mov     04dh,a                  ;0382   F5 4D                   .M
        lcall   L03C4                   ;0384   12 03 C4                ...
        mov     032h,a                  ;0387   F5 32                   .2
        lcall   L121F                   ;0389   12 12 1F                ...
        jb      006h,L03BC              ;038C   20 06 2D                 .-
        mov     dptr,#L1484             ;038F   90 14 84                ...
        lcall   L03C4                   ;0392   12 03 C4                ...
        anl     030h,a                  ;0395   52 30                   R0
        lcall   L03C4                   ;0397   12 03 C4                ...
        cjne    a,030h,L03BC            ;039A   B5 30 1F                .0.
        lcall   L03C4                   ;039D   12 03 C4                ...
        mov     032h,a                  ;03A0   F5 32                   .2
        lcall   L121F                   ;03A2   12 12 1F                ...
        jb      006h,L03BC              ;03A5   20 06 14                 ..
        mov     dptr,#L1484             ;03A8   90 14 84                ...
        lcall   L03C4                   ;03AB   12 03 C4                ...
        anl     030h,a                  ;03AE   52 30                   R0
        lcall   L03C4                   ;03B0   12 03 C4                ...
        cjne    a,030h,L03BC            ;03B3   B5 30 06                .0.
        lcall   L03C4                   ;03B6   12 03 C4                ...
        mov     035h,a                  ;03B9   F5 35                   .5
        ret                             ;03BB   22                      "
;
;
L03BC:  inc     r7                      ;03BC   0F                      .
        cjne    r7,#002h,L0376          ;03BD   BF 02 B6                ...
        mov     035h,#0ffh              ;03C0   75 35 FF                u5.
        ret                             ;03C3   22                      "
;
;
L03C4:  mov     a,008h                  ;03C4   E5 08                   ..
        movc    a,@a+dptr               ;03C6   93                      .
        inc     008h                    ;03C7   05 08                   ..
        ret                             ;03C9   22                      "
;
;
L03CA:  mov     032h,#012h              ;03CA   75 32 12                u2.
        mov     030h,#080h              ;03CD   75 30 80                u0.
        lcall   L11F4                   ;03D0   12 11 F4                ...
        lcall   L1332                   ;03D3   12 13 32                ..2
        ret                             ;03D6   22                      "
;
;
L03D7:  mov     dptr,#LFF0F             ;03D7   90 FF 0F                ...
        mov     a,035h                  ;03DA   E5 35                   .5
        jb      acc.0,L03E2             ;03DC   20 E0 03                 ..
        clr     a                       ;03DF   E4                      .
        movx    @dptr,a                 ;03E0   F0                      .
        ret                             ;03E1   22                      "
;
;
L03E2:  mov     a,#001h                 ;03E2   74 01                   t.
        movx    @dptr,a                 ;03E4   F0                      .
        ret                             ;03E5   22                      "
;
;
L03E6:  acall   L03D7                   ;03E6   71 D7                   q.
        mov     dptr,#LFF84             ;03E8   90 FF 84                ...
        movx    a,@dptr                 ;03EB   E0                      .
        anl     a,#0fdh                 ;03EC   54 FD                   T.
        movx    @dptr,a                 ;03EE   F0                      .
        dec     dpl                     ;03EF   15 82                   ..
        movx    a,@dptr                 ;03F1   E0                      .
        anl     a,#0fdh                 ;03F2   54 FD                   T.
        movx    @dptr,a                 ;03F4   F0                      .
        lcall   L1332                   ;03F5   12 13 32                ..2
        mov     a,035h                  ;03F8   E5 35                   .5
        cjne    a,#004h,L040F           ;03FA   B4 04 12                ...
        mov     032h,#076h              ;03FD   75 32 76                u2v
        mov     030h,#022h              ;0400   75 30 22                u0"
        lcall   L11F4                   ;0403   12 11 F4                ...
        lcall   L1332                   ;0406   12 13 32                ..2
        mov     030h,#002h              ;0409   75 30 02                u0.
        lcall   L11F4                   ;040C   12 11 F4                ...
;
L040F:  ret                             ;040F   22                      "
;
;
L0410:  mov     dptr,#LFF7A             ;0410   90 FF 7A                ..z
        clr     a                       ;0413   E4                      .
        movx    @dptr,a                 ;0414   F0                      .
        ret                             ;0415   22                      "
;
;
L0416:  mov     dptr,#LFF84             ;0416   90 FF 84                ...
        movx    a,@dptr                 ;0419   E0                      .
        orl     a,#002h                 ;041A   44 02                   D.
        movx    @dptr,a                 ;041C   F0                      .
        dec     dpl                     ;041D   15 82                   ..
        movx    a,@dptr                 ;041F   E0                      .
        anl     a,#0fdh                 ;0420   54 FD                   T.
        movx    @dptr,a                 ;0422   F0                      .
        lcall   L1332                   ;0423   12 13 32                ..2
        ret                             ;0426   22                      "
;
        mov     dptr,#LFF7A             ;0427   90 FF 7A                ..z
        mov     a,#007h                 ;042A   74 07                   t.
        movx    @dptr,a                 ;042C   F0                      .
        ret                             ;042D   22                      "
;
;
L042E:  ret                             ;042E   22                      "
;
;
L042F:  lcall   L05E6                   ;042F   12 05 E6                ...
        lcall   L1332                   ;0432   12 13 32                ..2
        mov     dptr,#LFF65             ;0435   90 FF 65                ..e
        movx    a,@dptr                 ;0438   E0                      .
        jnb     acc.7,L042F             ;0439   30 E7 F3                0..
        ret                             ;043C   22                      "
;
;
L043D:  clr     c                       ;043D   C3                      .
        lcall   L0552                   ;043E   12 05 52                ..R
        clr     00ah                    ;0441   C2 0A                   ..
        mov     dptr,#LFF29             ;0443   90 FF 29                ..)
        mov     a,#0aah                 ;0446   74 AA                   t.
        movx    @dptr,a                 ;0448   F0                      .
        inc     dptr                    ;0449   A3                      .
        mov     a,029h                  ;044A   E5 29                   .)
        movx    @dptr,a                 ;044C   F0                      .
        dec     dpl                     ;044D   15 82                   ..
        mov     a,02ah                  ;044F   E5 2A                   .*
        movx    @dptr,a                 ;0451   F0                      .
        inc     dptr                    ;0452   A3                      .
        mov     a,02bh                  ;0453   E5 2B                   .+
        movx    @dptr,a                 ;0455   F0                      .
        dec     dpl                     ;0456   15 82                   ..
        mov     a,02ch                  ;0458   E5 2C                   .,
        movx    @dptr,a                 ;045A   F0                      .
        inc     dptr                    ;045B   A3                      .
        mov     a,02dh                  ;045C   E5 2D                   .-
        movx    @dptr,a                 ;045E   F0                      .
        clr     c                       ;045F   C3                      .
        lcall   L05A9                   ;0460   12 05 A9                ...
        jnc     L0468                   ;0463   50 03                   P.
        mov     042h,#0ffh              ;0465   75 42 FF                uB.
;
L0468:  ret                             ;0468   22                      "
;
;
L0469:  mov     029h,#00dh              ;0469   75 29 0D                u).
        clr     a                       ;046C   E4                      .
        mov     02ah,a                  ;046D   F5 2A                   .*
        mov     02bh,a                  ;046F   F5 2B                   .+
        mov     02ch,a                  ;0471   F5 2C                   .,
        mov     02dh,a                  ;0473   F5 2D                   .-
        acall   L043D                   ;0475   91 3D                   .=
        ret                             ;0477   22                      "
;
;
L0478:  mov     029h,#00eh              ;0478   75 29 0E                u).
        mov     02ah,022h               ;047B   85 22 2A                ."*
        mov     02bh,033h               ;047E   85 33 2B                .3+
        clr     a                       ;0481   E4                      .
        mov     02ch,a                  ;0482   F5 2C                   .,
        mov     02dh,a                  ;0484   F5 2D                   .-
        acall   L043D                   ;0486   91 3D                   .=
        inc     033h                    ;0488   05 33                   .3
        ret                             ;048A   22                      "
;
;
L048B:  mov     029h,#00fh              ;048B   75 29 0F                u).
        mov     02bh,034h               ;048E   85 34 2B                .4+
        mov     02ch,042h               ;0491   85 42 2C                .B,
        clr     a                       ;0494   E4                      .
        mov     02ah,a                  ;0495   F5 2A                   .*
        mov     02dh,a                  ;0497   F5 2D                   .-
        acall   L043D                   ;0499   91 3D                   .=
        inc     034h                    ;049B   05 34                   .4
        ret                             ;049D   22                      "
;
;
L049E:  mov     029h,#00ah              ;049E   75 29 0A                u).
        mov     02bh,036h               ;04A1   85 36 2B                .6+
        mov     02ch,037h               ;04A4   85 37 2C                .7,
        mov     02dh,038h               ;04A7   85 38 2D                .8-
        acall   L043D                   ;04AA   91 3D                   .=
        ret                             ;04AC   22                      "
;
;
L04AD:  setb    c                       ;04AD   D3                      .
        lcall   L0552                   ;04AE   12 05 52                ..R
        mov     r7,#002h                ;04B1   7F 02                   ..
;
L04B3:  mov     r3,#000h                ;04B3   7B 00                   {.
;
L04B5:  mov     r4,#0c4h                ;04B5   7C C4                   |.
;
L04B7:  jb      009h,L04C5              ;04B7   20 09 0B                 ..
        lcall   L131D                   ;04BA   12 13 1D                ...
        djnz    r4,L04B7                ;04BD   DC F8                   ..
        djnz    r3,L04B5                ;04BF   DB F4                   ..
        djnz    r7,L04B3                ;04C1   DF F0                   ..
        ajmp    L02B8                   ;04C3   41 B8                   A.
;
;
L04C5:  mov     r4,#001h                ;04C5   7C 01                   |.
;
L04C7:  lcall   L052E                   ;04C7   12 05 2E                ...
        jc      L051B                   ;04CA   40 4F                   @O
        cjne    a,#0aah,L04F5           ;04CC   B4 AA 26                ..&
        djnz    r4,L04C7                ;04CF   DC F6                   ..
        lcall   L052E                   ;04D1   12 05 2E                ...
        jc      L051B                   ;04D4   40 45                   @E
        mov     023h,a                  ;04D6   F5 23                   .#
        mov     r4,#004h                ;04D8   7C 04                   |.
        mov     r1,#024h                ;04DA   79 24                   y$
;
L04DC:  lcall   L052E                   ;04DC   12 05 2E                ...
        jc      L051B                   ;04DF   40 3A                   @:
        mov     @r1,a                   ;04E1   F7                      .
        inc     r1                      ;04E2   09                      .
        djnz    r4,L04DC                ;04E3   DC F7                   ..
        lcall   L05E6                   ;04E5   12 05 E6                ...
        clr     00bh                    ;04E8   C2 0B                   ..
        clr     009h                    ;04EA   C2 09                   ..
        mov     dptr,#LFF65             ;04EC   90 FF 65                ..e
        movx    a,@dptr                 ;04EF   E0                      .
        jnb     acc.7,L052B             ;04F0   30 E7 38                0.8
        sjmp    L052D                   ;04F3   80 38                   .8
;
L04F5:  jb      00dh,L050C              ;04F5   20 0D 14                 ..
;
L04F8:  clr     00bh                    ;04F8   C2 0B                   ..
        clr     009h                    ;04FA   C2 09                   ..
        lcall   L0501                   ;04FC   12 05 01                ...
        ajmp    L04AD                   ;04FF   81 AD                   ..
;
;
L0501:  mov     a,#002h                 ;0501   74 02                   t.
        mov     dptr,#LFF2C             ;0503   90 FF 2C                ..,
        movx    @dptr,a                 ;0506   F0                      .
        lcall   L131D                   ;0507   12 13 1D                ...
        sjmp    L052B                   ;050A   80 1F                   ..
;
L050C:  clr     00bh                    ;050C   C2 0B                   ..
        clr     009h                    ;050E   C2 09                   ..
        mov     042h,#0f0h              ;0510   75 42 F0                uB.
        acall   L048B                   ;0513   91 8B                   ..
        acall   L042F                   ;0515   91 2F                   ./
        ajmp    L04AD                   ;0517   81 AD                   ..
;
        sjmp    L052B                   ;0519   80 10                   ..
;
L051B:  jnb     00dh,L04F8              ;051B   30 0D DA                0..
        clr     00bh                    ;051E   C2 0B                   ..
        clr     009h                    ;0520   C2 09                   ..
        mov     042h,#0f1h              ;0522   75 42 F1                uB.
        acall   L048B                   ;0525   91 8B                   ..
        acall   L042F                   ;0527   91 2F                   ./
        ajmp    L04AD                   ;0529   81 AD                   ..
;
;
L052B:  acall   L042F                   ;052B   91 2F                   ./
;
L052D:  ret                             ;052D   22                      "
;
;
L052E:  push    007h                    ;052E   C0 07                   ..
        clr     c                       ;0530   C3                      .
        mov     r7,#00ah                ;0531   7F 0A                   ..
;
L0533:  mov     dptr,#LFF65             ;0533   90 FF 65                ..e
        movx    a,@dptr                 ;0536   E0                      .
        jnb     acc.7,L0543             ;0537   30 E7 09                0..
        lcall   L131D                   ;053A   12 13 1D                ...
        djnz    r7,L0533                ;053D   DF F4                   ..
        setb    c                       ;053F   D3                      .
        pop     007h                    ;0540   D0 07                   ..
        ret                             ;0542   22                      "
;
;
L0543:  mov     dptr,#LFF26             ;0543   90 FF 26                ..&
        jnb     00bh,L054C              ;0546   30 0B 03                0..
        mov     dptr,#LFF27             ;0549   90 FF 27                ..'
;
L054C:  movx    a,@dptr                 ;054C   E0                      .
        cpl     00bh                    ;054D   B2 0B                   ..
        pop     007h                    ;054F   D0 07                   ..
        ret                             ;0551   22                      "
;
;
L0552:  jc      L055A                   ;0552   40 06                   @.
        mov     dptr,#LFF6F             ;0554   90 FF 6F                ..o
        ljmp    L055D                   ;0557   02 05 5D                ..]
;
;
L055A:  mov     dptr,#LFF69             ;055A   90 FF 69                ..i
;
L055D:  lcall   L05C1                   ;055D   12 05 C1                ...
        mov     a,#02bh                 ;0560   74 2B                   t+
        mov     dptr,#LFF28             ;0562   90 FF 28                ..(
        movx    @dptr,a                 ;0565   F0                      .
        ret                             ;0566   22                      "
;
;
L0567:  mov     dptr,#LFF69             ;0567   90 FF 69                ..i
        jc      L056F                   ;056A   40 03                   @.
        mov     dptr,#LFF6F             ;056C   90 FF 6F                ..o
;
L056F:  lcall   L0C82                   ;056F   12 0C 82                ...
        mov     a,#030h                 ;0572   74 30                   t0
        jc      L0578                   ;0574   40 02                   @.
        mov     a,#004h                 ;0576   74 04                   t.
;
L0578:  mov     dptr,#LFF28             ;0578   90 FF 28                ..(
        movx    @dptr,a                 ;057B   F0                      .
        ret                             ;057C   22                      "
;
;
L057D:  push    003h                    ;057D   C0 03                   ..
        push    004h                    ;057F   C0 04                   ..
        mov     r3,#000h                ;0581   7B 00                   {.
;
L0583:  mov     r4,#000h                ;0583   7C 00                   |.
;
L0585:  jnc     L058C                   ;0585   50 05                   P.
        jb      009h,L0599              ;0587   20 09 0F                 ..
        ajmp    L058F                   ;058A   A1 8F                   ..
;
;
L058C:  jb      00ah,L05A1              ;058C   20 0A 12                 ..
;
L058F:  lcall   L1332                   ;058F   12 13 32                ..2
        djnz    r4,L0585                ;0592   DC F1                   ..
        djnz    r3,L0583                ;0594   DB ED                   ..
        setb    c                       ;0596   D3                      .
        sjmp    L05A4                   ;0597   80 0B                   ..
;
L0599:  clr     c                       ;0599   C3                      .
        clr     009h                    ;059A   C2 09                   ..
        lcall   L05BE                   ;059C   12 05 BE                ...
        sjmp    L05A4                   ;059F   80 03                   ..
;
L05A1:  clr     c                       ;05A1   C3                      .
        clr     00ah                    ;05A2   C2 0A                   ..
;
L05A4:  pop     004h                    ;05A4   D0 04                   ..
        pop     003h                    ;05A6   D0 03                   ..
        ret                             ;05A8   22                      "
;
;
L05A9:  push    004h                    ;05A9   C0 04                   ..
        mov     r4,#000h                ;05AB   7C 00                   |.
;
L05AD:  jb      00ah,L05B8              ;05AD   20 0A 08                 ..
        lcall   L131D                   ;05B0   12 13 1D                ...
        djnz    r4,L05AD                ;05B3   DC F8                   ..
        setb    c                       ;05B5   D3                      .
        sjmp    L05BB                   ;05B6   80 03                   ..
;
L05B8:  clr     c                       ;05B8   C3                      .
        clr     00ah                    ;05B9   C2 0A                   ..
;
L05BB:  pop     004h                    ;05BB   D0 04                   ..
        ret                             ;05BD   22                      "
;
;
L05BE:  mov     dptr,#LFF69             ;05BE   90 FF 69                ..i
;
L05C1:  clr     a                       ;05C1   E4                      .
        movx    @dptr,a                 ;05C2   F0                      .
        inc     dptr                    ;05C3   A3                      .
        movx    @dptr,a                 ;05C4   F0                      .
        inc     dptr                    ;05C5   A3                      .
        mov     a,#006h                 ;05C6   74 06                   t.
        movx    @dptr,a                 ;05C8   F0                      .
        ret                             ;05C9   22                      "
;
;
L05CA:  mov     a,#000h                 ;05CA   74 00                   t.
        mov     dptr,#LFF90             ;05CC   90 FF 90                ...
        movx    @dptr,a                 ;05CF   F0                      .
        ret                             ;05D0   22                      "
;
;
L05D1:  mov     a,#000h                 ;05D1   74 00                   t.
        mov     dptr,#LFF91             ;05D3   90 FF 91                ...
        movx    @dptr,a                 ;05D6   F0                      .
        ret                             ;05D7   22                      "
;
;
L05D8:  mov     dptr,#LFF90             ;05D8   90 FF 90                ...
        sjmp    L05E0                   ;05DB   80 03                   ..
;
L05DD:  mov     dptr,#LFF91             ;05DD   90 FF 91                ...
;
L05E0:  movx    a,@dptr                 ;05E0   E0                      .
        orl     dpl,#00ch               ;05E1   43 82 0C                C..
        movx    @dptr,a                 ;05E4   F0                      .
        ret                             ;05E5   22                      "
;
;
L05E6:  mov     dptr,#LFF65             ;05E6   90 FF 65                ..e
        movx    a,@dptr                 ;05E9   E0                      .
        jb      acc.7,L05F3             ;05EA   20 E7 06                 ..
        mov     dptr,#LFF27             ;05ED   90 FF 27                ..'
        movx    a,@dptr                 ;05F0   E0                      .
        sjmp    L05E6                   ;05F1   80 F3                   ..
;
L05F3:  clr     00bh                    ;05F3   C2 0B                   ..
        clr     009h                    ;05F5   C2 09                   ..
        ret                             ;05F7   22                      "
;
;
L05F8:  mov     022h,a                  ;05F8   F5 22                   ."
        mov     023h,#000h              ;05FA   75 23 00                u#.
        cjne    a,#001h,L0604           ;05FD   B4 01 04                ...
        lcall   L068F                   ;0600   12 06 8F                ...
        ret                             ;0603   22                      "
;
;
L0604:  cjne    a,#002h,L060B           ;0604   B4 02 04                ...
        lcall   L092D                   ;0607   12 09 2D                ..-
        ret                             ;060A   22                      "
;
;
L060B:  cjne    a,#003h,L0612           ;060B   B4 03 04                ...
        lcall   L095E                   ;060E   12 09 5E                ..^
        ret                             ;0611   22                      "
;
;
L0612:  cjne    a,#004h,L0619           ;0612   B4 04 04                ...
        lcall   L097C                   ;0615   12 09 7C                ..|
        ret                             ;0618   22                      "
;
;
L0619:  cjne    a,#005h,L0620           ;0619   B4 05 04                ...
        lcall   L0CE0                   ;061C   12 0C E0                ...
        ret                             ;061F   22                      "
;
;
L0620:  cjne    a,#008h,L0627           ;0620   B4 08 04                ...
        lcall   L0D8B                   ;0623   12 0D 8B                ...
        ret                             ;0626   22                      "
;
;
L0627:  cjne    a,#009h,L0633           ;0627   B4 09 09                ...
        acall   L0478                   ;062A   91 78                   .x
        mov     sp,#050h                ;062C   75 81 50                u.P
        clr     00dh                    ;062F   C2 0D                   ..
        ajmp    L02B8                   ;0631   41 B8                   A.
;
;
L0633:  cjne    a,#00ah,L0637           ;0633   B4 0A 01                ...
        ret                             ;0636   22                      "
;
;
L0637:  cjne    a,#007h,L063E           ;0637   B4 07 04                ...
        lcall   L0DF5                   ;063A   12 0D F5                ...
        ret                             ;063D   22                      "
;
;
L063E:  cjne    a,#00bh,L0645           ;063E   B4 0B 04                ...
        lcall   L0E03                   ;0641   12 0E 03                ...
        ret                             ;0644   22                      "
;
;
L0645:  cjne    a,#006h,L064C           ;0645   B4 06 04                ...
        lcall   L0E86                   ;0648   12 0E 86                ...
        ret                             ;064B   22                      "
;
;
L064C:  cjne    a,#00ch,L065B           ;064C   B4 0C 0C                ...
        acall   L048B                   ;064F   91 8B                   ..
        mov     dptr,#LFF0C             ;0651   90 FF 0C                ...
        mov     a,#01fh                 ;0654   74 1F                   t.
        movx    @dptr,a                 ;0656   F0                      .
        da      a                       ;0657   D4                      .
        nop                             ;0658   00                      .
;
L0659:  sjmp    L0659                   ;0659   80 FE                   ..
;
L065B:  cjne    a,#00dh,L0663           ;065B   B4 0D 05                ...
        mov     sp,#050h                ;065E   75 81 50                u.P
        ajmp    L0286                   ;0661   41 86                   A.
;
;
L0663:  cjne    a,#00eh,L0667           ;0663   B4 0E 01                ...
        ret                             ;0666   22                      "
;
;
L0667:  cjne    a,#00fh,L066B           ;0667   B4 0F 01                ...
        ret                             ;066A   22                      "
;
;
L066B:  cjne    a,#010h,L0672           ;066B   B4 10 04                ...
        lcall   L1051                   ;066E   12 10 51                ..Q
        ret                             ;0671   22                      "
;
;
L0672:  cjne    a,#012h,L0679           ;0672   B4 12 04                ...
        lcall   L1082                   ;0675   12 10 82                ...
        ret                             ;0678   22                      "
;
;
L0679:  cjne    a,#013h,L0680           ;0679   B4 13 04                ...
        lcall   L1123                   ;067C   12 11 23                ..#
        ret                             ;067F   22                      "
;
;
L0680:  cjne    a,#015h,L0687           ;0680   B4 15 04                ...
        lcall   L119D                   ;0683   12 11 9D                ...
        ret                             ;0686   22                      "
;
;
L0687:  mov     042h,#00dh              ;0687   75 42 0D                uB.
        acall   L048B                   ;068A   91 8B                   ..
        acall   L042F                   ;068C   91 2F                   ./
        ret                             ;068E   22                      "
;
;
L068F:  mov     a,035h                  ;068F   E5 35                   .5
        cjne    a,#0ffh,L0696           ;0691   B4 FF 02                ...
        sjmp    L06FB                   ;0694   80 65                   .e
;
L0696:  mov     a,025h                  ;0696   E5 25                   .%
        cjne    a,#001h,L069B           ;0698   B4 01 00                ...
;
L069B:  jc      L06FB                   ;069B   40 5E                   @^
        cjne    a,#007h,L06B0           ;069D   B4 07 10                ...
        mov     a,027h                  ;06A0   E5 27                   .'
        cjne    a,#001h,L06A5           ;06A2   B4 01 00                ...
;
L06A5:  jc      L06FB                   ;06A5   40 54                   @T
        cjne    a,#00ch,L06AA           ;06A7   B4 0C 00                ...
;
L06AA:  jnc     L06FB                   ;06AA   50 4F                   PO
        mov     03ah,a                  ;06AC   F5 3A                   .:
        sjmp    L06CC                   ;06AE   80 1C                   ..
;
L06B0:  jnc     L06FB                   ;06B0   50 49                   PI
        mov     a,026h                  ;06B2   E5 26                   .&
        cjne    a,#001h,L06BC           ;06B4   B4 01 05                ...
        mov     03ah,#005h              ;06B7   75 3A 05                u:.
        sjmp    L06CC                   ;06BA   80 10                   ..
;
L06BC:  jc      L06FB                   ;06BC   40 3D                   @=
        cjne    a,#004h,L06C1           ;06BE   B4 04 00                ...
;
L06C1:  jnc     L06C5                   ;06C1   50 02                   P.
        inc     a                       ;06C3   04                      .
        inc     a                       ;06C4   04                      .
;
L06C5:  cjne    a,#00ch,L06C8           ;06C5   B4 0C 00                ...
;
L06C8:  jnc     L06FB                   ;06C8   50 31                   P1
        mov     03ah,a                  ;06CA   F5 3A                   .:
;
L06CC:  mov     a,03ah                  ;06CC   E5 3A                   .:
        jb      acc.0,L06D8             ;06CE   20 E0 07                 ..
        mov     a,035h                  ;06D1   E5 35                   .5
        jnb     acc.0,L06FB             ;06D3   30 E0 25                0.%
        sjmp    L06DD                   ;06D6   80 05                   ..
;
L06D8:  mov     a,035h                  ;06D8   E5 35                   .5
        jb      acc.0,L06FB             ;06DA   20 E0 1E                 ..
;
L06DD:  lcall   L0703                   ;06DD   12 07 03                ...
        lcall   L0849                   ;06E0   12 08 49                ..I
        mov     a,025h                  ;06E3   E5 25                   .%
        swap    a                       ;06E5   C4                      .
        orl     a,026h                  ;06E6   45 26                   E&
        mov     039h,a                  ;06E8   F5 39                   .9
        cjne    a,#070h,L06ED           ;06EA   B4 70 00                .p.
;
L06ED:  jnc     L06F8                   ;06ED   50 09                   P.
        lcall   L08AB                   ;06EF   12 08 AB                ...
        jnc     L06F8                   ;06F2   50 04                   P.
        acall   L048B                   ;06F4   91 8B                   ..
        acall   L042F                   ;06F6   91 2F                   ./
;
L06F8:  acall   L0478                   ;06F8   91 78                   .x
        ret                             ;06FA   22                      "
;
;
L06FB:  mov     042h,#00bh              ;06FB   75 42 0B                uB.
        acall   L048B                   ;06FE   91 8B                   ..
        acall   L042F                   ;0700   91 2F                   ./
        ret                             ;0702   22                      "
;
;
L0703:  setb    00ch                    ;0703   D2 0C                   ..
        mov     a,03ah                  ;0705   E5 3A                   .:
        anl     a,#00fh                 ;0707   54 0F                   T.
        cjne    a,#009h,L0726           ;0709   B4 09 1A                ...
        mov     03eh,#020h              ;070C   75 3E 20                u> 
        mov     03fh,#020h              ;070F   75 3F 20                u? 
        mov     03ch,#001h              ;0712   75 3C 01                u<.
        mov     03dh,#080h              ;0715   75 3D 80                u=.
        lcall   L07DA                   ;0718   12 07 DA                ...
        mov     a,#021h                 ;071B   74 21                   t!
        mov     b,#001h                 ;071D   75 F0 01                u..
        lcall   L07AC                   ;0720   12 07 AC                ...
        ljmp    L0792                   ;0723   02 07 92                ...
;
;
L0726:  cjne    a,#00bh,L073B           ;0726   B4 0B 12                ...
        mov     03eh,#020h              ;0729   75 3E 20                u> 
        mov     03fh,#018h              ;072C   75 3F 18                u?.
        mov     03ch,#001h              ;072F   75 3C 01                u<.
        mov     03dh,#020h              ;0732   75 3D 20                u= 
        lcall   L07FF                   ;0735   12 07 FF                ...
        ljmp    L078F                   ;0738   02 07 8F                ...
;
;
L073B:  cjne    a,#007h,L074E           ;073B   B4 07 10                ...
        mov     03eh,#0a0h              ;073E   75 3E A0                u>.
        mov     03fh,#078h              ;0741   75 3F 78                u?x
        mov     03ch,#01ch              ;0744   75 3C 1C                u<.
        mov     03dh,#020h              ;0747   75 3D 20                u= 
        clr     00ch                    ;074A   C2 0C                   ..
        sjmp    L078C                   ;074C   80 3E                   .>
;
L074E:  cjne    a,#005h,L075F           ;074E   B4 05 0E                ...
        mov     03eh,#050h              ;0751   75 3E 50                u>P
        mov     03fh,#03ch              ;0754   75 3F 3C                u?<
        mov     03ch,#007h              ;0757   75 3C 07                u<.
        mov     03dh,#008h              ;075A   75 3D 08                u=.
        sjmp    L078C                   ;075D   80 2D                   .-
;
L075F:  cjne    a,#003h,L0773           ;075F   B4 03 11                ...
        mov     03eh,#028h              ;0762   75 3E 28                u>(
        mov     03fh,#020h              ;0765   75 3F 20                u? 
        mov     03ch,#001h              ;0768   75 3C 01                u<.
        mov     03dh,#0e0h              ;076B   75 3D E0                u=.
        lcall   L07DA                   ;076E   12 07 DA                ...
        sjmp    L078F                   ;0771   80 1C                   ..
;
L0773:  cjne    a,#001h,L0787           ;0773   B4 01 11                ...
        mov     03eh,#014h              ;0776   75 3E 14                u>.
        mov     03fh,#010h              ;0779   75 3F 10                u?.
        mov     03ch,#000h              ;077C   75 3C 00                u<.
        mov     03dh,#078h              ;077F   75 3D 78                u=x
        lcall   L0824                   ;0782   12 08 24                ..$
        sjmp    L078F                   ;0785   80 08                   ..
;
L0787:  setb    c                       ;0787   D3                      .
        mov     042h,#00ah              ;0788   75 42 0A                uB.
        ret                             ;078B   22                      "
;
;
L078C:  lcall   L07B5                   ;078C   12 07 B5                ...
;
L078F:  lcall   L07A7                   ;078F   12 07 A7                ...
;
L0792:  mov     a,03ch                  ;0792   E5 3C                   .<
        mov     dptr,#LFF8E             ;0794   90 FF 8E                ...
        movx    @dptr,a                 ;0797   F0                      .
        mov     a,03dh                  ;0798   E5 3D                   .=
        inc     dptr                    ;079A   A3                      .
        movx    @dptr,a                 ;079B   F0                      .
        mov     a,03eh                  ;079C   E5 3E                   .>
        mov     dptr,#LFF03             ;079E   90 FF 03                ...
        movx    @dptr,a                 ;07A1   F0                      .
        mov     a,03fh                  ;07A2   E5 3F                   .?
        inc     dptr                    ;07A4   A3                      .
        movx    @dptr,a                 ;07A5   F0                      .
        ret                             ;07A6   22                      "
;
;
L07A7:  mov     a,#001h                 ;07A7   74 01                   t.
        mov     b,#001h                 ;07A9   75 F0 01                u..
;
L07AC:  mov     dptr,#LFF01             ;07AC   90 FF 01                ...
        movx    @dptr,a                 ;07AF   F0                      .
        mov     a,b                     ;07B0   E5 F0                   ..
        inc     dptr                    ;07B2   A3                      .
        movx    @dptr,a                 ;07B3   F0                      .
        ret                             ;07B4   22                      "
;
;
L07B5:  mov     dptr,#LFF95             ;07B5   90 FF 95                ...
        mov     a,#080h                 ;07B8   74 80                   t.
        movx    @dptr,a                 ;07BA   F0                      .
        mov     dptr,#LFF96             ;07BB   90 FF 96                ...
        mov     a,#000h                 ;07BE   74 00                   t.
        movx    @dptr,a                 ;07C0   F0                      .
        mov     dptr,#LFF97             ;07C1   90 FF 97                ...
        mov     a,#080h                 ;07C4   74 80                   t.
        movx    @dptr,a                 ;07C6   F0                      .
        mov     dptr,#LFF98             ;07C7   90 FF 98                ...
        mov     a,#000h                 ;07CA   74 00                   t.
        movx    @dptr,a                 ;07CC   F0                      .
        mov     dptr,#LFF99             ;07CD   90 FF 99                ...
        mov     a,#000h                 ;07D0   74 00                   t.
        movx    @dptr,a                 ;07D2   F0                      .
        mov     dptr,#LFF9A             ;07D3   90 FF 9A                ...
        mov     a,#000h                 ;07D6   74 00                   t.
        movx    @dptr,a                 ;07D8   F0                      .
        ret                             ;07D9   22                      "
;
;
L07DA:  mov     dptr,#LFF95             ;07DA   90 FF 95                ...
        mov     a,#040h                 ;07DD   74 40                   t@
        movx    @dptr,a                 ;07DF   F0                      .
        mov     dptr,#LFF96             ;07E0   90 FF 96                ...
        mov     a,#000h                 ;07E3   74 00                   t.
        movx    @dptr,a                 ;07E5   F0                      .
        mov     dptr,#LFF97             ;07E6   90 FF 97                ...
        mov     a,#044h                 ;07E9   74 44                   tD
        movx    @dptr,a                 ;07EB   F0                      .
        mov     dptr,#LFF98             ;07EC   90 FF 98                ...
        mov     a,#044h                 ;07EF   74 44                   tD
        movx    @dptr,a                 ;07F1   F0                      .
        mov     dptr,#LFF99             ;07F2   90 FF 99                ...
        mov     a,#013h                 ;07F5   74 13                   t.
        movx    @dptr,a                 ;07F7   F0                      .
        mov     dptr,#LFF9A             ;07F8   90 FF 9A                ...
        mov     a,#013h                 ;07FB   74 13                   t.
        movx    @dptr,a                 ;07FD   F0                      .
        ret                             ;07FE   22                      "
;
;
L07FF:  mov     dptr,#LFF95             ;07FF   90 FF 95                ...
        mov     a,#033h                 ;0802   74 33                   t3
        movx    @dptr,a                 ;0804   F0                      .
        mov     dptr,#LFF96             ;0805   90 FF 96                ...
        mov     a,#033h                 ;0808   74 33                   t3
        movx    @dptr,a                 ;080A   F0                      .
        mov     dptr,#LFF97             ;080B   90 FF 97                ...
        mov     a,#033h                 ;080E   74 33                   t3
        movx    @dptr,a                 ;0810   F0                      .
        mov     dptr,#LFF98             ;0811   90 FF 98                ...
        mov     a,#033h                 ;0814   74 33                   t3
        movx    @dptr,a                 ;0816   F0                      .
        mov     dptr,#LFF99             ;0817   90 FF 99                ...
        mov     a,#013h                 ;081A   74 13                   t.
        movx    @dptr,a                 ;081C   F0                      .
        mov     dptr,#LFF9A             ;081D   90 FF 9A                ...
        mov     a,#013h                 ;0820   74 13                   t.
        movx    @dptr,a                 ;0822   F0                      .
        ret                             ;0823   22                      "
;
;
L0824:  mov     dptr,#LFF95             ;0824   90 FF 95                ...
        mov     a,#020h                 ;0827   74 20                   t 
        movx    @dptr,a                 ;0829   F0                      .
        mov     dptr,#LFF96             ;082A   90 FF 96                ...
        mov     a,#000h                 ;082D   74 00                   t.
        movx    @dptr,a                 ;082F   F0                      .
        mov     dptr,#LFF97             ;0830   90 FF 97                ...
        mov     a,#022h                 ;0833   74 22                   t"
        movx    @dptr,a                 ;0835   F0                      .
        mov     dptr,#LFF98             ;0836   90 FF 98                ...
        mov     a,#022h                 ;0839   74 22                   t"
        movx    @dptr,a                 ;083B   F0                      .
        mov     dptr,#LFF99             ;083C   90 FF 99                ...
        mov     a,#013h                 ;083F   74 13                   t.
        movx    @dptr,a                 ;0841   F0                      .
        mov     dptr,#LFF9A             ;0842   90 FF 9A                ...
        mov     a,#013h                 ;0845   74 13                   t.
        movx    @dptr,a                 ;0847   F0                      .
        ret                             ;0848   22                      "
;
;
L0849:  mov     a,035h                  ;0849   E5 35                   .5
        cjne    a,#000h,L086F           ;084B   B4 00 21                ..!
        mov     032h,#011h              ;084E   75 32 11                u2.
        lcall   L121F                   ;0851   12 12 1F                ...
        mov     a,030h                  ;0854   E5 30                   .0
        jnb     acc.1,L0864             ;0856   30 E1 0B                0..
        mov     dptr,#L153E             ;0859   90 15 3E                ..>
        jnb     00ch,L0894              ;085C   30 0C 35                0.5
        mov     dptr,#L1580             ;085F   90 15 80                ...
        sjmp    L0894                   ;0862   80 30                   .0
;
L0864:  mov     dptr,#L151D             ;0864   90 15 1D                ...
        jnb     00ch,L0894              ;0867   30 0C 2A                0.*
        mov     dptr,#L155F             ;086A   90 15 5F                .._
        sjmp    L0894                   ;086D   80 25                   .%
;
L086F:  cjne    a,#004h,L0893           ;086F   B4 04 21                ..!
        mov     032h,#02ah              ;0872   75 32 2A                u2*
        lcall   L121F                   ;0875   12 12 1F                ...
        mov     a,030h                  ;0878   E5 30                   .0
        jnb     acc.2,L0888             ;087A   30 E2 0B                0..
        mov     dptr,#L1607             ;087D   90 16 07                ...
        jnb     00ch,L0894              ;0880   30 0C 11                0..
        mov     dptr,#L1629             ;0883   90 16 29                ..)
        sjmp    L0894                   ;0886   80 0C                   ..
;
L0888:  mov     dptr,#L15F6             ;0888   90 15 F6                ...
        jnb     00ch,L0894              ;088B   30 0C 06                0..
        mov     dptr,#L1618             ;088E   90 16 18                ...
        sjmp    L0894                   ;0891   80 01                   ..
;
L0893:  ret                             ;0893   22                      "
;
;
L0894:  lcall   L12F6                   ;0894   12 12 F6                ...
        mov     a,035h                  ;0897   E5 35                   .5
        cjne    a,#004h,L08AA           ;0899   B4 04 0E                ...
        mov     a,03ah                  ;089C   E5 3A                   .:
        cjne    a,#005h,L08AA           ;089E   B4 05 09                ...
        mov     032h,#026h              ;08A1   75 32 26                u2&
        mov     030h,#032h              ;08A4   75 30 32                u02
        lcall   L11F4                   ;08A7   12 11 F4                ...
;
L08AA:  ret                             ;08AA   22                      "
;
;
L08AB:  mov     a,039h                  ;08AB   E5 39                   .9
        swap    a                       ;08AD   C4                      .
        anl     a,#00fh                 ;08AE   54 0F                   T.
        cjne    a,#001h,L08BB           ;08B0   B4 01 08                ...
        mov     03bh,#000h              ;08B3   75 3B 00                u;.
        mov     008h,#004h              ;08B6   75 08 04                u..
        sjmp    L08F7                   ;08B9   80 3C                   .<
;
L08BB:  cjne    a,#002h,L08C6           ;08BB   B4 02 08                ...
        mov     03bh,#001h              ;08BE   75 3B 01                u;.
        mov     008h,#008h              ;08C1   75 08 08                u..
        sjmp    L08F7                   ;08C4   80 31                   .1
;
L08C6:  cjne    a,#003h,L08D1           ;08C6   B4 03 08                ...
        mov     03bh,#002h              ;08C9   75 3B 02                u;.
        mov     008h,#010h              ;08CC   75 08 10                u..
        sjmp    L08F7                   ;08CF   80 26                   .&
;
L08D1:  cjne    a,#004h,L08DC           ;08D1   B4 04 08                ...
        mov     03bh,#010h              ;08D4   75 3B 10                u;.
        mov     008h,#010h              ;08D7   75 08 10                u..
        sjmp    L08F7                   ;08DA   80 1B                   ..
;
L08DC:  cjne    a,#005h,L08E7           ;08DC   B4 05 08                ...
        mov     03bh,#014h              ;08DF   75 3B 14                u;.
        mov     008h,#018h              ;08E2   75 08 18                u..
        sjmp    L08F7                   ;08E5   80 10                   ..
;
L08E7:  cjne    a,#006h,L08F2           ;08E7   B4 06 08                ...
        mov     03bh,#018h              ;08EA   75 3B 18                u;.
        mov     008h,#020h              ;08ED   75 08 20                u. 
        sjmp    L08F7                   ;08F0   80 05                   ..
;
L08F2:  setb    c                       ;08F2   D3                      .
        mov     042h,#009h              ;08F3   75 42 09                uB.
        ret                             ;08F6   22                      "
;
;
L08F7:  mov     a,03ah                  ;08F7   E5 3A                   .:
        mov     009h,039h               ;08F9   85 39 09                .9.
        anl     009h,#00fh              ;08FC   53 09 0F                S..
        subb    a,009h                  ;08FF   95 09                   ..
        jc      L0923                   ;0901   40 20                   @ 
        jb      acc.0,L0927             ;0903   20 E0 21                 .!
        mov     r7,a                    ;0906   FF                      .
        swap    a                       ;0907   C4                      .
        orl     03bh,a                  ;0908   42 3B                   B;
        mov     dptr,#LFF10             ;090A   90 FF 10                ...
        mov     a,03bh                  ;090D   E5 3B                   .;
        movx    @dptr,a                 ;090F   F0                      .
        mov     a,r7                    ;0910   EF                      .
        rr      a                       ;0911   03                      .
        mov     r7,a                    ;0912   FF                      .
        jz      L0921                   ;0913   60 0C                   `.
;
L0915:  mov     a,03eh                  ;0915   E5 3E                   .>
        rr      a                       ;0917   03                      .
        mov     03eh,a                  ;0918   F5 3E                   .>
        mov     a,03fh                  ;091A   E5 3F                   .?
        rr      a                       ;091C   03                      .
        mov     03fh,a                  ;091D   F5 3F                   .?
        djnz    r7,L0915                ;091F   DF F4                   ..
;
L0921:  clr     c                       ;0921   C3                      .
        ret                             ;0922   22                      "
;
;
L0923:  mov     042h,#002h              ;0923   75 42 02                uB.
        ret                             ;0926   22                      "
;
;
L0927:  mov     042h,#003h              ;0927   75 42 03                uB.
        setb    c                       ;092A   D3                      .
        ret                             ;092B   22                      "
;
        ret                             ;092C   22                      "
;
;
L092D:  mov     a,035h                  ;092D   E5 35                   .5
        cjne    a,#002h,L0934           ;092F   B4 02 02                ...
        sjmp    L0937                   ;0932   80 03                   ..
;
L0934:  cjne    a,#004h,L0954           ;0934   B4 04 1D                ...
;
L0937:  mov     032h,#075h              ;0937   75 32 75                u2u
        lcall   L121F                   ;093A   12 12 1F                ...
        mov     a,024h                  ;093D   E5 24                   .$
        cjne    a,#001h,L0948           ;093F   B4 01 06                ...
        orl     030h,#080h              ;0942   43 30 80                C0.
        ljmp    L094D                   ;0945   02 09 4D                ..M
;
;
L0948:  jnz     L0954                   ;0948   70 0A                   p.
        anl     030h,#07fh              ;094A   53 30 7F                S0.
;
L094D:  lcall   L11F4                   ;094D   12 11 F4                ...
        lcall   L0478                   ;0950   12 04 78                ..x
        ret                             ;0953   22                      "
;
;
L0954:  mov     042h,#0fch              ;0954   75 42 FC                uB.
        lcall   L048B                   ;0957   12 04 8B                ...
        lcall   L042F                   ;095A   12 04 2F                ../
        ret                             ;095D   22                      "
;
;
L095E:  mov     a,025h                  ;095E   E5 25                   .%
        jz      L096F                   ;0960   60 0D                   `.
        mov     032h,024h               ;0962   85 24 32                .$2
        mov     030h,026h               ;0965   85 26 30                .&0
        lcall   L11F4                   ;0968   12 11 F4                ...
        lcall   L0478                   ;096B   12 04 78                ..x
        ret                             ;096E   22                      "
;
;
L096F:  mov     dph,#0ffh               ;096F   75 83 FF                u..
        mov     dpl,024h                ;0972   85 24 82                .$.
        mov     a,026h                  ;0975   E5 26                   .&
        movx    @dptr,a                 ;0977   F0                      .
        lcall   L0478                   ;0978   12 04 78                ..x
        ret                             ;097B   22                      "
;
;
L097C:  mov     a,024h                  ;097C   E5 24                   .$
        cjne    a,#001h,L0988           ;097E   B4 01 07                ...
        jnb     078h,L09A4              ;0981   30 78 20                0x 
        lcall   L09F8                   ;0984   12 09 F8                ...
        ret                             ;0987   22                      "
;
;
L0988:  cjne    a,#002h,L098F           ;0988   B4 02 04                ...
        lcall   L0BB5                   ;098B   12 0B B5                ...
        ret                             ;098E   22                      "
;
;
L098F:  cjne    a,#003h,L0996           ;098F   B4 03 04                ...
        lcall   L09AE                   ;0992   12 09 AE                ...
        ret                             ;0995   22                      "
;
;
L0996:  cjne    a,#005h,L099F           ;0996   B4 05 06                ...
        setb    078h                    ;0999   D2 78                   .x
        lcall   L0ACC                   ;099B   12 0A CC                ...
        ret                             ;099E   22                      "
;
;
L099F:  mov     042h,#001h              ;099F   75 42 01                uB.
        sjmp    L09A7                   ;09A2   80 03                   ..
;
L09A4:  mov     042h,#00fh              ;09A4   75 42 0F                uB.
;
L09A7:  lcall   L048B                   ;09A7   12 04 8B                ...
        lcall   L042F                   ;09AA   12 04 2F                ../
        ret                             ;09AD   22                      "
;
;
L09AE:  ret                             ;09AE   22                      "
;
;
L09AF:  mov     a,#05ah                 ;09AF   74 5A                   tZ
        lcall   L13A5                   ;09B1   12 13 A5                ...
        lcall   L1380                   ;09B4   12 13 80                ...
        lcall   L102E                   ;09B7   12 10 2E                ...
        jc      L09F7                   ;09BA   40 3B                   @;
        lcall   L12B8                   ;09BC   12 12 B8                ...
        lcall   L1259                   ;09BF   12 12 59                ..Y
        mov     a,#0adh                 ;09C2   74 AD                   t.
        lcall   L1285                   ;09C4   12 12 85                ...
        jc      L09F7                   ;09C7   40 2E                   @.
        mov     r6,037h                 ;09C9   AE 37                   .7
        mov     r5,036h                 ;09CB   AD 36                   .6
        inc     r6                      ;09CD   0E                      .
        cjne    r5,#000h,L09D4          ;09CE   BD 00 03                ...
        inc     r6                      ;09D1   0E                      .
;
L09D2:  mov     r5,#000h                ;09D2   7D 00                   }.
;
L09D4:  lcall   L1296                   ;09D4   12 12 96                ...
        mov     dptr,#LFF22             ;09D7   90 FF 22                .."
        movx    @dptr,a                 ;09DA   F0                      .
        lcall   L12A4                   ;09DB   12 12 A4                ...
        lcall   L1296                   ;09DE   12 12 96                ...
        mov     dptr,#LFF23             ;09E1   90 FF 23                ..#
        movx    @dptr,a                 ;09E4   F0                      .
        lcall   L12A4                   ;09E5   12 12 A4                ...
        dec     r5                      ;09E8   1D                      .
        djnz    r5,L09D4                ;09E9   DD E9                   ..
        djnz    r6,L09D2                ;09EB   DE E5                   ..
        clr     c                       ;09ED   C3                      .
        lcall   L1296                   ;09EE   12 12 96                ...
        lcall   L12A8                   ;09F1   12 12 A8                ...
        lcall   L12B8                   ;09F4   12 12 B8                ...
;
L09F7:  ret                             ;09F7   22                      "
;
;
L09F8:  lcall   L0478                   ;09F8   12 04 78                ..x
;
L09FB:  jnb     005h,L0A0C              ;09FB   30 05 0E                0..
        lcall   L0BED                   ;09FE   12 0B ED                ...
        clr     005h                    ;0A01   C2 05                   ..
        mov     025h,#000h              ;0A03   75 25 00                u%.
        mov     026h,#000h              ;0A06   75 26 00                u&.
        lcall   L0CFA                   ;0A09   12 0C FA                ...
;
L0A0C:  jnb     000h,L09FB              ;0A0C   30 00 EC                0..
        mov     02ah,#001h              ;0A0F   75 2A 01                u*.
        mov     r7,#003h                ;0A12   7F 03                   ..
;
L0A14:  lcall   L05CA                   ;0A14   12 05 CA                ...
        jb      008h,L0A1F              ;0A17   20 08 05                 ..
        lcall   L0A78                   ;0A1A   12 0A 78                ..x
        sjmp    L0A32                   ;0A1D   80 13                   ..
;
L0A1F:  lcall   L0C1D                   ;0A1F   12 0C 1D                ...
        jc      L0A3C                   ;0A22   40 18                   @.
        lcall   L05D8                   ;0A24   12 05 D8                ...
        lcall   L04AD                   ;0A27   12 04 AD                ...
        mov     a,023h                  ;0A2A   E5 23                   .#
        mov     023h,#000h              ;0A2C   75 23 00                u#.
        cjne    a,#00eh,L0A33           ;0A2F   B4 0E 01                ...
;
L0A32:  ret                             ;0A32   22                      "
;
;
L0A33:  cjne    a,#00fh,L0A38           ;0A33   B4 0F 02                ...
        djnz    r7,L0A14                ;0A36   DF DC                   ..
;
L0A38:  mov     042h,#004h              ;0A38   75 42 04                uB.
        ret                             ;0A3B   22                      "
;
;
L0A3C:  mov     042h,#005h              ;0A3C   75 42 05                uB.
        ret                             ;0A3F   22                      "
;
;
L0A40:  mov     038h,#000h              ;0A40   75 38 00                u8.
        mov     dptr,#LFF89             ;0A43   90 FF 89                ...
        movx    a,@dptr                 ;0A46   E0                      .
        mov     037h,a                  ;0A47   F5 37                   .7
        inc     dptr                    ;0A49   A3                      .
        movx    a,@dptr                 ;0A4A   E0                      .
        mov     036h,a                  ;0A4B   F5 36                   .6
        mov     r7,#002h                ;0A4D   7F 02                   ..
        clr     c                       ;0A4F   C3                      .
;
L0A50:  mov     a,036h                  ;0A50   E5 36                   .6
        rlc     a                       ;0A52   33                      3
        mov     036h,a                  ;0A53   F5 36                   .6
        mov     a,037h                  ;0A55   E5 37                   .7
        rlc     a                       ;0A57   33                      3
        mov     037h,a                  ;0A58   F5 37                   .7
        djnz    r7,L0A50                ;0A5A   DF F4                   ..
        ret                             ;0A5C   22                      "
;
        clr     c                       ;0A5D   C3                      .
        mov     a,036h                  ;0A5E   E5 36                   .6
        addc    a,#004h                 ;0A60   34 04                   4.
        mov     036h,a                  ;0A62   F5 36                   .6
        mov     a,037h                  ;0A64   E5 37                   .7
        addc    a,#000h                 ;0A66   34 00                   4.
        mov     037h,a                  ;0A68   F5 37                   .7
        clr     c                       ;0A6A   C3                      .
        mov     a,037h                  ;0A6B   E5 37                   .7
        rrc     a                       ;0A6D   13                      .
        mov     dptr,#LFF0A             ;0A6E   90 FF 0A                ...
        movx    @dptr,a                 ;0A71   F0                      .
        inc     dptr                    ;0A72   A3                      .
        mov     a,036h                  ;0A73   E5 36                   .6
        rrc     a                       ;0A75   13                      .
        movx    @dptr,a                 ;0A76   F0                      .
        ret                             ;0A77   22                      "
;
;
L0A78:  acall   L0A40                   ;0A78   51 40                   Q@
        lcall   L0CB4                   ;0A7A   12 0C B4                ...
        lcall   L049E                   ;0A7D   12 04 9E                ...
;
L0A80:  lcall   L04AD                   ;0A80   12 04 AD                ...
        mov     a,023h                  ;0A83   E5 23                   .#
        jz      L0AC5                   ;0A85   60 3E                   `>
        mov     023h,#000h              ;0A87   75 23 00                u#.
        cjne    a,#00eh,L0A80           ;0A8A   B4 0E F3                ...
        mov     a,026h                  ;0A8D   E5 26                   .&
        cjne    a,#0f0h,L0A99           ;0A8F   B4 F0 07                ...
        mov     a,027h                  ;0A92   E5 27                   .'
        cjne    a,#0f0h,L0A99           ;0A94   B4 F0 02                ...
        sjmp    L0ABF                   ;0A97   80 26                   .&
;
L0A99:  mov     a,01fh                  ;0A99   E5 1F                   ..
        jz      L0AAC                   ;0A9B   60 0F                   `.
        mov     a,027h                  ;0A9D   E5 27                   .'
        jnz     L0AC7                   ;0A9F   70 26                   p&
        mov     009h,01fh               ;0AA1   85 1F 09                ...
        mov     008h,01eh               ;0AA4   85 1E 08                ...
        mov     00ah,026h               ;0AA7   85 26 0A                .&.
        sjmp    L0AB5                   ;0AAA   80 09                   ..
;
L0AAC:  mov     009h,027h               ;0AAC   85 27 09                .'.
        mov     008h,026h               ;0AAF   85 26 08                .&.
        mov     00ah,01eh               ;0AB2   85 1E 0A                ...
;
L0AB5:  lcall   L0AEB                   ;0AB5   12 0A EB                ...
        jc      L0AC7                   ;0AB8   40 0D                   @.
        lcall   L0B30                   ;0ABA   12 0B 30                ..0
        sjmp    L0A80                   ;0ABD   80 C1                   ..
;
L0ABF:  mov     00dh,037h               ;0ABF   85 37 0D                .7.
        lcall   L0C6E                   ;0AC2   12 0C 6E                ..n
;
L0AC5:  clr     c                       ;0AC5   C3                      .
        ret                             ;0AC6   22                      "
;
;
L0AC7:  mov     042h,#010h              ;0AC7   75 42 10                uB.
        setb    c                       ;0ACA   D3                      .
        ret                             ;0ACB   22                      "
;
;
L0ACC:  lcall   L0478                   ;0ACC   12 04 78                ..x
;
L0ACF:  clr     005h                    ;0ACF   C2 05                   ..
        mov     025h,#001h              ;0AD1   75 25 01                u%.
        mov     026h,#000h              ;0AD4   75 26 00                u&.
        lcall   L0CFA                   ;0AD7   12 0C FA                ...
;
L0ADA:  jnb     005h,L0AE2              ;0ADA   30 05 05                0..
        lcall   L0BED                   ;0ADD   12 0B ED                ...
        sjmp    L0ACF                   ;0AE0   80 ED                   ..
;
L0AE2:  jnb     000h,L0ADA              ;0AE2   30 00 F5                0..
        mov     02ah,#005h              ;0AE5   75 2A 05                u*.
        acall   L0A78                   ;0AE8   51 78                   Qx
        ret                             ;0AEA   22                      "
;
;
L0AEB:  mov     a,008h                  ;0AEB   E5 08                   ..
        mov     b,00ah                  ;0AED   85 0A F0                ...
        mul     ab                      ;0AF0   A4                      .
        mov     008h,a                  ;0AF1   F5 08                   ..
        mov     a,009h                  ;0AF3   E5 09                   ..
        mov     009h,b                  ;0AF5   85 F0 09                ...
        mov     b,00ah                  ;0AF8   85 0A F0                ...
        mul     ab                      ;0AFB   A4                      .
        add     a,009h                  ;0AFC   25 09                   %.
        mov     009h,a                  ;0AFE   F5 09                   ..
        clr     c                       ;0B00   C3                      .
        mov     a,036h                  ;0B01   E5 36                   .6
        subb    a,008h                  ;0B03   95 08                   ..
        mov     00ah,a                  ;0B05   F5 0A                   ..
        mov     a,037h                  ;0B07   E5 37                   .7
        subb    a,009h                  ;0B09   95 09                   ..
        jc      L0B2F                   ;0B0B   40 22                   @"
        mov     00bh,a                  ;0B0D   F5 0B                   ..
        cjne    a,01fh,L0B1B            ;0B0F   B5 1F 09                ...
        mov     a,00ah                  ;0B12   E5 0A                   ..
        cjne    a,01eh,L0B17            ;0B14   B5 1E 00                ...
;
L0B17:  jc      L0B23                   ;0B17   40 0A                   @.
        sjmp    L0B1D                   ;0B19   80 02                   ..
;
L0B1B:  jc      L0B23                   ;0B1B   40 06                   @.
;
L0B1D:  mov     00bh,01fh               ;0B1D   85 1F 0B                ...
        mov     00ah,01eh               ;0B20   85 1E 0A                ...
;
L0B23:  clr     c                       ;0B23   C3                      .
        mov     a,009h                  ;0B24   E5 09                   ..
        rrc     a                       ;0B26   13                      .
        mov     049h,a                  ;0B27   F5 49                   .I
        mov     a,008h                  ;0B29   E5 08                   ..
        rrc     a                       ;0B2B   13                      .
        mov     048h,a                  ;0B2C   F5 48                   .H
        clr     c                       ;0B2E   C3                      .
;
L0B2F:  ret                             ;0B2F   22                      "
;
;
L0B30:  mov     a,#05bh                 ;0B30   74 5B                   t[
        lcall   L13A5                   ;0B32   12 13 A5                ...
        lcall   L138B                   ;0B35   12 13 8B                ...
        mov     dptr,#LFF6F             ;0B38   90 FF 6F                ..o
        mov     a,#000h                 ;0B3B   74 00                   t.
        movx    @dptr,a                 ;0B3D   F0                      .
        inc     dptr                    ;0B3E   A3                      .
        mov     a,00ah                  ;0B3F   E5 0A                   ..
        add     a,#006h                 ;0B41   24 06                   $.
        mov     b,a                     ;0B43   F5 F0                   ..
        mov     a,00bh                  ;0B45   E5 0B                   ..
        addc    a,#000h                 ;0B47   34 00                   4.
        movx    @dptr,a                 ;0B49   F0                      .
        inc     dptr                    ;0B4A   A3                      .
        mov     a,b                     ;0B4B   E5 F0                   ..
        movx    @dptr,a                 ;0B4D   F0                      .
        lcall   L055A                   ;0B4E   12 05 5A                ..Z
        mov     a,#09fh                 ;0B51   74 9F                   t.
        lcall   L036F                   ;0B53   12 03 6F                ..o
        clr     00ah                    ;0B56   C2 0A                   ..
        lcall   L05CA                   ;0B58   12 05 CA                ...
        mov     dptr,#LFF29             ;0B5B   90 FF 29                ..)
        mov     a,026h                  ;0B5E   E5 26                   .&
        movx    @dptr,a                 ;0B60   F0                      .
        inc     dptr                    ;0B61   A3                      .
        mov     a,027h                  ;0B62   E5 27                   .'
        movx    @dptr,a                 ;0B64   F0                      .
        dec     dpl                     ;0B65   15 82                   ..
        mov     a,00ah                  ;0B67   E5 0A                   ..
        movx    @dptr,a                 ;0B69   F0                      .
        inc     dptr                    ;0B6A   A3                      .
        mov     a,00bh                  ;0B6B   E5 0B                   ..
        movx    @dptr,a                 ;0B6D   F0                      .
;
L0B6E:  mov     dptr,#LFF24             ;0B6E   90 FF 24                ..$
        movx    a,@dptr                 ;0B71   E0                      .
        mov     dptr,#LFF29             ;0B72   90 FF 29                ..)
        movx    @dptr,a                 ;0B75   F0                      .
        mov     dptr,#LFF25             ;0B76   90 FF 25                ..%
        movx    a,@dptr                 ;0B79   E0                      .
        mov     dptr,#LFF2A             ;0B7A   90 FF 2A                ..*
        movx    @dptr,a                 ;0B7D   F0                      .
;
L0B7E:  mov     dptr,#LFF65             ;0B7E   90 FF 65                ..e
        movx    a,@dptr                 ;0B81   E0                      .
        jnb     acc.5,L0B7E             ;0B82   30 E5 F9                0..
        clr     c                       ;0B85   C3                      .
        mov     a,00ah                  ;0B86   E5 0A                   ..
        subb    a,#002h                 ;0B88   94 02                   ..
        mov     00ah,a                  ;0B8A   F5 0A                   ..
        mov     a,00bh                  ;0B8C   E5 0B                   ..
        subb    a,#000h                 ;0B8E   94 00                   ..
        mov     00bh,a                  ;0B90   F5 0B                   ..
        jnz     L0B6E                   ;0B92   70 DA                   p.
        mov     a,00ah                  ;0B94   E5 0A                   ..
        jnz     L0B6E                   ;0B96   70 D6                   p.
        lcall   L1327                   ;0B98   12 13 27                ..'
        lcall   L1332                   ;0B9B   12 13 32                ..2
        mov     dptr,#LFF90             ;0B9E   90 FF 90                ...
        movx    a,@dptr                 ;0BA1   E0                      .
        mov     dptr,#LFF29             ;0BA2   90 FF 29                ..)
        movx    @dptr,a                 ;0BA5   F0                      .
        inc     dptr                    ;0BA6   A3                      .
        mov     a,#000h                 ;0BA7   74 00                   t.
        movx    @dptr,a                 ;0BA9   F0                      .
        lcall   L131D                   ;0BAA   12 13 1D                ...
        lcall   L131D                   ;0BAD   12 13 1D                ...
        clr     c                       ;0BB0   C3                      .
        lcall   L057D                   ;0BB1   12 05 7D                ..}
        ret                             ;0BB4   22                      "
;
;
L0BB5:  lcall   L0478                   ;0BB5   12 04 78                ..x
;
L0BB8:  clr     005h                    ;0BB8   C2 05                   ..
        lcall   L0BF9                   ;0BBA   12 0B F9                ...
;
L0BBD:  jnb     005h,L0BC5              ;0BBD   30 05 05                0..
        lcall   L0BED                   ;0BC0   12 0B ED                ...
        sjmp    L0BB8                   ;0BC3   80 F3                   ..
;
L0BC5:  jnb     000h,L0BBD              ;0BC5   30 00 F5                0..
        lcall   L05CA                   ;0BC8   12 05 CA                ...
        mov     02ah,#002h              ;0BCB   75 2A 02                u*.
        lcall   L0C1D                   ;0BCE   12 0C 1D                ...
        jc      L0BE9                   ;0BD1   40 16                   @.
;
L0BD3:  lcall   L04AD                   ;0BD3   12 04 AD                ...
        mov     a,023h                  ;0BD6   E5 23                   .#
        jz      L0BD3                   ;0BD8   60 F9                   `.
        cjne    a,#00eh,L0BD3           ;0BDA   B4 0E F6                ...
        mov     023h,#000h              ;0BDD   75 23 00                u#.
        lcall   L05D8                   ;0BE0   12 05 D8                ...
        lcall   L0D32                   ;0BE3   12 0D 32                ..2
        clr     000h                    ;0BE6   C2 00                   ..
        ret                             ;0BE8   22                      "
;
;
L0BE9:  mov     042h,#005h              ;0BE9   75 42 05                uB.
        ret                             ;0BEC   22                      "
;
;
L0BED:  lcall   L0D32                   ;0BED   12 0D 32                ..2
        lcall   L0501                   ;0BF0   12 05 01                ...
        inc     047h                    ;0BF3   05 47                   .G
        lcall   L1432                   ;0BF5   12 14 32                ..2
        ret                             ;0BF8   22                      "
;
;
L0BF9:  mov     a,#042h                 ;0BF9   74 42                   tB
        lcall   L13A5                   ;0BFB   12 13 A5                ...
        lcall   L1380                   ;0BFE   12 13 80                ...
        mov     a,#081h                 ;0C01   74 81                   t.
        lcall   L0D82                   ;0C03   12 0D 82                ...
        mov     a,#001h                 ;0C06   74 01                   t.
        lcall   L0C8E                   ;0C08   12 0C 8E                ...
        mov     a,#004h                 ;0C0B   74 04                   t.
        lcall   L0C9F                   ;0C0D   12 0C 9F                ...
        mov     a,#017h                 ;0C10   74 17                   t.
        lcall   L036F                   ;0C12   12 03 6F                ..o
        clr     000h                    ;0C15   C2 00                   ..
        clr     003h                    ;0C17   C2 03                   ..
        lcall   L0D39                   ;0C19   12 0D 39                ..9
        ret                             ;0C1C   22                      "
;
;
L0C1D:  acall   L0A40                   ;0C1D   51 40                   Q@
        mov     00dh,037h               ;0C1F   85 37 0D                .7.
        mov     a,#06bh                 ;0C22   74 6B                   tk
        lcall   L13A5                   ;0C24   12 13 A5                ...
        lcall   L1380                   ;0C27   12 13 80                ...
        mov     dptr,#LFF0A             ;0C2A   90 FF 0A                ...
        mov     a,#05fh                 ;0C2D   74 5F                   t_
        movx    @dptr,a                 ;0C2F   F0                      .
        inc     dptr                    ;0C30   A3                      .
        mov     a,#0feh                 ;0C31   74 FE                   t.
        movx    @dptr,a                 ;0C33   F0                      .
        mov     dptr,#LFF1B             ;0C34   90 FF 1B                ...
        mov     a,#002h                 ;0C37   74 02                   t.
        movx    @dptr,a                 ;0C39   F0                      .
        lcall   L0CBB                   ;0C3A   12 0C BB                ...
        lcall   L049E                   ;0C3D   12 04 9E                ...
        lcall   L05E6                   ;0C40   12 05 E6                ...
        lcall   L0C7F                   ;0C43   12 0C 7F                ...
        mov     a,#00ah                 ;0C46   74 0A                   t.
        lcall   L0C9F                   ;0C48   12 0C 9F                ...
        mov     a,#09fh                 ;0C4B   74 9F                   t.
        lcall   L036F                   ;0C4D   12 03 6F                ..o
        clr     00ah                    ;0C50   C2 0A                   ..
        mov     a,#023h                 ;0C52   74 23                   t#
        lcall   L0578                   ;0C54   12 05 78                ..x
        lcall   L0CA4                   ;0C57   12 0C A4                ...
        clr     c                       ;0C5A   C3                      .
        lcall   L057D                   ;0C5B   12 05 7D                ..}
        lcall   L1332                   ;0C5E   12 13 32                ..2
        lcall   L0D32                   ;0C61   12 0D 32                ..2
        lcall   L0CB4                   ;0C64   12 0C B4                ...
        jc      L0C6D                   ;0C67   40 04                   @.
        lcall   L0C6E                   ;0C69   12 0C 6E                ..n
        clr     c                       ;0C6C   C3                      .
;
L0C6D:  ret                             ;0C6D   22                      "
;
;
L0C6E:  mov     a,00dh                  ;0C6E   E5 0D                   ..
        cjne    a,#060h,L0C73           ;0C70   B4 60 00                .`.
;
L0C73:  jnc     L0C7E                   ;0C73   50 09                   P.
        mov     a,047h                  ;0C75   E5 47                   .G
        jz      L0C7E                   ;0C77   60 05                   `.
        dec     047h                    ;0C79   15 47                   .G
        lcall   L1432                   ;0C7B   12 14 32                ..2
;
L0C7E:  ret                             ;0C7E   22                      "
;
;
L0C7F:  mov     dptr,#LFF6F             ;0C7F   90 FF 6F                ..o
;
L0C82:  mov     a,038h                  ;0C82   E5 38                   .8
        movx    @dptr,a                 ;0C84   F0                      .
        inc     dptr                    ;0C85   A3                      .
        mov     a,037h                  ;0C86   E5 37                   .7
        movx    @dptr,a                 ;0C88   F0                      .
        inc     dptr                    ;0C89   A3                      .
        mov     a,036h                  ;0C8A   E5 36                   .6
        movx    @dptr,a                 ;0C8C   F0                      .
        ret                             ;0C8D   22                      "
;
;
L0C8E:  mov     dptr,#LFF1B             ;0C8E   90 FF 1B                ...
        movx    @dptr,a                 ;0C91   F0                      .
        mov     dptr,#LFF88             ;0C92   90 FF 88                ...
        mov     a,#014h                 ;0C95   74 14                   t.
        movx    @dptr,a                 ;0C97   F0                      .
        mov     dptr,#LFF72             ;0C98   90 FF 72                ..r
        mov     a,#0cch                 ;0C9B   74 CC                   t.
        movx    @dptr,a                 ;0C9D   F0                      .
        ret                             ;0C9E   22                      "
;
;
L0C9F:  mov     dptr,#LFF8D             ;0C9F   90 FF 8D                ...
        movx    @dptr,a                 ;0CA2   F0                      .
        ret                             ;0CA3   22                      "
;
;
L0CA4:  mov     dptr,#LFF09             ;0CA4   90 FF 09                ...
        mov     a,#03fh                 ;0CA7   74 3F                   t?
        movx    @dptr,a                 ;0CA9   F0                      .
        mov     dptr,#LFF08             ;0CAA   90 FF 08                ...
        mov     a,#082h                 ;0CAD   74 82                   t.
        movx    @dptr,a                 ;0CAF   F0                      .
        mov     a,#0c2h                 ;0CB0   74 C2                   t.
        movx    @dptr,a                 ;0CB2   F0                      .
        ret                             ;0CB3   22                      "
;
;
L0CB4:  mov     a,#000h                 ;0CB4   74 00                   t.
        mov     dptr,#LFF09             ;0CB6   90 FF 09                ...
        movx    @dptr,a                 ;0CB9   F0                      .
        ret                             ;0CBA   22                      "
;
;
L0CBB:  mov     a,03eh                  ;0CBB   E5 3E                   .>
        mov     b,03fh                  ;0CBD   85 3F F0                .?.
        mul     ab                      ;0CC0   A4                      .
        mov     038h,b                  ;0CC1   85 F0 38                ..8
        mov     b,008h                  ;0CC4   85 08 F0                ...
        mul     ab                      ;0CC7   A4                      .
        mov     036h,a                  ;0CC8   F5 36                   .6
        mov     037h,b                  ;0CCA   85 F0 37                ..7
        mov     a,038h                  ;0CCD   E5 38                   .8
        mov     b,008h                  ;0CCF   85 08 F0                ...
        mul     ab                      ;0CD2   A4                      .
        mov     038h,b                  ;0CD3   85 F0 38                ..8
        add     a,037h                  ;0CD6   25 37                   %7
        mov     037h,a                  ;0CD8   F5 37                   .7
        clr     a                       ;0CDA   E4                      .
        addc    a,038h                  ;0CDB   35 38                   58
        mov     038h,a                  ;0CDD   F5 38                   .8
        ret                             ;0CDF   22                      "
;
;
L0CE0:  clr     005h                    ;0CE0   C2 05                   ..
        setb    078h                    ;0CE2   D2 78                   .x
        mov     a,024h                  ;0CE4   E5 24                   .$
        jz      L0CF5                   ;0CE6   60 0D                   `.
        dec     a                       ;0CE8   14                      .
        jz      L0D2A                   ;0CE9   60 3F                   `?
        mov     042h,#00bh              ;0CEB   75 42 0B                uB.
        lcall   L048B                   ;0CEE   12 04 8B                ...
        lcall   L042F                   ;0CF1   12 04 2F                ../
        ret                             ;0CF4   22                      "
;
;
L0CF5:  clr     008h                    ;0CF5   C2 08                   ..
        lcall   L0478                   ;0CF7   12 04 78                ..x
;
L0CFA:  mov     a,#042h                 ;0CFA   74 42                   tB
        lcall   L13A5                   ;0CFC   12 13 A5                ...
        lcall   L1380                   ;0CFF   12 13 80                ...
        clr     000h                    ;0D02   C2 00                   ..
        clr     003h                    ;0D04   C2 03                   ..
        mov     a,#003h                 ;0D06   74 03                   t.
        lcall   L0578                   ;0D08   12 05 78                ..x
        mov     a,#0f4h                 ;0D0B   74 F4                   t.
        acall   L0C9F                   ;0D0D   91 9F                   ..
        mov     a,#001h                 ;0D0F   74 01                   t.
        acall   L0C8E                   ;0D11   91 8E                   ..
        lcall   L0D43                   ;0D13   12 0D 43                ..C
        jc      L0D21                   ;0D16   40 09                   @.
        mov     a,#015h                 ;0D18   74 15                   t.
        lcall   L036F                   ;0D1A   12 03 6F                ..o
        lcall   L0D32                   ;0D1D   12 0D 32                ..2
        ret                             ;0D20   22                      "
;
;
L0D21:  mov     a,#017h                 ;0D21   74 17                   t.
        lcall   L036F                   ;0D23   12 03 6F                ..o
        lcall   L0D39                   ;0D26   12 0D 39                ..9
        ret                             ;0D29   22                      "
;
;
L0D2A:  setb    008h                    ;0D2A   D2 08                   ..
        acall   L0BF9                   ;0D2C   71 F9                   q.
        lcall   L0478                   ;0D2E   12 04 78                ..x
        ret                             ;0D31   22                      "
;
;
L0D32:  mov     dptr,#LFF08             ;0D32   90 FF 08                ...
        mov     a,#000h                 ;0D35   74 00                   t.
        movx    @dptr,a                 ;0D37   F0                      .
        ret                             ;0D38   22                      "
;
;
L0D39:  mov     dptr,#LFF08             ;0D39   90 FF 08                ...
        mov     a,#0beh                 ;0D3C   74 BE                   t.
        movx    @dptr,a                 ;0D3E   F0                      .
        mov     a,#09fh                 ;0D3F   74 9F                   t.
        movx    @dptr,a                 ;0D41   F0                      .
        ret                             ;0D42   22                      "
;
;
L0D43:  mov     008h,025h               ;0D43   85 25 08                .%.
        mov     009h,026h               ;0D46   85 26 09                .&.
        mov     00ah,#07fh              ;0D49   75 0A 7F                u..
        lcall   L133D                   ;0D4C   12 13 3D                ..=
;
L0D4F:  mov     a,009h                  ;0D4F   E5 09                   ..
        jnz     L0D57                   ;0D51   70 04                   p.
        mov     a,008h                  ;0D53   E5 08                   ..
        jz      L0D6D                   ;0D55   60 16                   `.
;
L0D57:  mov     a,00bh                  ;0D57   E5 0B                   ..
        jnz     L0D77                   ;0D59   70 1C                   p.
        mov     00bh,#07fh              ;0D5B   75 0B 7F                u..
        clr     c                       ;0D5E   C3                      .
        mov     a,008h                  ;0D5F   E5 08                   ..
        subb    a,#001h                 ;0D61   94 01                   ..
        mov     008h,a                  ;0D63   F5 08                   ..
        mov     a,009h                  ;0D65   E5 09                   ..
        subb    a,#000h                 ;0D67   94 00                   ..
        mov     009h,a                  ;0D69   F5 09                   ..
        sjmp    L0D4F                   ;0D6B   80 E2                   ..
;
L0D6D:  setb    c                       ;0D6D   D3                      .
        mov     a,00bh                  ;0D6E   E5 0B                   ..
        jnz     L0D78                   ;0D70   70 06                   p.
        mov     00bh,#001h              ;0D72   75 0B 01                u..
        sjmp    L0D78                   ;0D75   80 01                   ..
;
L0D77:  clr     c                       ;0D77   C3                      .
;
L0D78:  mov     041h,008h               ;0D78   85 08 41                ..A
        mov     040h,009h               ;0D7B   85 09 40                ..@
        mov     a,00bh                  ;0D7E   E5 0B                   ..
        orl     a,#080h                 ;0D80   44 80                   D.
;
L0D82:  mov     dptr,#LFF06             ;0D82   90 FF 06                ...
        movx    @dptr,a                 ;0D85   F0                      .
        mov     a,#000h                 ;0D86   74 00                   t.
        inc     dptr                    ;0D88   A3                      .
        movx    @dptr,a                 ;0D89   F0                      .
        ret                             ;0D8A   22                      "
;
;
L0D8B:  mov     a,024h                  ;0D8B   E5 24                   .$
        jz      L0DC2                   ;0D8D   60 33                   `3
        dec     a                       ;0D8F   14                      .
        jz      L0D99                   ;0D90   60 07                   `.
        mov     042h,#00bh              ;0D92   75 42 0B                uB.
        lcall   L048B                   ;0D95   12 04 8B                ...
        ret                             ;0D98   22                      "
;
;
L0D99:  lcall   L0501                   ;0D99   12 05 01                ...
        lcall   L0DD3                   ;0D9C   12 0D D3                ...
        mov     dptr,#LFF6B             ;0D9F   90 FF 6B                ..k
        mov     a,#006h                 ;0DA2   74 06                   t.
        movx    @dptr,a                 ;0DA4   F0                      .
        mov     dptr,#LFF71             ;0DA5   90 FF 71                ..q
        movx    @dptr,a                 ;0DA8   F0                      .
        clr     00bh                    ;0DA9   C2 0B                   ..
        clr     009h                    ;0DAB   C2 09                   ..
        clr     078h                    ;0DAD   C2 78                   .x
        lcall   L0478                   ;0DAF   12 04 78                ..x
        lcall   L131D                   ;0DB2   12 13 1D                ...
        lcall   L05E6                   ;0DB5   12 05 E6                ...
        jb      00dh,L0DC1              ;0DB8   20 0D 06                 ..
        mov     sp,#050h                ;0DBB   75 81 50                u.P
        ljmp    L02B8                   ;0DBE   02 02 B8                ...
;
;
L0DC1:  ret                             ;0DC1   22                      "
;
;
L0DC2:  lcall   L0478                   ;0DC2   12 04 78                ..x
        mov     a,#000h                 ;0DC5   74 00                   t.
        mov     dptr,#LFF2C             ;0DC7   90 FF 2C                ..,
        movx    @dptr,a                 ;0DCA   F0                      .
        mov     sp,#050h                ;0DCB   75 81 50                u.P
        clr     00dh                    ;0DCE   C2 0D                   ..
        ljmp    L02B8                   ;0DD0   02 02 B8                ...
;
;
L0DD3:  clr     00bh                    ;0DD3   C2 0B                   ..
        clr     009h                    ;0DD5   C2 09                   ..
        clr     00ah                    ;0DD7   C2 0A                   ..
        clr     078h                    ;0DD9   C2 78                   .x
        clr     a                       ;0DDB   E4                      .
        mov     dptr,#LFF08             ;0DDC   90 FF 08                ...
        movx    @dptr,a                 ;0DDF   F0                      .
        inc     dptr                    ;0DE0   A3                      .
        movx    @dptr,a                 ;0DE1   F0                      .
        mov     dptr,#LFF11             ;0DE2   90 FF 11                ...
        movx    @dptr,a                 ;0DE5   F0                      .
        mov     dptr,#LFF1B             ;0DE6   90 FF 1B                ...
        inc     a                       ;0DE9   04                      .
        movx    @dptr,a                 ;0DEA   F0                      .
        lcall   L055A                   ;0DEB   12 05 5A                ..Z
        mov     dptr,#LFF8D             ;0DEE   90 FF 8D                ...
        mov     a,#004h                 ;0DF1   74 04                   t.
        movx    @dptr,a                 ;0DF3   F0                      .
        ret                             ;0DF4   22                      "
;
;
L0DF5:  lcall   L0478                   ;0DF5   12 04 78                ..x
        mov     dptr,#LFF0D             ;0DF8   90 FF 0D                ...
        mov     a,024h                  ;0DFB   E5 24                   .$
        movx    @dptr,a                 ;0DFD   F0                      .
        inc     dptr                    ;0DFE   A3                      .
        mov     a,025h                  ;0DFF   E5 25                   .%
        movx    @dptr,a                 ;0E01   F0                      .
        ret                             ;0E02   22                      "
;
;
L0E03:  lcall   L0478                   ;0E03   12 04 78                ..x
        mov     a,025h                  ;0E06   E5 25                   .%
        jz      L0E14                   ;0E08   60 0A                   `.
        mov     032h,024h               ;0E0A   85 24 32                .$2
        lcall   L121F                   ;0E0D   12 12 1F                ...
        mov     a,030h                  ;0E10   E5 30                   .0
        sjmp    L0E33                   ;0E12   80 1F                   ..
;
L0E14:  mov     a,024h                  ;0E14   E5 24                   .$
        cjne    a,#0f0h,L0E21           ;0E16   B4 F0 08                ...
        mov     00eh,#001h              ;0E19   75 0E 01                u..
        mov     00fh,#005h              ;0E1C   75 0F 05                u..
        sjmp    L0E38                   ;0E1F   80 17                   ..
;
L0E21:  cjne    a,#0f2h,L0E2C           ;0E21   B4 F2 08                ...
        mov     00fh,020h               ;0E24   85 20 0F                . .
        mov     00eh,021h               ;0E27   85 21 0E                .!.
        sjmp    L0E38                   ;0E2A   80 0C                   ..
;
L0E2C:  mov     dph,#0ffh               ;0E2C   75 83 FF                u..
        mov     dpl,024h                ;0E2F   85 24 82                .$.
        movx    a,@dptr                 ;0E32   E0                      .
;
L0E33:  mov     00fh,a                  ;0E33   F5 0F                   ..
        mov     00eh,#000h              ;0E35   75 0E 00                u..
;
L0E38:  mov     r6,#003h                ;0E38   7E 03                   ~.
;
L0E3A:  mov     02ah,#000h              ;0E3A   75 2A 00                u*.
        mov     036h,#002h              ;0E3D   75 36 02                u6.
        clr     a                       ;0E40   E4                      .
        mov     037h,a                  ;0E41   F5 37                   .7
        mov     038h,a                  ;0E43   F5 38                   .8
        lcall   L05CA                   ;0E45   12 05 CA                ...
        lcall   L049E                   ;0E48   12 04 9E                ...
        mov     a,#09fh                 ;0E4B   74 9F                   t.
        lcall   L036F                   ;0E4D   12 03 6F                ..o
        mov     dptr,#LFF71             ;0E50   90 FF 71                ..q
        mov     a,#002h                 ;0E53   74 02                   t.
        movx    @dptr,a                 ;0E55   F0                      .
        mov     dptr,#LFF29             ;0E56   90 FF 29                ..)
        mov     a,00fh                  ;0E59   E5 0F                   ..
        movx    @dptr,a                 ;0E5B   F0                      .
        inc     dptr                    ;0E5C   A3                      .
        mov     a,00eh                  ;0E5D   E5 0E                   ..
        movx    @dptr,a                 ;0E5F   F0                      .
        clr     c                       ;0E60   C3                      .
        lcall   L05A9                   ;0E61   12 05 A9                ...
        jc      L0E82                   ;0E64   40 1C                   @.
        lcall   L05D8                   ;0E66   12 05 D8                ...
        lcall   L04AD                   ;0E69   12 04 AD                ...
        mov     a,023h                  ;0E6C   E5 23                   .#
        jnz     L0E74                   ;0E6E   70 04                   p.
;
L0E70:  mov     042h,#004h              ;0E70   75 42 04                uB.
        ret                             ;0E73   22                      "
;
;
L0E74:  mov     023h,#000h              ;0E74   75 23 00                u#.
        cjne    a,#00eh,L0E7B           ;0E77   B4 0E 01                ...
        ret                             ;0E7A   22                      "
;
;
L0E7B:  cjne    a,#00fh,L0E70           ;0E7B   B4 0F F2                ...
        djnz    r6,L0E3A                ;0E7E   DE BA                   ..
        sjmp    L0E70                   ;0E80   80 EE                   ..
;
L0E82:  mov     042h,#00ch              ;0E82   75 42 0C                uB.
        ret                             ;0E85   22                      "
;
;
L0E86:  mov     a,024h                  ;0E86   E5 24                   .$
        cjne    a,#001h,L0E8F           ;0E88   B4 01 04                ...
        lcall   L0EBA                   ;0E8B   12 0E BA                ...
        ret                             ;0E8E   22                      "
;
;
L0E8F:  cjne    a,#002h,L0E93           ;0E8F   B4 02 01                ...
        ret                             ;0E92   22                      "
;
;
L0E93:  cjne    a,#003h,L0E9A           ;0E93   B4 03 04                ...
        lcall   L0F0A                   ;0E96   12 0F 0A                ...
        ret                             ;0E99   22                      "
;
;
L0E9A:  cjne    a,#008h,L0EB6           ;0E9A   B4 08 19                ...
        clr     c                       ;0E9D   C3                      .
        mov     a,025h                  ;0E9E   E5 25                   .%
        jb      acc.0,L0EB1             ;0EA0   20 E0 0E                 ..
        subb    a,#006h                 ;0EA3   94 06                   ..
        mov     01eh,a                  ;0EA5   F5 1E                   ..
        mov     a,026h                  ;0EA7   E5 26                   .&
        subb    a,#000h                 ;0EA9   94 00                   ..
        mov     01fh,a                  ;0EAB   F5 1F                   ..
        lcall   L0478                   ;0EAD   12 04 78                ..x
        ret                             ;0EB0   22                      "
;
;
L0EB1:  mov     042h,#011h              ;0EB1   75 42 11                uB.
        sjmp    L0EB6                   ;0EB4   80 00                   ..
;
L0EB6:  lcall   L048B                   ;0EB6   12 04 8B                ...
        ret                             ;0EB9   22                      "
;
;
L0EBA:  lcall   L0478                   ;0EBA   12 04 78                ..x
        lcall   L05D1                   ;0EBD   12 05 D1                ...
        lcall   L04AD                   ;0EC0   12 04 AD                ...
        mov     a,023h                  ;0EC3   E5 23                   .#
        mov     023h,#000h              ;0EC5   75 23 00                u#.
        cjne    a,#00ah,L0EFF           ;0EC8   B4 0A 34                ..4
        mov     022h,a                  ;0ECB   F5 22                   ."
        mov     038h,027h               ;0ECD   85 27 38                .'8
        mov     037h,026h               ;0ED0   85 26 37                .&7
        mov     036h,025h               ;0ED3   85 25 36                .%6
        setb    c                       ;0ED6   D3                      .
        lcall   L0567                   ;0ED7   12 05 67                ..g
        mov     a,#042h                 ;0EDA   74 42                   tB
        lcall   L13A5                   ;0EDC   12 13 A5                ...
        lcall   L1380                   ;0EDF   12 13 80                ...
        mov     dptr,#LFF08             ;0EE2   90 FF 08                ...
        mov     a,#010h                 ;0EE5   74 10                   t.
        movx    @dptr,a                 ;0EE7   F0                      .
        setb    c                       ;0EE8   D3                      .
        lcall   L057D                   ;0EE9   12 05 7D                ..}
        acall   L0D32                   ;0EEC   B1 32                   .2
        jc      L0F02                   ;0EEE   40 12                   @.
        lcall   L05DD                   ;0EF0   12 05 DD                ...
        setb    003h                    ;0EF3   D2 03                   ..
        lcall   L0478                   ;0EF5   12 04 78                ..x
        clr     c                       ;0EF8   C3                      .
        ret                             ;0EF9   22                      "
;
        mov     042h,#0fbh              ;0EFA   75 42 FB                uB.
        sjmp    L0F02                   ;0EFD   80 03                   ..
;
L0EFF:  mov     042h,#006h              ;0EFF   75 42 06                uB.
;
L0F02:  lcall   L05BE                   ;0F02   12 05 BE                ...
        lcall   L048B                   ;0F05   12 04 8B                ...
        setb    c                       ;0F08   D3                      .
        ret                             ;0F09   22                      "
;
;
L0F0A:  mov     a,027h                  ;0F0A   E5 27                   .'
        cjne    a,#0dch,L0F1E           ;0F0C   B4 DC 0F                ...
        mov     009h,026h               ;0F0F   85 26 09                .&.
        mov     008h,025h               ;0F12   85 25 08                .%.
        mov     a,026h                  ;0F15   E5 26                   .&
        cjne    a,#01bh,L0F1A           ;0F17   B4 1B 00                ...
;
L0F1A:  jc      L0F3C                   ;0F1A   40 20                   @ 
        sjmp    L0F2F                   ;0F1C   80 11                   ..
;
L0F1E:  cjne    a,#000h,L0F3B           ;0F1E   B4 00 1A                ...
        mov     008h,#000h              ;0F21   75 08 00                u..
        mov     009h,#000h              ;0F24   75 09 00                u..
        mov     a,026h                  ;0F27   E5 26                   .&
        jnz     L0F2F                   ;0F29   70 04                   p.
        mov     a,025h                  ;0F2B   E5 25                   .%
        jz      L0F3A                   ;0F2D   60 0B                   `.
;
L0F2F:  acall   L0EBA                   ;0F2F   D1 BA                   ..
        jnb     003h,L0F3C              ;0F31   30 03 08                0..
        clr     003h                    ;0F34   C2 03                   ..
        lcall   L0F40                   ;0F36   12 0F 40                ..@
        ret                             ;0F39   22                      "
;
;
L0F3A:  ret                             ;0F3A   22                      "
;
;
L0F3B:  ret                             ;0F3B   22                      "
;
;
L0F3C:  mov     042h,#0f2h              ;0F3C   75 42 F2                uB.
        ret                             ;0F3F   22                      "
;
;
L0F40:  mov     a,#05bh                 ;0F40   74 5B                   t[
        lcall   L13A5                   ;0F42   12 13 A5                ...
        lcall   L1380                   ;0F45   12 13 80                ...
        mov     00ch,037h               ;0F48   85 37 0C                .7.
        mov     a,036h                  ;0F4B   E5 36                   .6
        mov     r7,#006h                ;0F4D   7F 06                   ..
;
L0F4F:  rlc     a                       ;0F4F   33                      3
        xch     a,00ch                  ;0F50   C5 0C                   ..
        djnz    r7,L0F4F                ;0F52   DF FB                   ..
        mov     a,036h                  ;0F54   E5 36                   .6
        anl     a,#01fh                 ;0F56   54 1F                   T.
        jz      L0F5C                   ;0F58   60 02                   `.
        inc     00ch                    ;0F5A   05 0C                   ..
;
L0F5C:  mov     r7,00ch                 ;0F5C   AF 0C                   ..
;
L0F5E:  lcall   L1398                   ;0F5E   12 13 98                ...
        mov     r6,#003h                ;0F61   7E 03                   ~.
;
L0F63:  lcall   L102E                   ;0F63   12 10 2E                ...
        jc      L0FB1                   ;0F66   40 49                   @I
        lcall   L138B                   ;0F68   12 13 8B                ...
        mov     a,009h                  ;0F6B   E5 09                   ..
        jnz     L0F7C                   ;0F6D   70 0D                   p.
        mov     a,008h                  ;0F6F   E5 08                   ..
        jnz     L0F7C                   ;0F71   70 09                   p.
        lcall   L0FB4                   ;0F73   12 0F B4                ...
        jnc     L0FA1                   ;0F76   50 29                   P)
        djnz    r6,L0F63                ;0F78   DE E9                   ..
        sjmp    L0FB1                   ;0F7A   80 35                   .5
;
L0F7C:  mov     r5,#010h                ;0F7C   7D 10                   }.
        lcall   L0FE6                   ;0F7E   12 0F E6                ...
        lcall   L102E                   ;0F81   12 10 2E                ...
        jc      L0FB1                   ;0F84   40 2B                   @+
        lcall   L12B8                   ;0F86   12 12 B8                ...
        lcall   L1259                   ;0F89   12 12 59                ..Y
        mov     a,#0adh                 ;0F8C   74 AD                   t.
        lcall   L1285                   ;0F8E   12 12 85                ...
        jc      L0FB1                   ;0F91   40 1E                   @.
        lcall   L138B                   ;0F93   12 13 8B                ...
        mov     r5,#010h                ;0F96   7D 10                   }.
        lcall   L0FFA                   ;0F98   12 0F FA                ...
        jnc     L0FA1                   ;0F9B   50 04                   P.
        djnz    r6,L0F63                ;0F9D   DE C4                   ..
        sjmp    L0FB1                   ;0F9F   80 10                   ..
;
L0FA1:  mov     a,008h                  ;0FA1   E5 08                   ..
        add     a,#020h                 ;0FA3   24 20                   $ 
        mov     008h,a                  ;0FA5   F5 08                   ..
        mov     a,009h                  ;0FA7   E5 09                   ..
        addc    a,#000h                 ;0FA9   34 00                   4.
        mov     009h,a                  ;0FAB   F5 09                   ..
        djnz    r7,L0F5E                ;0FAD   DF AF                   ..
        sjmp    L0FB3                   ;0FAF   80 02                   ..
;
L0FB1:  setb    007h                    ;0FB1   D2 07                   ..
;
L0FB3:  ret                             ;0FB3   22                      "
;
;
L0FB4:  mov     r5,#00fh                ;0FB4   7D 0F                   }.
        lcall   L0FE6                   ;0FB6   12 0F E6                ...
        mov     dptr,#LFF24             ;0FB9   90 FF 24                ..$
        movx    a,@dptr                 ;0FBC   E0                      .
        mov     dptr,#LFF25             ;0FBD   90 FF 25                ..%
        movx    a,@dptr                 ;0FC0   E0                      .
        lcall   L102E                   ;0FC1   12 10 2E                ...
        jc      L0FE5                   ;0FC4   40 1F                   @.
        lcall   L12B8                   ;0FC6   12 12 B8                ...
        lcall   L1259                   ;0FC9   12 12 59                ..Y
        mov     a,#0adh                 ;0FCC   74 AD                   t.
        lcall   L1285                   ;0FCE   12 12 85                ...
        jc      L0FE5                   ;0FD1   40 12                   @.
        lcall   L138B                   ;0FD3   12 13 8B                ...
        mov     r5,#00fh                ;0FD6   7D 0F                   }.
        lcall   L0FFA                   ;0FD8   12 0F FA                ...
        jc      L0FE5                   ;0FDB   40 08                   @.
        mov     dptr,#LFF24             ;0FDD   90 FF 24                ..$
        movx    a,@dptr                 ;0FE0   E0                      .
        mov     dptr,#LFF25             ;0FE1   90 FF 25                ..%
        movx    a,@dptr                 ;0FE4   E0                      .
;
L0FE5:  ret                             ;0FE5   22                      "
;
;
L0FE6:  mov     dptr,#LFF24             ;0FE6   90 FF 24                ..$
        movx    a,@dptr                 ;0FE9   E0                      .
        lcall   L1285                   ;0FEA   12 12 85                ...
        mov     dptr,#LFF25             ;0FED   90 FF 25                ..%
        movx    a,@dptr                 ;0FF0   E0                      .
        lcall   L1285                   ;0FF1   12 12 85                ...
        djnz    r5,L0FE6                ;0FF4   DD F0                   ..
        lcall   L12B8                   ;0FF6   12 12 B8                ...
        ret                             ;0FF9   22                      "
;
;
L0FFA:  mov     dptr,#LFF24             ;0FFA   90 FF 24                ..$
        movx    a,@dptr                 ;0FFD   E0                      .
        mov     b,a                     ;0FFE   F5 F0                   ..
        lcall   L1296                   ;1000   12 12 96                ...
        xrl     a,b                     ;1003   65 F0                   e.
        jnz     L1026                   ;1005   70 1F                   p.
        lcall   L12A4                   ;1007   12 12 A4                ...
        mov     dptr,#LFF25             ;100A   90 FF 25                ..%
        movx    a,@dptr                 ;100D   E0                      .
        mov     b,a                     ;100E   F5 F0                   ..
        lcall   L1296                   ;1010   12 12 96                ...
        xrl     a,b                     ;1013   65 F0                   e.
        jnz     L1026                   ;1015   70 0F                   p.
        djnz    r5,L1021                ;1017   DD 08                   ..
        lcall   L12A8                   ;1019   12 12 A8                ...
        lcall   L12B8                   ;101C   12 12 B8                ...
        clr     c                       ;101F   C3                      .
        ret                             ;1020   22                      "
;
;
L1021:  lcall   L12A4                   ;1021   12 12 A4                ...
;
L1024:  sjmp    L0FFA                   ;1024   80 D4                   ..
;
L1026:  lcall   L12A8                   ;1026   12 12 A8                ...
        lcall   L12B8                   ;1029   12 12 B8                ...
        setb    c                       ;102C   D3                      .
        ret                             ;102D   22                      "
;
;
L102E:  push    006h                    ;102E   C0 06                   ..
        mov     r6,#030h                ;1030   7E 30                   ~0
;
L1032:  lcall   L1259                   ;1032   12 12 59                ..Y
        mov     a,#0ach                 ;1035   74 AC                   t.
        lcall   L1285                   ;1037   12 12 85                ...
        jnc     L1044                   ;103A   50 08                   P.
        lcall   L131D                   ;103C   12 13 1D                ...
        djnz    r6,L1032                ;103F   DE F1                   ..
        setb    c                       ;1041   D3                      .
        sjmp    L104E                   ;1042   80 0A                   ..
;
L1044:  mov     a,009h                  ;1044   E5 09                   ..
        lcall   L1285                   ;1046   12 12 85                ...
        mov     a,008h                  ;1049   E5 08                   ..
        lcall   L1285                   ;104B   12 12 85                ...
;
L104E:  pop     006h                    ;104E   D0 06                   ..
        ret                             ;1050   22                      "
;
;
L1051:  mov     a,024h                  ;1051   E5 24                   .$
        mov     050h,a                  ;1053   F5 50                   .P
        cjne    a,#003h,L1058           ;1055   B4 03 00                ...
;
L1058:  jnc     L107B                   ;1058   50 21                   P!
        lcall   L0478                   ;105A   12 04 78                ..x
        mov     a,050h                  ;105D   E5 50                   .P
        cjne    a,#000h,L1068           ;105F   B4 00 06                ...
        mov     031h,#000h              ;1062   75 31 00                u1.
        ljmp    L1074                   ;1065   02 10 74                ..t
;
;
L1068:  cjne    a,#001h,L1071           ;1068   B4 01 06                ...
        mov     031h,#007h              ;106B   75 31 07                u1.
        ljmp    L1074                   ;106E   02 10 74                ..t
;
;
L1071:  mov     031h,#00eh              ;1071   75 31 0E                u1.
;
L1074:  mov     047h,031h               ;1074   85 31 47                .1G
        lcall   L1432                   ;1077   12 14 32                ..2
        ret                             ;107A   22                      "
;
;
L107B:  mov     042h,#00bh              ;107B   75 42 0B                uB.
        lcall   L048B                   ;107E   12 04 8B                ...
        ret                             ;1081   22                      "
;
;
L1082:  mov     a,024h                  ;1082   E5 24                   .$
        jz      L10CC                   ;1084   60 46                   `F
        dec     a                       ;1086   14                      .
        jz      L108C                   ;1087   60 03                   `.
        ljmp    L110A                   ;1089   02 11 0A                ...
;
;
L108C:  mov     a,035h                  ;108C   E5 35                   .5
        cjne    a,#000h,L10AC           ;108E   B4 00 1B                ...
        mov     032h,#011h              ;1091   75 32 11                u2.
        mov     030h,#003h              ;1094   75 30 03                u0.
        lcall   L11F4                   ;1097   12 11 F4                ...
        lcall   L1332                   ;109A   12 13 32                ..2
        mov     a,03ah                  ;109D   E5 3A                   .:
        cjne    a,#007h,L10A7           ;109F   B4 07 05                ...
        mov     dptr,#L153E             ;10A2   90 15 3E                ..>
        sjmp    L1111                   ;10A5   80 6A                   .j
;
L10A7:  mov     dptr,#L1580             ;10A7   90 15 80                ...
        sjmp    L1111                   ;10AA   80 65                   .e
;
L10AC:  cjne    a,#004h,L10CA           ;10AC   B4 04 1B                ...
        mov     032h,#02ah              ;10AF   75 32 2A                u2*
        lcall   L121F                   ;10B2   12 12 1F                ...
        orl     030h,#004h              ;10B5   43 30 04                C0.
        lcall   L11F4                   ;10B8   12 11 F4                ...
        mov     a,03ah                  ;10BB   E5 3A                   .:
        cjne    a,#007h,L10C5           ;10BD   B4 07 05                ...
        mov     dptr,#L1607             ;10C0   90 16 07                ...
        sjmp    L1111                   ;10C3   80 4C                   .L
;
L10C5:  mov     dptr,#L1629             ;10C5   90 16 29                ..)
        sjmp    L1111                   ;10C8   80 47                   .G
;
L10CA:  sjmp    L110A                   ;10CA   80 3E                   .>
;
L10CC:  mov     a,035h                  ;10CC   E5 35                   .5
        cjne    a,#000h,L10EC           ;10CE   B4 00 1B                ...
        mov     032h,#011h              ;10D1   75 32 11                u2.
        mov     030h,#001h              ;10D4   75 30 01                u0.
        lcall   L11F4                   ;10D7   12 11 F4                ...
        lcall   L1332                   ;10DA   12 13 32                ..2
        mov     a,03ah                  ;10DD   E5 3A                   .:
        cjne    a,#007h,L10E7           ;10DF   B4 07 05                ...
        mov     dptr,#L151D             ;10E2   90 15 1D                ...
        sjmp    L1111                   ;10E5   80 2A                   .*
;
L10E7:  mov     dptr,#L155F             ;10E7   90 15 5F                .._
        sjmp    L1111                   ;10EA   80 25                   .%
;
L10EC:  cjne    a,#004h,L110A           ;10EC   B4 04 1B                ...
        mov     032h,#02ah              ;10EF   75 32 2A                u2*
        lcall   L121F                   ;10F2   12 12 1F                ...
        anl     030h,#0fbh              ;10F5   53 30 FB                S0.
        lcall   L11F4                   ;10F8   12 11 F4                ...
        mov     a,03ah                  ;10FB   E5 3A                   .:
        cjne    a,#007h,L1105           ;10FD   B4 07 05                ...
        mov     dptr,#L15F6             ;1100   90 15 F6                ...
        sjmp    L1111                   ;1103   80 0C                   ..
;
L1105:  mov     dptr,#L1618             ;1105   90 16 18                ...
        sjmp    L1111                   ;1108   80 07                   ..
;
L110A:  mov     042h,#00eh              ;110A   75 42 0E                uB.
        lcall   L048B                   ;110D   12 04 8B                ...
        ret                             ;1110   22                      "
;
;
L1111:  lcall   L12F6                   ;1111   12 12 F6                ...
        mov     a,035h                  ;1114   E5 35                   .5
        cjne    a,#004h,L111F           ;1116   B4 04 06                ...
        mov     dptr,#L163A             ;1119   90 16 3A                ..:
        lcall   L12F6                   ;111C   12 12 F6                ...
;
L111F:  lcall   L0478                   ;111F   12 04 78                ..x
        ret                             ;1122   22                      "
;
;
L1123:  mov     a,024h                  ;1123   E5 24                   .$
        jz      L115F                   ;1125   60 38                   `8
        dec     a                       ;1127   14                      .
        jz      L112D                   ;1128   60 03                   `.
        ljmp    L118F                   ;112A   02 11 8F                ...
;
;
L112D:  mov     a,035h                  ;112D   E5 35                   .5
        cjne    a,#000h,L1143           ;112F   B4 00 11                ...
        mov     032h,#02ah              ;1132   75 32 2A                u2*
        mov     030h,#090h              ;1135   75 30 90                u0.
        lcall   L11F4                   ;1138   12 11 F4                ...
        mov     032h,#02bh              ;113B   75 32 2B                u2+
        mov     030h,#04ch              ;113E   75 30 4C                u0L
        sjmp    L1196                   ;1141   80 53                   .S
;
L1143:  cjne    a,#004h,L115D           ;1143   B4 04 17                ...
        mov     032h,#02ah              ;1146   75 32 2A                u2*
        lcall   L121F                   ;1149   12 12 1F                ...
        orl     030h,#080h              ;114C   43 30 80                C0.
        anl     030h,#09fh              ;114F   53 30 9F                S0.
        lcall   L11F4                   ;1152   12 11 F4                ...
        mov     032h,#02bh              ;1155   75 32 2B                u2+
        mov     030h,#0aeh              ;1158   75 30 AE                u0.
        sjmp    L1196                   ;115B   80 39                   .9
;
L115D:  sjmp    L118F                   ;115D   80 30                   .0
;
L115F:  mov     a,035h                  ;115F   E5 35                   .5
        cjne    a,#000h,L1175           ;1161   B4 00 11                ...
        mov     032h,#02ah              ;1164   75 32 2A                u2*
        mov     030h,#0b0h              ;1167   75 30 B0                u0.
        lcall   L11F4                   ;116A   12 11 F4                ...
        mov     032h,#02bh              ;116D   75 32 2B                u2+
        mov     030h,#008h              ;1170   75 30 08                u0.
        sjmp    L1196                   ;1173   80 21                   .!
;
L1175:  cjne    a,#004h,L118F           ;1175   B4 04 17                ...
        mov     032h,#02ah              ;1178   75 32 2A                u2*
        lcall   L121F                   ;117B   12 12 1F                ...
        orl     030h,#0a0h              ;117E   43 30 A0                C0.
        anl     030h,#0bfh              ;1181   53 30 BF                S0.
        lcall   L11F4                   ;1184   12 11 F4                ...
        mov     032h,#02bh              ;1187   75 32 2B                u2+
        mov     030h,#068h              ;118A   75 30 68                u0h
        sjmp    L1196                   ;118D   80 07                   ..
;
L118F:  mov     042h,#012h              ;118F   75 42 12                uB.
        lcall   L048B                   ;1192   12 04 8B                ...
        ret                             ;1195   22                      "
;
;
L1196:  lcall   L11F4                   ;1196   12 11 F4                ...
        lcall   L0478                   ;1199   12 04 78                ..x
        ret                             ;119C   22                      "
;
;
L119D:  lcall   L0478                   ;119D   12 04 78                ..x
        mov     036h,024h               ;11A0   85 24 36                .$6
        mov     037h,025h               ;11A3   85 25 37                .%7
        mov     038h,#000h              ;11A6   75 38 00                u8.
        mov     008h,026h               ;11A9   85 26 08                .&.
        mov     009h,027h               ;11AC   85 27 09                .'.
        lcall   L09AF                   ;11AF   12 09 AF                ...
        mov     a,#05bh                 ;11B2   74 5B                   t[
        lcall   L13A5                   ;11B4   12 13 A5                ...
        lcall   L1380                   ;11B7   12 13 80                ...
        mov     dptr,#LFF6F             ;11BA   90 FF 6F                ..o
        mov     a,#000h                 ;11BD   74 00                   t.
        movx    @dptr,a                 ;11BF   F0                      .
        inc     dptr                    ;11C0   A3                      .
        mov     a,037h                  ;11C1   E5 37                   .7
        movx    @dptr,a                 ;11C3   F0                      .
        inc     dptr                    ;11C4   A3                      .
        mov     a,036h                  ;11C5   E5 36                   .6
        movx    @dptr,a                 ;11C7   F0                      .
        mov     r1,037h                 ;11C8   A9 37                   .7
        mov     r0,036h                 ;11CA   A8 36                   .6
        inc     r1                      ;11CC   09                      .
        cjne    r0,#000h,L11D3          ;11CD   B8 00 03                ...
        dec     r1                      ;11D0   19                      .
;
L11D1:  mov     r0,#000h                ;11D1   78 00                   x.
;
L11D3:  mov     dptr,#LFF24             ;11D3   90 FF 24                ..$
        movx    a,@dptr                 ;11D6   E0                      .
        mov     dptr,#LFF29             ;11D7   90 FF 29                ..)
        movx    @dptr,a                 ;11DA   F0                      .
        mov     dptr,#LFF25             ;11DB   90 FF 25                ..%
        movx    a,@dptr                 ;11DE   E0                      .
        mov     dptr,#LFF2A             ;11DF   90 FF 2A                ..*
        movx    @dptr,a                 ;11E2   F0                      .
;
L11E3:  mov     dptr,#LFF65             ;11E3   90 FF 65                ..e
        movx    a,@dptr                 ;11E6   E0                      .
        jnb     acc.5,L11E3             ;11E7   30 E5 F9                0..
        dec     r0                      ;11EA   18                      .
        djnz    r0,L11D3                ;11EB   D8 E6                   ..
        djnz    r1,L11D1                ;11ED   D9 E2                   ..
        clr     c                       ;11EF   C3                      .
        lcall   L057D                   ;11F0   12 05 7D                ..}
        ret                             ;11F3   22                      "
;
;
L11F4:  push    007h                    ;11F4   C0 07                   ..
        mov     r7,#003h                ;11F6   7F 03                   ..
;
L11F8:  lcall   L1259                   ;11F8   12 12 59                ..Y
        mov     a,04dh                  ;11FB   E5 4D                   .M
        lcall   L1285                   ;11FD   12 12 85                ...
        jc      L1218                   ;1200   40 16                   @.
        mov     a,032h                  ;1202   E5 32                   .2
        lcall   L1285                   ;1204   12 12 85                ...
        jc      L1218                   ;1207   40 0F                   @.
        mov     a,030h                  ;1209   E5 30                   .0
        lcall   L1285                   ;120B   12 12 85                ...
        jc      L1218                   ;120E   40 08                   @.
        lcall   L12B8                   ;1210   12 12 B8                ...
        clr     006h                    ;1213   C2 06                   ..
        pop     007h                    ;1215   D0 07                   ..
;
L1217:  ret                             ;1217   22                      "
;
;
L1218:  djnz    r7,L11F8                ;1218   DF DE                   ..
        setb    006h                    ;121A   D2 06                   ..
        pop     007h                    ;121C   D0 07                   ..
        ret                             ;121E   22                      "
;
;
L121F:  push    007h                    ;121F   C0 07                   ..
        mov     r7,#003h                ;1221   7F 03                   ..
;
L1223:  lcall   L1259                   ;1223   12 12 59                ..Y
        mov     a,04dh                  ;1226   E5 4D                   .M
        lcall   L1285                   ;1228   12 12 85                ...
        jc      L1252                   ;122B   40 25                   @%
        mov     a,032h                  ;122D   E5 32                   .2
        lcall   L1285                   ;122F   12 12 85                ...
        jc      L1252                   ;1232   40 1E                   @.
;
L1234:  lcall   L12B8                   ;1234   12 12 B8                ...
        lcall   L1261                   ;1237   12 12 61                ..a
        mov     a,04dh                  ;123A   E5 4D                   .M
        inc     a                       ;123C   04                      .
        lcall   L1285                   ;123D   12 12 85                ...
        jc      L1252                   ;1240   40 10                   @.
        lcall   L1296                   ;1242   12 12 96                ...
        mov     030h,a                  ;1245   F5 30                   .0
        lcall   L12A8                   ;1247   12 12 A8                ...
        lcall   L12B8                   ;124A   12 12 B8                ...
        clr     006h                    ;124D   C2 06                   ..
        pop     007h                    ;124F   D0 07                   ..
        ret                             ;1251   22                      "
;
;
L1252:  djnz    r7,L1223                ;1252   DF CF                   ..
        setb    006h                    ;1254   D2 06                   ..
        pop     007h                    ;1256   D0 07                   ..
        ret                             ;1258   22                      "
;
;
L1259:  setb    ex1                     ;1259   D2 AA                   ..
        mov     dptr,#LFF7B             ;125B   90 FF 7B                ..{
        mov     a,#04ah                 ;125E   74 4A                   tJ
        movx    @dptr,a                 ;1260   F0                      .
;
L1261:  mov     dptr,#LFF7C             ;1261   90 FF 7C                ..|
        mov     a,#007h                 ;1264   74 07                   t.
        movx    @dptr,a                 ;1266   F0                      .
        mov     dptr,#LFF7C             ;1267   90 FF 7C                ..|
        mov     a,#006h                 ;126A   74 06                   t.
        movx    @dptr,a                 ;126C   F0                      .
        lcall   L12CB                   ;126D   12 12 CB                ...
        mov     dptr,#LFF7C             ;1270   90 FF 7C                ..|
        mov     a,#000h                 ;1273   74 00                   t.
        movx    @dptr,a                 ;1275   F0                      .
        lcall   L12CB                   ;1276   12 12 CB                ...
        ret                             ;1279   22                      "
;
        mov     a,#0fdh                 ;127A   74 FD                   t.
        sjmp    L1280                   ;127C   80 02                   ..
        mov     a,#0ffh                 ;127E   74 FF                   t.
;
L1280:  mov     dptr,#LFF80             ;1280   90 FF 80                ...
        movx    @dptr,a                 ;1283   F0                      .
        ret                             ;1284   22                      "
;
;
L1285:  mov     dptr,#LFF7D             ;1285   90 FF 7D                ..}
        movx    @dptr,a                 ;1288   F0                      .
        mov     dptr,#LFF7C             ;1289   90 FF 7C                ..|
        mov     a,#001h                 ;128C   74 01                   t.
        movx    @dptr,a                 ;128E   F0                      .
        lcall   L12CB                   ;128F   12 12 CB                ...
        lcall   L12E6                   ;1292   12 12 E6                ...
        ret                             ;1295   22                      "
;
;
L1296:  mov     dptr,#LFF7C             ;1296   90 FF 7C                ..|
        mov     a,#003h                 ;1299   74 03                   t.
        movx    @dptr,a                 ;129B   F0                      .
        lcall   L12CB                   ;129C   12 12 CB                ...
        mov     dptr,#LFF7E             ;129F   90 FF 7E                ..~
        movx    a,@dptr                 ;12A2   E0                      .
        ret                             ;12A3   22                      "
;
;
L12A4:  mov     a,#000h                 ;12A4   74 00                   t.
        sjmp    L12AA                   ;12A6   80 02                   ..
;
L12A8:  mov     a,#0ffh                 ;12A8   74 FF                   t.
;
L12AA:  mov     dptr,#LFF7D             ;12AA   90 FF 7D                ..}
        movx    @dptr,a                 ;12AD   F0                      .
        mov     dptr,#LFF7C             ;12AE   90 FF 7C                ..|
        mov     a,#002h                 ;12B1   74 02                   t.
        movx    @dptr,a                 ;12B3   F0                      .
        lcall   L12CB                   ;12B4   12 12 CB                ...
        ret                             ;12B7   22                      "
;
;
L12B8:  mov     dptr,#LFF7C             ;12B8   90 FF 7C                ..|
        mov     a,#005h                 ;12BB   74 05                   t.
        movx    @dptr,a                 ;12BD   F0                      .
        lcall   L12CB                   ;12BE   12 12 CB                ...
        mov     dptr,#LFF7C             ;12C1   90 FF 7C                ..|
        mov     a,#006h                 ;12C4   74 06                   t.
        movx    @dptr,a                 ;12C6   F0                      .
        lcall   L12CB                   ;12C7   12 12 CB                ...
        ret                             ;12CA   22                      "
;
;
L12CB:  push    007h                    ;12CB   C0 07                   ..
        clr     c                       ;12CD   C3                      .
        mov     r7,#000h                ;12CE   7F 00                   ..
;
L12D0:  mov     dptr,#LFF7F             ;12D0   90 FF 7F                ...
        movx    a,@dptr                 ;12D3   E0                      .
        rlc     a                       ;12D4   33                      3
        jnc     L12E1                   ;12D5   50 0A                   P.
        lcall   L131D                   ;12D7   12 13 1D                ...
        djnz    r7,L12D0                ;12DA   DF F4                   ..
        setb    004h                    ;12DC   D2 04                   ..
        setb    c                       ;12DE   D3                      .
        sjmp    L12E3                   ;12DF   80 02                   ..
;
L12E1:  clr     004h                    ;12E1   C2 04                   ..
;
L12E3:  pop     007h                    ;12E3   D0 07                   ..
        ret                             ;12E5   22                      "
;
;
L12E6:  mov     dptr,#LFF7C             ;12E6   90 FF 7C                ..|
        mov     a,#004h                 ;12E9   74 04                   t.
        movx    @dptr,a                 ;12EB   F0                      .
        acall   L12CB                   ;12EC   51 CB                   Q.
        jc      L12F5                   ;12EE   40 05                   @.
        mov     dptr,#LFF7E             ;12F0   90 FF 7E                ..~
        movx    a,@dptr                 ;12F3   E0                      .
        rrc     a                       ;12F4   13                      .
;
L12F5:  ret                             ;12F5   22                      "
;
;
L12F6:  clr     a                       ;12F6   E4                      .
        movc    a,@a+dptr               ;12F7   93                      .
        cjne    a,#0ffh,L12FC           ;12F8   B4 FF 01                ...
        ret                             ;12FB   22                      "
;
;
L12FC:  mov     032h,a                  ;12FC   F5 32                   .2
        inc     dptr                    ;12FE   A3                      .
        clr     a                       ;12FF   E4                      .
        movc    a,@a+dptr               ;1300   93                      .
        inc     dptr                    ;1301   A3                      .
;
L1302:  push    dph                     ;1302   C0 83                   ..
        push    dpl                     ;1304   C0 82                   ..
        mov     030h,a                  ;1306   F5 30                   .0
        acall   L11F4                   ;1308   31 F4                   1.
        pop     dpl                     ;130A   D0 82                   ..
        pop     dph                     ;130C   D0 83                   ..
        sjmp    L12F6                   ;130E   80 E6                   ..
        nop                             ;1310   00                      .
        nop                             ;1311   00                      .
        ret                             ;1312   22                      "
;
        push    007h                    ;1313   C0 07                   ..
        mov     r7,#011h                ;1315   7F 11                   ..
;
L1317:  nop                             ;1317   00                      .
        djnz    r7,L1317                ;1318   DF FD                   ..
        pop     007h                    ;131A   D0 07                   ..
        ret                             ;131C   22                      "
;
;
L131D:  push    007h                    ;131D   C0 07                   ..
        mov     r7,#0b5h                ;131F   7F B5                   ..
;
L1321:  nop                             ;1321   00                      .
        djnz    r7,L1321                ;1322   DF FD                   ..
        pop     007h                    ;1324   D0 07                   ..
        ret                             ;1326   22                      "
;
;
L1327:  acall   L131D                   ;1327   71 1D                   q.
        acall   L131D                   ;1329   71 1D                   q.
        acall   L131D                   ;132B   71 1D                   q.
        acall   L131D                   ;132D   71 1D                   q.
        acall   L131D                   ;132F   71 1D                   q.
        ret                             ;1331   22                      "
;
;
L1332:  push    006h                    ;1332   C0 06                   ..
        mov     r6,#019h                ;1334   7E 19                   ~.
;
L1336:  acall   L131D                   ;1336   71 1D                   q.
        djnz    r6,L1336                ;1338   DE FC                   ..
        pop     006h                    ;133A   D0 06                   ..
        ret                             ;133C   22                      "
;
;
L133D:  push    005h                    ;133D   C0 05                   ..
        push    acc                     ;133F   C0 E0                   ..
        push    b                       ;1341   C0 F0                   ..
        clr     c                       ;1343   C3                      .
        mov     a,009h                  ;1344   E5 09                   ..
        mov     b,00ah                  ;1346   85 0A F0                ...
        div     ab                      ;1349   84                      .
        mov     009h,a                  ;134A   F5 09                   ..
        mov     a,#000h                 ;134C   74 00                   t.
        push    acc                     ;134E   C0 E0                   ..
        mov     r5,#008h                ;1350   7D 08                   }.
;
L1352:  mov     a,008h                  ;1352   E5 08                   ..
        rlc     a                       ;1354   33                      3
        mov     008h,a                  ;1355   F5 08                   ..
        mov     a,b                     ;1357   E5 F0                   ..
        rlc     a                       ;1359   33                      3
        mov     b,00ah                  ;135A   85 0A F0                ...
        jc      L1365                   ;135D   40 06                   @.
        div     ab                      ;135F   84                      .
        jnz     L136A                   ;1360   70 08                   p.
        clr     c                       ;1362   C3                      .
        sjmp    L136B                   ;1363   80 06                   ..
;
L1365:  clr     c                       ;1365   C3                      .
        subb    a,b                     ;1366   95 F0                   ..
        mov     b,a                     ;1368   F5 F0                   ..
;
L136A:  setb    c                       ;136A   D3                      .
;
L136B:  pop     acc                     ;136B   D0 E0                   ..
        rlc     a                       ;136D   33                      3
        push    acc                     ;136E   C0 E0                   ..
        djnz    r5,L1352                ;1370   DD E0                   ..
        pop     acc                     ;1372   D0 E0                   ..
        mov     008h,a                  ;1374   F5 08                   ..
        mov     00bh,b                  ;1376   85 F0 0B                ...
        pop     b                       ;1379   D0 F0                   ..
        pop     acc                     ;137B   D0 E0                   ..
        pop     005h                    ;137D   D0 05                   ..
        ret                             ;137F   22                      "
;
;
L1380:  mov     dptr,#LFF13             ;1380   90 FF 13                ...
        mov     a,#000h                 ;1383   74 00                   t.
        movx    @dptr,a                 ;1385   F0                      .
        inc     dptr                    ;1386   A3                      .
        mov     a,#000h                 ;1387   74 00                   t.
        movx    @dptr,a                 ;1389   F0                      .
        ret                             ;138A   22                      "
;
;
L138B:  mov     dptr,#LFF13             ;138B   90 FF 13                ...
        mov     a,049h                  ;138E   E5 49                   .I
        movx    @dptr,a                 ;1390   F0                      .
        mov     dptr,#LFF14             ;1391   90 FF 14                ...
        mov     a,048h                  ;1394   E5 48                   .H
        movx    @dptr,a                 ;1396   F0                      .
        ret                             ;1397   22                      "
;
;
L1398:  mov     dptr,#LFF93             ;1398   90 FF 93                ...
        movx    a,@dptr                 ;139B   E0                      .
        mov     049h,a                  ;139C   F5 49                   .I
        mov     dptr,#LFF94             ;139E   90 FF 94                ...
        movx    a,@dptr                 ;13A1   E0                      .
        mov     048h,a                  ;13A2   F5 48                   .H
        ret                             ;13A4   22                      "
;
;
L13A5:  mov     dptr,#LFF11             ;13A5   90 FF 11                ...
;
L13A8:  movx    @dptr,a                 ;13A8   F0                      .
        ret                             ;13A9   22                      "
;
;
L13AA:  clr     ea                      ;13AA   C2 AF                   ..
        push    acc                     ;13AC   C0 E0                   ..
        pop     acc                     ;13AE   D0 E0                   ..
        setb    ea                      ;13B0   D2 AF                   ..
        reti                            ;13B2   32                      2
;
;
L13B3:  clr     ea                      ;13B3   C2 AF                   ..
        push    acc                     ;13B5   C0 E0                   ..
        push    psw                     ;13B7   C0 D0                   ..
        push    dpl                     ;13B9   C0 82                   ..
        push    dph                     ;13BB   C0 83                   ..
        mov     dptr,#LFF74             ;13BD   90 FF 74                ..t
        movx    a,@dptr                 ;13C0   E0                      .
        mov     02eh,a                  ;13C1   F5 2E                   ..
        inc     dptr                    ;13C3   A3                      .
        movx    a,@dptr                 ;13C4   E0                      .
        orl     02eh,a                  ;13C5   42 2E                   B.
        jb      077h,L13CC              ;13C7   20 77 02                 w.
        setb    005h                    ;13CA   D2 05                   ..
;
L13CC:  jb      073h,L13D6              ;13CC   20 73 07                 s.
        acall   L1332                   ;13CF   71 32                   q2
        lcall   L0D32                   ;13D1   12 0D 32                ..2
        setb    000h                    ;13D4   D2 00                   ..
;
L13D6:  jb      071h,L13F7              ;13D6   20 71 1E                 q.
        clr     c                       ;13D9   C3                      .
        mov     a,041h                  ;13DA   E5 41                   .A
        subb    a,#001h                 ;13DC   94 01                   ..
        mov     041h,a                  ;13DE   F5 41                   .A
;
L13E0:  mov     a,040h                  ;13E0   E5 40                   .@
        subb    a,#000h                 ;13E2   94 00                   ..
        mov     040h,a                  ;13E4   F5 40                   .@
        mov     dptr,#LFF06             ;13E6   90 FF 06                ...
        mov     a,#0ffh                 ;13E9   74 FF                   t.
        movx    @dptr,a                 ;13EB   F0                      .
        mov     a,040h                  ;13EC   E5 40                   .@
        jnz     L13F7                   ;13EE   70 07                   p.
        mov     a,041h                  ;13F0   E5 41                   .A
        jnz     L13F7                   ;13F2   70 03                   p.
        lcall   L0D39                   ;13F4   12 0D 39                ..9
;
L13F7:  jb      075h,L13FC              ;13F7   20 75 02                 u.
        setb    00ah                    ;13FA   D2 0A                   ..
;
L13FC:  jb      076h,L1421              ;13FC   20 76 22                 v"
        setb    009h                    ;13FF   D2 09                   ..
        mov     dptr,#LFF2B             ;1401   90 FF 2B                ..+
        movx    a,@dptr                 ;1404   E0                      .
        cjne    a,#0ffh,L1421           ;1405   B4 FF 19                ...
        mov     dptr,#LFF28             ;1408   90 FF 28                ..(
        movx    a,@dptr                 ;140B   E0                      .
        cjne    a,#030h,L1411           ;140C   B4 30 02                .0.
        sjmp    L1421                   ;140F   80 10                   ..
;
L1411:  mov     02eh,#0ffh              ;1411   75 2E FF                u..
        mov     sp,#050h                ;1414   75 81 50                u.P
        mov     dptr,#L02AC             ;1417   90 02 AC                ...
        push    dpl                     ;141A   C0 82                   ..
        push    dph                     ;141C   C0 83                   ..
        setb    ea                      ;141E   D2 AF                   ..
        reti                            ;1420   32                      2
;
;
L1421:  jb      070h,L1424              ;1421   20 70 00                 p.
;
L1424:  mov     02eh,#0ffh              ;1424   75 2E FF                u..
        pop     dph                     ;1427   D0 83                   ..
        pop     dpl                     ;1429   D0 82                   ..
        pop     psw                     ;142B   D0 D0                   ..
        pop     acc                     ;142D   D0 E0                   ..
        setb    ea                      ;142F   D2 AF                   ..
        reti                            ;1431   32                      2
;
;
L1432:  mov     a,047h                  ;1432   E5 47                   .G
        cjne    a,#011h,L1437           ;1434   B4 11 00                ...
;
L1437:  jc      L143A                   ;1437   40 01                   @.
        ret                             ;1439   22                      "
;
;
L143A:  push    007h                    ;143A   C0 07                   ..
        push    006h                    ;143C   C0 06                   ..
        push    b                       ;143E   C0 F0                   ..
        mov     dptr,#LFF08             ;1440   90 FF 08                ...
        movx    a,@dptr                 ;1443   E0                      .
        clr     acc.7                   ;1444   C2 E7                   ..
        movx    @dptr,a                 ;1446   F0                      .
        mov     r7,#080h                ;1447   7F 80                   ..
        mov     r6,#000h                ;1449   7E 00                   ~.
;
L144B:  mov     a,r6                    ;144B   EE                      .
        mov     dptr,#LFF8B             ;144C   90 FF 8B                ...
        movx    @dptr,a                 ;144F   F0                      .
        mov     dptr,#L0030             ;1450   90 00 30                ..0
        movc    a,@a+dptr               ;1453   93                      .
        mov     b,a                     ;1454   F5 F0                   ..
        mov     a,047h                  ;1456   E5 47                   .G
        add     a,#010h                 ;1458   24 10                   $.
        mul     ab                      ;145A   A4                      .
        xch     a,b                     ;145B   C5 F0                   ..
        cjne    a,#010h,L1460           ;145D   B4 10 00                ...
;
L1460:  jnc     L146C                   ;1460   50 0A                   P.
        anl     a,#00fh                 ;1462   54 0F                   T.
        anl     b,#0f0h                 ;1464   53 F0 F0                S..
        orl     a,b                     ;1467   45 F0                   E.
        swap    a                       ;1469   C4                      .
        sjmp    L146E                   ;146A   80 02                   ..
;
L146C:  mov     a,#0ffh                 ;146C   74 FF                   t.
;
L146E:  mov     dptr,#LFF8C             ;146E   90 FF 8C                ...
        movx    @dptr,a                 ;1471   F0                      .
        inc     r6                      ;1472   0E                      .
        djnz    r7,L144B                ;1473   DF D6                   ..
        mov     dptr,#LFF08             ;1475   90 FF 08                ...
        movx    a,@dptr                 ;1478   E0                      .
        setb    acc.7                   ;1479   D2 E7                   ..
        movx    @dptr,a                 ;147B   F0                      .
        pop     b                       ;147C   D0 F0                   ..
        pop     006h                    ;147E   D0 06                   ..
        pop     007h                    ;1480   D0 07                   ..
        ret                             ;1482   22                      "
;
;
L1483:  reti                            ;1483   32                      2
;
;
L1484:  orl     00ah,a                  ;1484   42 0A                   B.
        mov     r7,a                    ;1486   FF                      .
        mov     @r0,#00bh               ;1487   76 0B                   v.
        movx    @dptr,a                 ;1489   F0                      .
        jc      L1490                   ;148A   40 04                   @.
        orl     029h,a                  ;148C   42 29                   B)
        mov     r6,a                    ;148E   FE                      .
        nop                             ;148F   00                      .
;
L1490:  nop                             ;1490   00                      .
        nop                             ;1491   00                      .
        nop                             ;1492   00                      .
        nop                             ;1493   00                      .
;
L1494:  nop                             ;1494   00                      .
        nop                             ;1495   00                      .
        ajmp    L1080                   ;1496   01 80                   ..
;
        ljmp    L8003                   ;1498   02 80 03                ...
;
        jz      L14A3                   ;149B   60 06                   `.
        jz      L14A6                   ;149D   60 07                   `.
        nop                             ;149F   00                      .
        inc     r4                      ;14A0   0C                      .
        ret                             ;14A1   22                      "
;
        inc     r5                      ;14A2   0D                      .
;
L14A3:  ret                             ;14A3   22                      "
;
        acall   L1001                   ;14A4   11 01                   ..
;
L14A6:  lcall   L2413                   ;14A6   12 24 13                .$.
        ajmp    L1115                   ;14A9   21 15                   !.
;
        nop                             ;14AB   00                      .
        dec     @r0                     ;14AC   16                      .
        rr      a                       ;14AD   03                      .
        dec     @r1                     ;14AE   17                      .
        add     a,r7                    ;14AF   2F                      /
        dec     r0                      ;14B0   18                      .
        xch     a,r7                    ;14B1   CF                      .
        dec     r1                      ;14B2   19                      .
        inc     @r0                     ;14B3   06                      .
        dec     r2                      ;14B4   1A                      .
        mov     01bh,a                  ;14B5   F5 1B                   ..
        nop                             ;14B7   00                      .
        jb      010h,L14DC              ;14B8   20 10 21                 .!
        sjmp    L14DF                   ;14BB   80 22                   ."
        sjmp    L14E2                   ;14BD   80 23                   .#
        nop                             ;14BF   00                      .
        add     a,@r0                   ;14C0   26                      &
        mov     c,027h                  ;14C1   A2 27                   .'
        mov     a,r2                    ;14C3   EA                      .
        add     a,r1                    ;14C4   29                      )
        nop                             ;14C5   00                      .
        add     a,r2                    ;14C6   2A                      *
        anl     c,/02bh                 ;14C7   B0 2B                   .+
        inc     r0                      ;14C9   08                      .
        add     a,r4                    ;14CA   2C                      ,
        nop                             ;14CB   00                      .
        add     a,r5                    ;14CC   2D                      -
        anl     a,02eh                  ;14CD   55 2E                   U.
        sjmp    L1500                   ;14CF   80 2F                   ./
        orl     a,#060h                 ;14D1   44 60                   D`
        add     a,@r1                   ;14D3   27                      '
        ajmp    L1302                   ;14D4   61 02                   a.
;
        xrl     05fh,a                  ;14D6   62 5F                   b_
        xrl     0cfh,#064h              ;14D8   63 CF 64                c.d
        anl     a,@r1                   ;14DB   57                      W
;
L14DC:  xrl     a,dph                   ;14DC   65 83                   e.
        xrl     a,@r0                   ;14DE   66                      f
;
L14DF:  anl     a,067h                  ;14DF   55 67                   Ug
        mov     068h,c                  ;14E1   92 68                   .h
        mov     r7,069h                 ;14E3   AF 69                   .i
        mov     @r0,#06ah               ;14E5   76 6A                   vj
        ret                             ;14E7   22                      "
;
        xrl     a,r3                    ;14E8   6B                      k
        nop                             ;14E9   00                      .
        xrl     a,r4                    ;14EA   6C                      l
        inc     r0                      ;14EB   08                      .
        xrl     a,r5                    ;14EC   6D                      m
        orl     a,#06eh                 ;14ED   44 6E                   Dn
        sjmp    L1560                   ;14EF   80 6F                   .o
        inc     r5                      ;14F1   0D                      .
        jnz     L147F                   ;14F2   70 8B                   p.
        acall   L1380                   ;14F4   71 80                   q.
        orl     c,014h                  ;14F6   72 14                   r.
        jmp     @a+dptr                 ;14F8   73                      s
;
        anl     a,#074h                 ;14F9   54 74                   Tt
        nop                             ;14FB   00                      .
        mov     08eh,#076h              ;14FC   75 8E 76                u.v
        nop                             ;14FF   00                      .
;
L1500:  mov     @r1,#0ffh               ;1500   77 FF                   w.
        mov     r0,#080h                ;1502   78 80                   x.
        mov     r1,#080h                ;1504   79 80                   y.
        mov     r2,#080h                ;1506   7A 80                   z.
        mov     r3,#0e2h                ;1508   7B E2                   {.
        mov     r4,#000h                ;150A   7C 00                   |.
        dec     a                       ;150C   14                      .
        div     ab                      ;150D   84                      .
        add     a,r0                    ;150E   28                      (
        jb      024h,L154C              ;150F   20 24 3A                 $:
        add     a,060h                  ;1512   25 60                   %`
;
L1514:  add     a,r5                    ;1514   2D                      -
        subb    a,067h                  ;1515   95 67                   .g
        mov     074h,c                  ;1517   92 74                   .t
        nop                             ;1519   00                      .
        add     a,r3                    ;151A   2B                      +
        orl     a,r4                    ;151B   4C                      L
        mov     r7,a                    ;151C   FF                      .
;
L151D:  rr      a                       ;151D   03                      .
        sjmp    L1540                   ;151E   80 20                   . 
        jbc     014h,L14A7              ;1520   10 14 84                ...
        lcall   L2028                   ;1523   12 20 28                . (
        jb      024h,L1573              ;1526   20 24 4A                 $J
        add     a,060h                  ;1529   25 60                   %`
        add     a,r5                    ;152B   2D                      -
        dec     067h                    ;152C   15 67                   .g
        mov     069h,c                  ;152E   92 69                   .i
        mov     @r0,#074h               ;1530   76 74                   vt
        nop                             ;1532   00                      .
        inc     @r0                     ;1533   06                      .
        jz      L1548                   ;1534   60 12                   `.
        add     a,#015h                 ;1536   24 15                   $.
        ajmp    L1217                   ;1538   41 17                   A.
;
        add     a,r7                    ;153A   2F                      /
        dec     r1                      ;153B   19                      .
        inc     @r0                     ;153C   06                      .
        mov     r7,a                    ;153D   FF                      .
;
L153E:  rr      a                       ;153E   03                      .
        orl     c,/020h                 ;153F   A0 20                   . 
        nop                             ;1541   00                      .
        dec     a                       ;1542   14                      .
        div     ab                      ;1543   84                      .
        lcall   L2028                   ;1544   12 20 28                . (
        ajmp    L1124                   ;1547   21 24                   !$
;
        orl     a,r2                    ;1549   4A                      J
        add     a,060h                  ;154A   25 60                   %`
;
L154C:  add     a,r5                    ;154C   2D                      -
        inc     067h                    ;154D   05 67                   .g
        mov     069h,c                  ;154F   92 69                   .i
        mov     @r0,#074h               ;1551   76 74                   vt
        jz      L155B                   ;1553   60 06                   `.
        mov     dptr,#L1224             ;1555   90 12 24                ..$
        dec     000h                    ;1558   15 00                   ..
        dec     @r1                     ;155A   17                      .
;
L155B:  add     a,r7                    ;155B   2F                      /
        dec     r1                      ;155C   19                      .
;
L155D:  inc     @r0                     ;155D   06                      .
        mov     r7,a                    ;155E   FF                      .
;
L155F:  rr      a                       ;155F   03                      .
;
L1560:  sjmp    L1582                   ;1560   80 20                   . 
        jbc     014h,L1509              ;1562   10 14 A4                ...
        lcall   L3028                   ;1565   12 30 28                .0(
        nop                             ;1568   00                      .
        add     a,#030h                 ;1569   24 30                   $0
        add     a,030h                  ;156B   25 30                   %0
        add     a,r5                    ;156D   2D                      -
        anl     a,067h                  ;156E   55 67                   Ug
        cpl     069h                    ;1570   B2 69                   .i
        mov     @r0,#074h               ;1572   76 74                   vt
        jb      006h,L15D7              ;1574   20 06 60                 .`
        lcall   L3415                   ;1577   12 34 15                .4.
        nop                             ;157A   00                      .
        dec     @r1                     ;157B   17                      .
;
L157C:  add     a,r7                    ;157C   2F                      /
        dec     r1                      ;157D   19                      .
        inc     @r0                     ;157E   06                      .
        mov     r7,a                    ;157F   FF                      .
;
L1580:  rr      a                       ;1580   03                      .
        orl     c,/020h                 ;1581   A0 20                   . 
        nop                             ;1583   00                      .
        dec     a                       ;1584   14                      .
        mul     ab                      ;1585   A4                      .
        lcall   L3028                   ;1586   12 30 28                .0(
        ajmp    L1024                   ;1589   01 24                   .$
;
        jnb     025h,L15BE              ;158B   30 25 30                0%0
        add     a,r5                    ;158E   2D                      -
        orl     a,067h                  ;158F   45 67                   Eg
        cpl     069h                    ;1591   B2 69                   .i
        mov     @r0,#074h               ;1593   76 74                   vt
        jz      L159D                   ;1595   60 06                   `.
        mov     dptr,#L1234             ;1597   90 12 34                ..4
        dec     000h                    ;159A   15 00                   ..
        dec     @r1                     ;159C   17                      .
;
L159D:  add     a,r7                    ;159D   2F                      /
        dec     r1                      ;159E   19                      .
        inc     @r0                     ;159F   06                      .
        mov     r7,a                    ;15A0   FF                      .
;
L15A1:  lcall   L8003                   ;15A1   12 80 03                ...
        mul     ab                      ;15A4   A4                      .
        inc     a                       ;15A5   04                      .
        jnb     005h,L1531              ;15A6   30 05 88                0..
        inc     @r0                     ;15A9   06                      .
        jz      L15BD                   ;15AA   60 11                   `.
        ajmp    L1012                   ;15AC   01 12                   ..
;
        dec     013h                    ;15AE   15 13                   ..
        inc     dptr                    ;15B0   A3                      .
        dec     a                       ;15B1   14                      .
        dec     a                       ;15B2   14                      .
        dec     014h                    ;15B3   15 14                   ..
        dec     @r0                     ;15B5   16                      .
        nop                             ;15B6   00                      .
        dec     r6                      ;15B7   1E                      .
        nop                             ;15B8   00                      .
        dec     r7                      ;15B9   1F                      .
        jc      L15DC                   ;15BA   40 20                   @ 
        pop     023h                    ;15BC   D0 23                   .#
;
L15BE:  dec     r6                      ;15BE   1E                      .
        add     a,#0a0h                 ;15BF   24 A0                   $.
        add     a,p0                    ;15C1   25 80                   %.
        add     a,@r0                   ;15C3   26                      &
        reti                            ;15C4   32                      2
;
        add     a,@r1                   ;15C5   27                      '
        movx    a,@r0                   ;15C6   E2                      .
        add     a,r0                    ;15C7   28                      (
        jb      02ah,L157C              ;15C8   20 2A B1                 *.
        add     a,r3                    ;15CB   2B                      +
        xrl     a,r0                    ;15CC   68                      h
        add     a,r5                    ;15CD   2D                      -
        inc     02fh                    ;15CE   05 2F                   ./
        subb    a,r5                    ;15D0   9D                      .
        jnb     000h,L1605              ;15D1   30 00 31                0.1
        swap    a                       ;15D4   C4                      .
        jz      L155D                   ;15D5   60 86                   `.
;
L15D7:  ajmp    L13E0                   ;15D7   61 E0                   a.
;
        xrl     tcon,a                  ;15D9   62 88                   b.
        xrl     011h,#064h              ;15DB   63 11 64                c.d
        mov     065h,r1                 ;15DE   89 65                   .e
        nop                             ;15E0   00                      .
        xrl     a,@r1                   ;15E1   67                      g
;
L15E2:  subb    a,#068h                 ;15E2   94 68                   .h
        mov     r2,#069h                ;15E4   7A 69                   zi
        inc     r0                      ;15E6   08                      .
        xrl     a,r4                    ;15E7   6C                      l
        acall   L106D                   ;15E8   11 6D                   .m
        rlc     a                       ;15EA   33                      3
        xrl     a,r6                    ;15EB   6E                      n
        ret                             ;15EC   22                      "
;
        xrl     a,r7                    ;15ED   6F                      o
        nop                             ;15EE   00                      .
        mov     a,#020h                 ;15EF   74 20                   t 
        mov     00eh,#077h              ;15F1   75 0E 77                u.w
        swap    a                       ;15F4   C4                      .
        mov     r7,a                    ;15F5   FF                      .
;
L15F6:  add     a,@r0                   ;15F6   26                      &
        reti                            ;15F7   32                      2
;
        mov     a,#020h                 ;15F8   74 20                   t 
        lcall   L1514                   ;15FA   12 15 14                ...
        dec     a                       ;15FD   14                      .
        dec     054h                    ;15FE   15 54                   .T
        dec     @r1                     ;1600   17                      .
        dec     r2                      ;1601   1A                      .
        dec     r0                      ;1602   18                      .
        cjne    r2,#019h,L1609          ;1603   BA 19 03                ...
        mov     r7,a                    ;1606   FF                      .
;
L1607:  add     a,@r0                   ;1607   26                      &
        clr     074h                    ;1608   C2 74                   .t
        jz      L161E                   ;160A   60 12                   `.
        dec     014h                    ;160C   15 14                   ..
        dec     a                       ;160E   14                      .
        dec     054h                    ;160F   15 54                   .T
        dec     @r1                     ;1611   17                      .
        dec     r2                      ;1612   1A                      .
        dec     r0                      ;1613   18                      .
        cjne    r2,#019h,L161A          ;1614   BA 19 03                ...
        mov     r7,a                    ;1617   FF                      .
;
L1618:  add     a,@r0                   ;1618   26                      &
        clr     074h                    ;1619   C2 74                   .t
        jb      012h,L1623              ;161B   20 12 05                 ..
;
L161E:  dec     a                       ;161E   14                      .
        addc    a,#015h                 ;161F   34 15                   4.
        dec     a                       ;1621   14                      .
        dec     @r1                     ;1622   17                      .
;
L1623:  dec     r3                      ;1623   1B                      .
        dec     r0                      ;1624   18                      .
        cjne    r3,#019h,L162B          ;1625   BB 19 03                ...
        mov     r7,a                    ;1628   FF                      .
;
L1629:  add     a,@r0                   ;1629   26                      &
        clr     074h                    ;162A   C2 74                   .t
        jz      L1640                   ;162C   60 12                   `.
        inc     014h                    ;162E   05 14                   ..
;
L1630:  addc    a,#015h                 ;1630   34 15                   4.
        dec     a                       ;1632   14                      .
        dec     @r1                     ;1633   17                      .
        dec     r3                      ;1634   1B                      .
        dec     r0                      ;1635   18                      .
        cjne    r3,#019h,L163C          ;1636   BB 19 03                ...
        mov     r7,a                    ;1639   FF                      .
;
L163A:  dec     @r0                     ;163A   16                      .
        nop                             ;163B   00                      .
;
L163C:  dec     r6                      ;163C   1E                      .
        nop                             ;163D   00                      .
        mov     r7,a                    ;163E   FF                      .
        nop                             ;163F   00                      .
;
L1640:  mov     r7,a                    ;1640   FF                      .
        nop                             ;1641   00                      .
;
L1642:  da      a                       ;1642   D4                      .
        mov     ip,#097h                ;1643   75 B8 97                u..
        reti                            ;1646   32                      2
;
        dec     r0                      ;1647   18                      .
        cpl     it0                     ;1648   B2 88                   ..
        inc     a                       ;164A   04                      .
        mul     ab                      ;164B   A4                      .
        orl     011h,#01bh              ;164C   43 11 1B                C..
        jnz     L1642                   ;164F   70 F1                   p.
        nop                             ;1651   00                      .
        cjne    r4,#040h,L1688          ;1652   BC 40 33                .@3
        rlc     a                       ;1655   33                      3
        ajmp    L13A8                   ;1656   61 A8                   a.
;
        djnz    r3,L15E2                ;1658   DB 88                   ..
        addc    a,r5                    ;165A   3D                      =
        orl     a,r6                    ;165B   4E                      N
        mov     @r0,#085h               ;165C   76 85                   v.
        movx    a,@r1                   ;165E   E3                      .
        dec     @r0                     ;165F   16                      .
        mov     r7,a                    ;1660   FF                      .
        mov     r7,a                    ;1661   FF                      .
        mov     r7,a                    ;1662   FF                      .
        mov     r7,a                    ;1663   FF                      .
        mov     r7,a                    ;1664   FF                      .
        mov     r7,a                    ;1665   FF                      .
        mov     r7,a                    ;1666   FF                      .
        mov     r7,a                    ;1667   FF                      .
        mov     r7,a                    ;1668   FF                      .
        mov     r7,a                    ;1669   FF                      .
        mov     r7,a                    ;166A   FF                      .
        mov     r7,a                    ;166B   FF                      .
        mov     r7,a                    ;166C   FF                      .
        mov     r7,a                    ;166D   FF                      .
        mov     r7,a                    ;166E   FF                      .
        mov     r7,a                    ;166F   FF                      .
        mov     r7,a                    ;1670   FF                      .
        mov     r7,a                    ;1671   FF                      .
        mov     r7,a                    ;1672   FF                      .
        mov     r7,a                    ;1673   FF                      .
        mov     r7,a                    ;1674   FF                      .
        mov     r7,a                    ;1675   FF                      .
        mov     r7,a                    ;1676   FF                      .
        mov     r7,a                    ;1677   FF                      .
        mov     r7,a                    ;1678   FF                      .
        mov     r7,a                    ;1679   FF                      .
        mov     r7,a                    ;167A   FF                      .
        mov     r7,a                    ;167B   FF                      .
        mov     r7,a                    ;167C   FF                      .
        mov     r7,a                    ;167D   FF                      .
        mov     r7,a                    ;167E   FF                      .
        mov     r7,a                    ;167F   FF                      .
        mov     r7,a                    ;1680   FF                      .
        mov     r7,a                    ;1681   FF                      .
        mov     r7,a                    ;1682   FF                      .
        mov     r7,a                    ;1683   FF                      .
        mov     r7,a                    ;1684   FF                      .
        mov     r7,a                    ;1685   FF                      .
        mov     r7,a                    ;1686   FF                      .
        mov     r7,a                    ;1687   FF                      .
;
L1688:  mov     r7,a                    ;1688   FF                      .
        mov     r7,a                    ;1689   FF                      .
        mov     r7,a                    ;168A   FF                      .
        mov     r7,a                    ;168B   FF                      .
        mov     r7,a                    ;168C   FF                      .
        mov     r7,a                    ;168D   FF                      .
        mov     r7,a                    ;168E   FF                      .
        mov     r7,a                    ;168F   FF                      .
        mov     r7,a                    ;1690   FF                      .
        mov     r7,a                    ;1691   FF                      .
        mov     r7,a                    ;1692   FF                      .
        mov     r7,a                    ;1693   FF                      .
        mov     r7,a                    ;1694   FF                      .
        mov     r7,a                    ;1695   FF                      .
        mov     r7,a                    ;1696   FF                      .
        mov     r7,a                    ;1697   FF                      .
        mov     r7,a                    ;1698   FF                      .
        mov     r7,a                    ;1699   FF                      .
        mov     r7,a                    ;169A   FF                      .
        mov     r7,a                    ;169B   FF                      .
        mov     r7,a                    ;169C   FF                      .
        mov     r7,a                    ;169D   FF                      .
        mov     r7,a                    ;169E   FF                      .
        mov     r7,a                    ;169F   FF                      .
        mov     r7,a                    ;16A0   FF                      .
        mov     r7,a                    ;16A1   FF                      .
        mov     r7,a                    ;16A2   FF                      .
        mov     r7,a                    ;16A3   FF                      .
        mov     r7,a                    ;16A4   FF                      .
        mov     r7,a                    ;16A5   FF                      .
        mov     r7,a                    ;16A6   FF                      .
        mov     r7,a                    ;16A7   FF                      .
        mov     r7,a                    ;16A8   FF                      .
        mov     r7,a                    ;16A9   FF                      .
        mov     r7,a                    ;16AA   FF                      .
        mov     r7,a                    ;16AB   FF                      .
        mov     r7,a                    ;16AC   FF                      .
        mov     r7,a                    ;16AD   FF                      .
        mov     r7,a                    ;16AE   FF                      .
        mov     r7,a                    ;16AF   FF                      .
        mov     r7,a                    ;16B0   FF                      .
        mov     r7,a                    ;16B1   FF                      .
        mov     r7,a                    ;16B2   FF                      .
        mov     r7,a                    ;16B3   FF                      .
        mov     r7,a                    ;16B4   FF                      .
        mov     r7,a                    ;16B5   FF                      .
        mov     r7,a                    ;16B6   FF                      .
        mov     r7,a                    ;16B7   FF                      .
        mov     r7,a                    ;16B8   FF                      .
        mov     r7,a                    ;16B9   FF                      .
        mov     r7,a                    ;16BA   FF                      .
        mov     r7,a                    ;16BB   FF                      .
        mov     r7,a                    ;16BC   FF                      .
        mov     r7,a                    ;16BD   FF                      .
        mov     r7,a                    ;16BE   FF                      .
        mov     r7,a                    ;16BF   FF                      .
        mov     r7,a                    ;16C0   FF                      .
        mov     r7,a                    ;16C1   FF                      .
        mov     r7,a                    ;16C2   FF                      .
        mov     r7,a                    ;16C3   FF                      .
        mov     r7,a                    ;16C4   FF                      .
        mov     r7,a                    ;16C5   FF                      .
        mov     r7,a                    ;16C6   FF                      .
        mov     r7,a                    ;16C7   FF                      .
        mov     r7,a                    ;16C8   FF                      .
        mov     r7,a                    ;16C9   FF                      .
        mov     r7,a                    ;16CA   FF                      .
        mov     r7,a                    ;16CB   FF                      .
        mov     r7,a                    ;16CC   FF                      .
        mov     r7,a                    ;16CD   FF                      .
        mov     r7,a                    ;16CE   FF                      .
        mov     r7,a                    ;16CF   FF                      .
        mov     r7,a                    ;16D0   FF                      .
        mov     r7,a                    ;16D1   FF                      .
        mov     r7,a                    ;16D2   FF                      .
        mov     r7,a                    ;16D3   FF                      .
        mov     r7,a                    ;16D4   FF                      .
        mov     r7,a                    ;16D5   FF                      .
        mov     r7,a                    ;16D6   FF                      .
        mov     r7,a                    ;16D7   FF                      .
        mov     r7,a                    ;16D8   FF                      .
        mov     r7,a                    ;16D9   FF                      .
        mov     r7,a                    ;16DA   FF                      .
        mov     r7,a                    ;16DB   FF                      .
        mov     r7,a                    ;16DC   FF                      .
        mov     r7,a                    ;16DD   FF                      .
        mov     r7,a                    ;16DE   FF                      .
        mov     r7,a                    ;16DF   FF                      .
        mov     r7,a                    ;16E0   FF                      .
        mov     r7,a                    ;16E1   FF                      .
        mov     r7,a                    ;16E2   FF                      .
        mov     r7,a                    ;16E3   FF                      .
        mov     r7,a                    ;16E4   FF                      .
        mov     r7,a                    ;16E5   FF                      .
        mov     r7,a                    ;16E6   FF                      .
        mov     r7,a                    ;16E7   FF                      .
        mov     r7,a                    ;16E8   FF                      .
        mov     r7,a                    ;16E9   FF                      .
        mov     r7,a                    ;16EA   FF                      .
        mov     r7,a                    ;16EB   FF                      .
        mov     r7,a                    ;16EC   FF                      .
        mov     r7,a                    ;16ED   FF                      .
        mov     r7,a                    ;16EE   FF                      .
        mov     r7,a                    ;16EF   FF                      .
        mov     r7,a                    ;16F0   FF                      .
        mov     r7,a                    ;16F1   FF                      .
        mov     r7,a                    ;16F2   FF                      .
        mov     r7,a                    ;16F3   FF                      .
        mov     r7,a                    ;16F4   FF                      .
        mov     r7,a                    ;16F5   FF                      .
        mov     r7,a                    ;16F6   FF                      .
        mov     r7,a                    ;16F7   FF                      .
        mov     r7,a                    ;16F8   FF                      .
        mov     r7,a                    ;16F9   FF                      .
        mov     r7,a                    ;16FA   FF                      .
        mov     r7,a                    ;16FB   FF                      .
        mov     r7,a                    ;16FC   FF                      .
        mov     r7,a                    ;16FD   FF                      .
        mov     r7,a                    ;16FE   FF                      .
        mov     r7,a                    ;16FF   FF                      .
        mov     r7,a                    ;1700   FF                      .
        mov     r7,a                    ;1701   FF                      .
        mov     r7,a                    ;1702   FF                      .
        mov     r7,a                    ;1703   FF                      .
        mov     r7,a                    ;1704   FF                      .
        mov     r7,a                    ;1705   FF                      .
        mov     r7,a                    ;1706   FF                      .
        mov     r7,a                    ;1707   FF                      .
        mov     r7,a                    ;1708   FF                      .
        mov     r7,a                    ;1709   FF                      .
        mov     r7,a                    ;170A   FF                      .
        mov     r7,a                    ;170B   FF                      .
        mov     r7,a                    ;170C   FF                      .
        mov     r7,a                    ;170D   FF                      .
        mov     r7,a                    ;170E   FF                      .
        mov     r7,a                    ;170F   FF                      .
        mov     r7,a                    ;1710   FF                      .
        mov     r7,a                    ;1711   FF                      .
        mov     r7,a                    ;1712   FF                      .
        mov     r7,a                    ;1713   FF                      .
        mov     r7,a                    ;1714   FF                      .
        mov     r7,a                    ;1715   FF                      .
        mov     r7,a                    ;1716   FF                      .
        mov     r7,a                    ;1717   FF                      .
        mov     r7,a                    ;1718   FF                      .
        mov     r7,a                    ;1719   FF                      .
        mov     r7,a                    ;171A   FF                      .
        mov     r7,a                    ;171B   FF                      .
        mov     r7,a                    ;171C   FF                      .
        mov     r7,a                    ;171D   FF                      .
        mov     r7,a                    ;171E   FF                      .
        mov     r7,a                    ;171F   FF                      .
        mov     r7,a                    ;1720   FF                      .
        mov     r7,a                    ;1721   FF                      .
        mov     r7,a                    ;1722   FF                      .
        mov     r7,a                    ;1723   FF                      .
        mov     r7,a                    ;1724   FF                      .
        mov     r7,a                    ;1725   FF                      .
        mov     r7,a                    ;1726   FF                      .
        mov     r7,a                    ;1727   FF                      .
        mov     r7,a                    ;1728   FF                      .
        mov     r7,a                    ;1729   FF                      .
        mov     r7,a                    ;172A   FF                      .
        mov     r7,a                    ;172B   FF                      .
        mov     r7,a                    ;172C   FF                      .
        mov     r7,a                    ;172D   FF                      .
        mov     r7,a                    ;172E   FF                      .
        mov     r7,a                    ;172F   FF                      .
        mov     r7,a                    ;1730   FF                      .
        mov     r7,a                    ;1731   FF                      .
        mov     r7,a                    ;1732   FF                      .
        mov     r7,a                    ;1733   FF                      .
        mov     r7,a                    ;1734   FF                      .
        mov     r7,a                    ;1735   FF                      .
        mov     r7,a                    ;1736   FF                      .
        mov     r7,a                    ;1737   FF                      .
        mov     r7,a                    ;1738   FF                      .
        mov     r7,a                    ;1739   FF                      .
        mov     r7,a                    ;173A   FF                      .
        mov     r7,a                    ;173B   FF                      .
        mov     r7,a                    ;173C   FF                      .
        mov     r7,a                    ;173D   FF                      .
        mov     r7,a                    ;173E   FF                      .
        mov     r7,a                    ;173F   FF                      .
        mov     r7,a                    ;1740   FF                      .
        mov     r7,a                    ;1741   FF                      .
        mov     r7,a                    ;1742   FF                      .
        mov     r7,a                    ;1743   FF                      .
        mov     r7,a                    ;1744   FF                      .
        mov     r7,a                    ;1745   FF                      .
        mov     r7,a                    ;1746   FF                      .
        mov     r7,a                    ;1747   FF                      .
        mov     r7,a                    ;1748   FF                      .
        mov     r7,a                    ;1749   FF                      .
        mov     r7,a                    ;174A   FF                      .
        mov     r7,a                    ;174B   FF                      .
        mov     r7,a                    ;174C   FF                      .
        mov     r7,a                    ;174D   FF                      .
        mov     r7,a                    ;174E   FF                      .
        mov     r7,a                    ;174F   FF                      .
        mov     r7,a                    ;1750   FF                      .
        mov     r7,a                    ;1751   FF                      .
        mov     r7,a                    ;1752   FF                      .
        mov     r7,a                    ;1753   FF                      .
        mov     r7,a                    ;1754   FF                      .
        mov     r7,a                    ;1755   FF                      .
        mov     r7,a                    ;1756   FF                      .
        mov     r7,a                    ;1757   FF                      .
        mov     r7,a                    ;1758   FF                      .
        mov     r7,a                    ;1759   FF                      .
        mov     r7,a                    ;175A   FF                      .
        mov     r7,a                    ;175B   FF                      .
        mov     r7,a                    ;175C   FF                      .
        mov     r7,a                    ;175D   FF                      .
        mov     r7,a                    ;175E   FF                      .
        mov     r7,a                    ;175F   FF                      .
        mov     r7,a                    ;1760   FF                      .
        mov     r7,a                    ;1761   FF                      .
        mov     r7,a                    ;1762   FF                      .
        mov     r7,a                    ;1763   FF                      .
        mov     r7,a                    ;1764   FF                      .
        mov     r7,a                    ;1765   FF                      .
        mov     r7,a                    ;1766   FF                      .
        mov     r7,a                    ;1767   FF                      .
        mov     r7,a                    ;1768   FF                      .
        mov     r7,a                    ;1769   FF                      .
        mov     r7,a                    ;176A   FF                      .
        mov     r7,a                    ;176B   FF                      .
        mov     r7,a                    ;176C   FF                      .
        mov     r7,a                    ;176D   FF                      .
        mov     r7,a                    ;176E   FF                      .
        mov     r7,a                    ;176F   FF                      .
        mov     r7,a                    ;1770   FF                      .
        mov     r7,a                    ;1771   FF                      .
        mov     r7,a                    ;1772   FF                      .
        mov     r7,a                    ;1773   FF                      .
        mov     r7,a                    ;1774   FF                      .
        mov     r7,a                    ;1775   FF                      .
        mov     r7,a                    ;1776   FF                      .
        mov     r7,a                    ;1777   FF                      .
        mov     r7,a                    ;1778   FF                      .
        mov     r7,a                    ;1779   FF                      .
        mov     r7,a                    ;177A   FF                      .
        mov     r7,a                    ;177B   FF                      .
        mov     r7,a                    ;177C   FF                      .
        mov     r7,a                    ;177D   FF                      .
        mov     r7,a                    ;177E   FF                      .
        mov     r7,a                    ;177F   FF                      .
        mov     r7,a                    ;1780   FF                      .
        mov     r7,a                    ;1781   FF                      .
        mov     r7,a                    ;1782   FF                      .
        mov     r7,a                    ;1783   FF                      .
        mov     r7,a                    ;1784   FF                      .
        mov     r7,a                    ;1785   FF                      .
        mov     r7,a                    ;1786   FF                      .
        mov     r7,a                    ;1787   FF                      .
        mov     r7,a                    ;1788   FF                      .
        mov     r7,a                    ;1789   FF                      .
        mov     r7,a                    ;178A   FF                      .
        mov     r7,a                    ;178B   FF                      .
        mov     r7,a                    ;178C   FF                      .
        mov     r7,a                    ;178D   FF                      .
        mov     r7,a                    ;178E   FF                      .
        mov     r7,a                    ;178F   FF                      .
        mov     r7,a                    ;1790   FF                      .
        mov     r7,a                    ;1791   FF                      .
        mov     r7,a                    ;1792   FF                      .
        mov     r7,a                    ;1793   FF                      .
        mov     r7,a                    ;1794   FF                      .
        mov     r7,a                    ;1795   FF                      .
        mov     r7,a                    ;1796   FF                      .
        mov     r7,a                    ;1797   FF                      .
        mov     r7,a                    ;1798   FF                      .
        mov     r7,a                    ;1799   FF                      .
        mov     r7,a                    ;179A   FF                      .
        mov     r7,a                    ;179B   FF                      .
        mov     r7,a                    ;179C   FF                      .
        mov     r7,a                    ;179D   FF                      .
        mov     r7,a                    ;179E   FF                      .
        mov     r7,a                    ;179F   FF                      .
        mov     r7,a                    ;17A0   FF                      .
        mov     r7,a                    ;17A1   FF                      .
        mov     r7,a                    ;17A2   FF                      .
        mov     r7,a                    ;17A3   FF                      .
        mov     r7,a                    ;17A4   FF                      .
        mov     r7,a                    ;17A5   FF                      .
        mov     r7,a                    ;17A6   FF                      .
        mov     r7,a                    ;17A7   FF                      .
        mov     r7,a                    ;17A8   FF                      .
        mov     r7,a                    ;17A9   FF                      .
        mov     r7,a                    ;17AA   FF                      .
        mov     r7,a                    ;17AB   FF                      .
        mov     r7,a                    ;17AC   FF                      .
        mov     r7,a                    ;17AD   FF                      .
        mov     r7,a                    ;17AE   FF                      .
        mov     r7,a                    ;17AF   FF                      .
        mov     r7,a                    ;17B0   FF                      .
        mov     r7,a                    ;17B1   FF                      .
        mov     r7,a                    ;17B2   FF                      .
        mov     r7,a                    ;17B3   FF                      .
        mov     r7,a                    ;17B4   FF                      .
        mov     r7,a                    ;17B5   FF                      .
        mov     r7,a                    ;17B6   FF                      .
        mov     r7,a                    ;17B7   FF                      .
        mov     r7,a                    ;17B8   FF                      .
        mov     r7,a                    ;17B9   FF                      .
        mov     r7,a                    ;17BA   FF                      .
        mov     r7,a                    ;17BB   FF                      .
        mov     r7,a                    ;17BC   FF                      .
        mov     r7,a                    ;17BD   FF                      .
        mov     r7,a                    ;17BE   FF                      .
        mov     r7,a                    ;17BF   FF                      .
        mov     r7,a                    ;17C0   FF                      .
        mov     r7,a                    ;17C1   FF                      .
        mov     r7,a                    ;17C2   FF                      .
        mov     r7,a                    ;17C3   FF                      .
        mov     r7,a                    ;17C4   FF                      .
        mov     r7,a                    ;17C5   FF                      .
        mov     r7,a                    ;17C6   FF                      .
        mov     r7,a                    ;17C7   FF                      .
        mov     r7,a                    ;17C8   FF                      .
        mov     r7,a                    ;17C9   FF                      .
        mov     r7,a                    ;17CA   FF                      .
        mov     r7,a                    ;17CB   FF                      .
        mov     r7,a                    ;17CC   FF                      .
        mov     r7,a                    ;17CD   FF                      .
        mov     r7,a                    ;17CE   FF                      .
        mov     r7,a                    ;17CF   FF                      .
        mov     r7,a                    ;17D0   FF                      .
        mov     r7,a                    ;17D1   FF                      .
        mov     r7,a                    ;17D2   FF                      .
        mov     r7,a                    ;17D3   FF                      .
        mov     r7,a                    ;17D4   FF                      .
        mov     r7,a                    ;17D5   FF                      .
        mov     r7,a                    ;17D6   FF                      .
        mov     r7,a                    ;17D7   FF                      .
        mov     r7,a                    ;17D8   FF                      .
        mov     r7,a                    ;17D9   FF                      .
        mov     r7,a                    ;17DA   FF                      .
        mov     r7,a                    ;17DB   FF                      .
        mov     r7,a                    ;17DC   FF                      .
        mov     r7,a                    ;17DD   FF                      .
        mov     r7,a                    ;17DE   FF                      .
        mov     r7,a                    ;17DF   FF                      .
        mov     r7,a                    ;17E0   FF                      .
        mov     r7,a                    ;17E1   FF                      .
        mov     r7,a                    ;17E2   FF                      .
        mov     r7,a                    ;17E3   FF                      .
        mov     r7,a                    ;17E4   FF                      .
        mov     r7,a                    ;17E5   FF                      .
        mov     r7,a                    ;17E6   FF                      .
        mov     r7,a                    ;17E7   FF                      .
        mov     r7,a                    ;17E8   FF                      .
        mov     r7,a                    ;17E9   FF                      .
        mov     r7,a                    ;17EA   FF                      .
        mov     r7,a                    ;17EB   FF                      .
        mov     r7,a                    ;17EC   FF                      .
        mov     r7,a                    ;17ED   FF                      .
        mov     r7,a                    ;17EE   FF                      .
        mov     r7,a                    ;17EF   FF                      .
        mov     r7,a                    ;17F0   FF                      .
        mov     r7,a                    ;17F1   FF                      .
        mov     r7,a                    ;17F2   FF                      .
        mov     r7,a                    ;17F3   FF                      .
        mov     r7,a                    ;17F4   FF                      .
        mov     r7,a                    ;17F5   FF                      .
        mov     r7,a                    ;17F6   FF                      .
        mov     r7,a                    ;17F7   FF                      .
        mov     r7,a                    ;17F8   FF                      .
        mov     r7,a                    ;17F9   FF                      .
        mov     r7,a                    ;17FA   FF                      .
        mov     r7,a                    ;17FB   FF                      .
        mov     r7,a                    ;17FC   FF                      .
        mov     r7,a                    ;17FD   FF                      .
        mov     r7,a                    ;17FE   FF                      .
        mov     r7,a                    ;17FF   FF                      .
        mov     r7,a                    ;1800   FF                      .
        mov     r7,a                    ;1801   FF                      .
        mov     r7,a                    ;1802   FF                      .
        mov     r7,a                    ;1803   FF                      .
        mov     r7,a                    ;1804   FF                      .
        mov     r7,a                    ;1805   FF                      .
        mov     r7,a                    ;1806   FF                      .
        mov     r7,a                    ;1807   FF                      .
        mov     r7,a                    ;1808   FF                      .
        mov     r7,a                    ;1809   FF                      .
        mov     r7,a                    ;180A   FF                      .
        mov     r7,a                    ;180B   FF                      .
        mov     r7,a                    ;180C   FF                      .
        mov     r7,a                    ;180D   FF                      .
        mov     r7,a                    ;180E   FF                      .
        mov     r7,a                    ;180F   FF                      .
        mov     r7,a                    ;1810   FF                      .
        mov     r7,a                    ;1811   FF                      .
        mov     r7,a                    ;1812   FF                      .
        mov     r7,a                    ;1813   FF                      .
        mov     r7,a                    ;1814   FF                      .
        mov     r7,a                    ;1815   FF                      .
        mov     r7,a                    ;1816   FF                      .
        mov     r7,a                    ;1817   FF                      .
        mov     r7,a                    ;1818   FF                      .
        mov     r7,a                    ;1819   FF                      .
        mov     r7,a                    ;181A   FF                      .
        mov     r7,a                    ;181B   FF                      .
        mov     r7,a                    ;181C   FF                      .
        mov     r7,a                    ;181D   FF                      .
        mov     r7,a                    ;181E   FF                      .
        mov     r7,a                    ;181F   FF                      .
        mov     r7,a                    ;1820   FF                      .
        mov     r7,a                    ;1821   FF                      .
        mov     r7,a                    ;1822   FF                      .
        mov     r7,a                    ;1823   FF                      .
        mov     r7,a                    ;1824   FF                      .
        mov     r7,a                    ;1825   FF                      .
        mov     r7,a                    ;1826   FF                      .
        mov     r7,a                    ;1827   FF                      .
        mov     r7,a                    ;1828   FF                      .
        mov     r7,a                    ;1829   FF                      .
        mov     r7,a                    ;182A   FF                      .
        mov     r7,a                    ;182B   FF                      .
        mov     r7,a                    ;182C   FF                      .
        mov     r7,a                    ;182D   FF                      .
        mov     r7,a                    ;182E   FF                      .
        mov     r7,a                    ;182F   FF                      .
        mov     r7,a                    ;1830   FF                      .
        mov     r7,a                    ;1831   FF                      .
        mov     r7,a                    ;1832   FF                      .
        mov     r7,a                    ;1833   FF                      .
        mov     r7,a                    ;1834   FF                      .
        mov     r7,a                    ;1835   FF                      .
        mov     r7,a                    ;1836   FF                      .
        mov     r7,a                    ;1837   FF                      .
        mov     r7,a                    ;1838   FF                      .
        mov     r7,a                    ;1839   FF                      .
        mov     r7,a                    ;183A   FF                      .
        mov     r7,a                    ;183B   FF                      .
        mov     r7,a                    ;183C   FF                      .
        mov     r7,a                    ;183D   FF                      .
        mov     r7,a                    ;183E   FF                      .
        mov     r7,a                    ;183F   FF                      .
        mov     r7,a                    ;1840   FF                      .
        mov     r7,a                    ;1841   FF                      .
        mov     r7,a                    ;1842   FF                      .
        mov     r7,a                    ;1843   FF                      .
        mov     r7,a                    ;1844   FF                      .
        mov     r7,a                    ;1845   FF                      .
        mov     r7,a                    ;1846   FF                      .
        mov     r7,a                    ;1847   FF                      .
        mov     r7,a                    ;1848   FF                      .
        mov     r7,a                    ;1849   FF                      .
        mov     r7,a                    ;184A   FF                      .
        mov     r7,a                    ;184B   FF                      .
        mov     r7,a                    ;184C   FF                      .
        mov     r7,a                    ;184D   FF                      .
        mov     r7,a                    ;184E   FF                      .
        mov     r7,a                    ;184F   FF                      .
        mov     r7,a                    ;1850   FF                      .
        mov     r7,a                    ;1851   FF                      .
        mov     r7,a                    ;1852   FF                      .
        mov     r7,a                    ;1853   FF                      .
        mov     r7,a                    ;1854   FF                      .
        mov     r7,a                    ;1855   FF                      .
        mov     r7,a                    ;1856   FF                      .
        mov     r7,a                    ;1857   FF                      .
        mov     r7,a                    ;1858   FF                      .
        mov     r7,a                    ;1859   FF                      .
        mov     r7,a                    ;185A   FF                      .
        mov     r7,a                    ;185B   FF                      .
        mov     r7,a                    ;185C   FF                      .
        mov     r7,a                    ;185D   FF                      .
        mov     r7,a                    ;185E   FF                      .
        mov     r7,a                    ;185F   FF                      .
        mov     r7,a                    ;1860   FF                      .
        mov     r7,a                    ;1861   FF                      .
        mov     r7,a                    ;1862   FF                      .
        mov     r7,a                    ;1863   FF                      .
        mov     r7,a                    ;1864   FF                      .
        mov     r7,a                    ;1865   FF                      .
        mov     r7,a                    ;1866   FF                      .
        mov     r7,a                    ;1867   FF                      .
        mov     r7,a                    ;1868   FF                      .
        mov     r7,a                    ;1869   FF                      .
        mov     r7,a                    ;186A   FF                      .
        mov     r7,a                    ;186B   FF                      .
        mov     r7,a                    ;186C   FF                      .
        mov     r7,a                    ;186D   FF                      .
        mov     r7,a                    ;186E   FF                      .
        mov     r7,a                    ;186F   FF                      .
        mov     r7,a                    ;1870   FF                      .
        mov     r7,a                    ;1871   FF                      .
        mov     r7,a                    ;1872   FF                      .
        mov     r7,a                    ;1873   FF                      .
        mov     r7,a                    ;1874   FF                      .
        mov     r7,a                    ;1875   FF                      .
        mov     r7,a                    ;1876   FF                      .
        mov     r7,a                    ;1877   FF                      .
        mov     r7,a                    ;1878   FF                      .
        mov     r7,a                    ;1879   FF                      .
        mov     r7,a                    ;187A   FF                      .
        mov     r7,a                    ;187B   FF                      .
        mov     r7,a                    ;187C   FF                      .
        mov     r7,a                    ;187D   FF                      .
        mov     r7,a                    ;187E   FF                      .
        mov     r7,a                    ;187F   FF                      .
        mov     r7,a                    ;1880   FF                      .
        mov     r7,a                    ;1881   FF                      .
        mov     r7,a                    ;1882   FF                      .
        mov     r7,a                    ;1883   FF                      .
        mov     r7,a                    ;1884   FF                      .
        mov     r7,a                    ;1885   FF                      .
        mov     r7,a                    ;1886   FF                      .
        mov     r7,a                    ;1887   FF                      .
        mov     r7,a                    ;1888   FF                      .
        mov     r7,a                    ;1889   FF                      .
        mov     r7,a                    ;188A   FF                      .
        mov     r7,a                    ;188B   FF                      .
        mov     r7,a                    ;188C   FF                      .
        mov     r7,a                    ;188D   FF                      .
        mov     r7,a                    ;188E   FF                      .
        mov     r7,a                    ;188F   FF                      .
        mov     r7,a                    ;1890   FF                      .
        mov     r7,a                    ;1891   FF                      .
        mov     r7,a                    ;1892   FF                      .
        mov     r7,a                    ;1893   FF                      .
        mov     r7,a                    ;1894   FF                      .
        mov     r7,a                    ;1895   FF                      .
        mov     r7,a                    ;1896   FF                      .
        mov     r7,a                    ;1897   FF                      .
        mov     r7,a                    ;1898   FF                      .
        mov     r7,a                    ;1899   FF                      .
        mov     r7,a                    ;189A   FF                      .
        mov     r7,a                    ;189B   FF                      .
        mov     r7,a                    ;189C   FF                      .
        mov     r7,a                    ;189D   FF                      .
        mov     r7,a                    ;189E   FF                      .
        mov     r7,a                    ;189F   FF                      .
        mov     r7,a                    ;18A0   FF                      .
        mov     r7,a                    ;18A1   FF                      .
        mov     r7,a                    ;18A2   FF                      .
        mov     r7,a                    ;18A3   FF                      .
        mov     r7,a                    ;18A4   FF                      .
        mov     r7,a                    ;18A5   FF                      .
        mov     r7,a                    ;18A6   FF                      .
        mov     r7,a                    ;18A7   FF                      .
        mov     r7,a                    ;18A8   FF                      .
        mov     r7,a                    ;18A9   FF                      .
        mov     r7,a                    ;18AA   FF                      .
        mov     r7,a                    ;18AB   FF                      .
        mov     r7,a                    ;18AC   FF                      .
        mov     r7,a                    ;18AD   FF                      .
        mov     r7,a                    ;18AE   FF                      .
        mov     r7,a                    ;18AF   FF                      .
        mov     r7,a                    ;18B0   FF                      .
        mov     r7,a                    ;18B1   FF                      .
        mov     r7,a                    ;18B2   FF                      .
        mov     r7,a                    ;18B3   FF                      .
        mov     r7,a                    ;18B4   FF                      .
        mov     r7,a                    ;18B5   FF                      .
        mov     r7,a                    ;18B6   FF                      .
        mov     r7,a                    ;18B7   FF                      .
        mov     r7,a                    ;18B8   FF                      .
        mov     r7,a                    ;18B9   FF                      .
        mov     r7,a                    ;18BA   FF                      .
        mov     r7,a                    ;18BB   FF                      .
        mov     r7,a                    ;18BC   FF                      .
        mov     r7,a                    ;18BD   FF                      .
        mov     r7,a                    ;18BE   FF                      .
        mov     r7,a                    ;18BF   FF                      .
        mov     r7,a                    ;18C0   FF                      .
        mov     r7,a                    ;18C1   FF                      .
        mov     r7,a                    ;18C2   FF                      .
        mov     r7,a                    ;18C3   FF                      .
        mov     r7,a                    ;18C4   FF                      .
        mov     r7,a                    ;18C5   FF                      .
        mov     r7,a                    ;18C6   FF                      .
        mov     r7,a                    ;18C7   FF                      .
        mov     r7,a                    ;18C8   FF                      .
        mov     r7,a                    ;18C9   FF                      .
        mov     r7,a                    ;18CA   FF                      .
        mov     r7,a                    ;18CB   FF                      .
        mov     r7,a                    ;18CC   FF                      .
        mov     r7,a                    ;18CD   FF                      .
        mov     r7,a                    ;18CE   FF                      .
        mov     r7,a                    ;18CF   FF                      .
        mov     r7,a                    ;18D0   FF                      .
        mov     r7,a                    ;18D1   FF                      .
        mov     r7,a                    ;18D2   FF                      .
        mov     r7,a                    ;18D3   FF                      .
        mov     r7,a                    ;18D4   FF                      .
        mov     r7,a                    ;18D5   FF                      .
        mov     r7,a                    ;18D6   FF                      .
        mov     r7,a                    ;18D7   FF                      .
        mov     r7,a                    ;18D8   FF                      .
        mov     r7,a                    ;18D9   FF                      .
        mov     r7,a                    ;18DA   FF                      .
        mov     r7,a                    ;18DB   FF                      .
        mov     r7,a                    ;18DC   FF                      .
        mov     r7,a                    ;18DD   FF                      .
        mov     r7,a                    ;18DE   FF                      .
        mov     r7,a                    ;18DF   FF                      .
        mov     r7,a                    ;18E0   FF                      .
        mov     r7,a                    ;18E1   FF                      .
        mov     r7,a                    ;18E2   FF                      .
        mov     r7,a                    ;18E3   FF                      .
        mov     r7,a                    ;18E4   FF                      .
        mov     r7,a                    ;18E5   FF                      .
        mov     r7,a                    ;18E6   FF                      .
        mov     r7,a                    ;18E7   FF                      .
        mov     r7,a                    ;18E8   FF                      .
        mov     r7,a                    ;18E9   FF                      .
        mov     r7,a                    ;18EA   FF                      .
        mov     r7,a                    ;18EB   FF                      .
        mov     r7,a                    ;18EC   FF                      .
        mov     r7,a                    ;18ED   FF                      .
        mov     r7,a                    ;18EE   FF                      .
        mov     r7,a                    ;18EF   FF                      .
        mov     r7,a                    ;18F0   FF                      .
        mov     r7,a                    ;18F1   FF                      .
        mov     r7,a                    ;18F2   FF                      .
        mov     r7,a                    ;18F3   FF                      .
        mov     r7,a                    ;18F4   FF                      .
        mov     r7,a                    ;18F5   FF                      .
        mov     r7,a                    ;18F6   FF                      .
        mov     r7,a                    ;18F7   FF                      .
        mov     r7,a                    ;18F8   FF                      .
        mov     r7,a                    ;18F9   FF                      .
        mov     r7,a                    ;18FA   FF                      .
        mov     r7,a                    ;18FB   FF                      .
        mov     r7,a                    ;18FC   FF                      .
        mov     r7,a                    ;18FD   FF                      .
        mov     r7,a                    ;18FE   FF                      .
        mov     r7,a                    ;18FF   FF                      .
        mov     r7,a                    ;1900   FF                      .
        mov     r7,a                    ;1901   FF                      .
        mov     r7,a                    ;1902   FF                      .
        mov     r7,a                    ;1903   FF                      .
        mov     r7,a                    ;1904   FF                      .
        mov     r7,a                    ;1905   FF                      .
        mov     r7,a                    ;1906   FF                      .
        mov     r7,a                    ;1907   FF                      .
        mov     r7,a                    ;1908   FF                      .
        mov     r7,a                    ;1909   FF                      .
        mov     r7,a                    ;190A   FF                      .
        mov     r7,a                    ;190B   FF                      .
        mov     r7,a                    ;190C   FF                      .
        mov     r7,a                    ;190D   FF                      .
        mov     r7,a                    ;190E   FF                      .
        mov     r7,a                    ;190F   FF                      .
        mov     r7,a                    ;1910   FF                      .
        mov     r7,a                    ;1911   FF                      .
        mov     r7,a                    ;1912   FF                      .
        mov     r7,a                    ;1913   FF                      .
        mov     r7,a                    ;1914   FF                      .
        mov     r7,a                    ;1915   FF                      .
        mov     r7,a                    ;1916   FF                      .
        mov     r7,a                    ;1917   FF                      .
        mov     r7,a                    ;1918   FF                      .
        mov     r7,a                    ;1919   FF                      .
        mov     r7,a                    ;191A   FF                      .
        mov     r7,a                    ;191B   FF                      .
        mov     r7,a                    ;191C   FF                      .
        mov     r7,a                    ;191D   FF                      .
        mov     r7,a                    ;191E   FF                      .
        mov     r7,a                    ;191F   FF                      .
        mov     r7,a                    ;1920   FF                      .
        mov     r7,a                    ;1921   FF                      .
        mov     r7,a                    ;1922   FF                      .
        mov     r7,a                    ;1923   FF                      .
        mov     r7,a                    ;1924   FF                      .
        mov     r7,a                    ;1925   FF                      .
        mov     r7,a                    ;1926   FF                      .
        mov     r7,a                    ;1927   FF                      .
        mov     r7,a                    ;1928   FF                      .
        mov     r7,a                    ;1929   FF                      .
        mov     r7,a                    ;192A   FF                      .
        mov     r7,a                    ;192B   FF                      .
        mov     r7,a                    ;192C   FF                      .
        mov     r7,a                    ;192D   FF                      .
        mov     r7,a                    ;192E   FF                      .
        mov     r7,a                    ;192F   FF                      .
        mov     r7,a                    ;1930   FF                      .
        mov     r7,a                    ;1931   FF                      .
        mov     r7,a                    ;1932   FF                      .
        mov     r7,a                    ;1933   FF                      .
        mov     r7,a                    ;1934   FF                      .
        mov     r7,a                    ;1935   FF                      .
        mov     r7,a                    ;1936   FF                      .
        mov     r7,a                    ;1937   FF                      .
        mov     r7,a                    ;1938   FF                      .
        mov     r7,a                    ;1939   FF                      .
        mov     r7,a                    ;193A   FF                      .
        mov     r7,a                    ;193B   FF                      .
        mov     r7,a                    ;193C   FF                      .
        mov     r7,a                    ;193D   FF                      .
        mov     r7,a                    ;193E   FF                      .
        mov     r7,a                    ;193F   FF                      .
        mov     r7,a                    ;1940   FF                      .
        mov     r7,a                    ;1941   FF                      .
        mov     r7,a                    ;1942   FF                      .
        mov     r7,a                    ;1943   FF                      .
        mov     r7,a                    ;1944   FF                      .
        mov     r7,a                    ;1945   FF                      .
        mov     r7,a                    ;1946   FF                      .
        mov     r7,a                    ;1947   FF                      .
        mov     r7,a                    ;1948   FF                      .
        mov     r7,a                    ;1949   FF                      .
        mov     r7,a                    ;194A   FF                      .
        mov     r7,a                    ;194B   FF                      .
        mov     r7,a                    ;194C   FF                      .
        mov     r7,a                    ;194D   FF                      .
        mov     r7,a                    ;194E   FF                      .
        mov     r7,a                    ;194F   FF                      .
        mov     r7,a                    ;1950   FF                      .
        mov     r7,a                    ;1951   FF                      .
        mov     r7,a                    ;1952   FF                      .
        mov     r7,a                    ;1953   FF                      .
        mov     r7,a                    ;1954   FF                      .
        mov     r7,a                    ;1955   FF                      .
        mov     r7,a                    ;1956   FF                      .
        mov     r7,a                    ;1957   FF                      .
        mov     r7,a                    ;1958   FF                      .
        mov     r7,a                    ;1959   FF                      .
        mov     r7,a                    ;195A   FF                      .
        mov     r7,a                    ;195B   FF                      .
        mov     r7,a                    ;195C   FF                      .
        mov     r7,a                    ;195D   FF                      .
        mov     r7,a                    ;195E   FF                      .
        mov     r7,a                    ;195F   FF                      .
        mov     r7,a                    ;1960   FF                      .
        mov     r7,a                    ;1961   FF                      .
        mov     r7,a                    ;1962   FF                      .
        mov     r7,a                    ;1963   FF                      .
        mov     r7,a                    ;1964   FF                      .
        mov     r7,a                    ;1965   FF                      .
        mov     r7,a                    ;1966   FF                      .
        mov     r7,a                    ;1967   FF                      .
        mov     r7,a                    ;1968   FF                      .
        mov     r7,a                    ;1969   FF                      .
        mov     r7,a                    ;196A   FF                      .
        mov     r7,a                    ;196B   FF                      .
        mov     r7,a                    ;196C   FF                      .
        mov     r7,a                    ;196D   FF                      .
        mov     r7,a                    ;196E   FF                      .
        mov     r7,a                    ;196F   FF                      .
        mov     r7,a                    ;1970   FF                      .
        mov     r7,a                    ;1971   FF                      .
        mov     r7,a                    ;1972   FF                      .
        mov     r7,a                    ;1973   FF                      .
        mov     r7,a                    ;1974   FF                      .
        mov     r7,a                    ;1975   FF                      .
        mov     r7,a                    ;1976   FF                      .
        mov     r7,a                    ;1977   FF                      .
        mov     r7,a                    ;1978   FF                      .
        mov     r7,a                    ;1979   FF                      .
        mov     r7,a                    ;197A   FF                      .
        mov     r7,a                    ;197B   FF                      .
        mov     r7,a                    ;197C   FF                      .
        mov     r7,a                    ;197D   FF                      .
        mov     r7,a                    ;197E   FF                      .
        mov     r7,a                    ;197F   FF                      .
        mov     r7,a                    ;1980   FF                      .
        mov     r7,a                    ;1981   FF                      .
        mov     r7,a                    ;1982   FF                      .
        mov     r7,a                    ;1983   FF                      .
        mov     r7,a                    ;1984   FF                      .
        mov     r7,a                    ;1985   FF                      .
        mov     r7,a                    ;1986   FF                      .
        mov     r7,a                    ;1987   FF                      .
        mov     r7,a                    ;1988   FF                      .
        mov     r7,a                    ;1989   FF                      .
        mov     r7,a                    ;198A   FF                      .
        mov     r7,a                    ;198B   FF                      .
        mov     r7,a                    ;198C   FF                      .
        mov     r7,a                    ;198D   FF                      .
        mov     r7,a                    ;198E   FF                      .
        mov     r7,a                    ;198F   FF                      .
        mov     r7,a                    ;1990   FF                      .
        mov     r7,a                    ;1991   FF                      .
        mov     r7,a                    ;1992   FF                      .
        mov     r7,a                    ;1993   FF                      .
        mov     r7,a                    ;1994   FF                      .
        mov     r7,a                    ;1995   FF                      .
        mov     r7,a                    ;1996   FF                      .
        mov     r7,a                    ;1997   FF                      .
        mov     r7,a                    ;1998   FF                      .
        mov     r7,a                    ;1999   FF                      .
        mov     r7,a                    ;199A   FF                      .
        mov     r7,a                    ;199B   FF                      .
        mov     r7,a                    ;199C   FF                      .
        mov     r7,a                    ;199D   FF                      .
        mov     r7,a                    ;199E   FF                      .
        mov     r7,a                    ;199F   FF                      .
        mov     r7,a                    ;19A0   FF                      .
        mov     r7,a                    ;19A1   FF                      .
        mov     r7,a                    ;19A2   FF                      .
        mov     r7,a                    ;19A3   FF                      .
        mov     r7,a                    ;19A4   FF                      .
        mov     r7,a                    ;19A5   FF                      .
        mov     r7,a                    ;19A6   FF                      .
        mov     r7,a                    ;19A7   FF                      .
        mov     r7,a                    ;19A8   FF                      .
        mov     r7,a                    ;19A9   FF                      .
        mov     r7,a                    ;19AA   FF                      .
        mov     r7,a                    ;19AB   FF                      .
        mov     r7,a                    ;19AC   FF                      .
        mov     r7,a                    ;19AD   FF                      .
        mov     r7,a                    ;19AE   FF                      .
        mov     r7,a                    ;19AF   FF                      .
        mov     r7,a                    ;19B0   FF                      .
        mov     r7,a                    ;19B1   FF                      .
        mov     r7,a                    ;19B2   FF                      .
        mov     r7,a                    ;19B3   FF                      .
        mov     r7,a                    ;19B4   FF                      .
        mov     r7,a                    ;19B5   FF                      .
        mov     r7,a                    ;19B6   FF                      .
        mov     r7,a                    ;19B7   FF                      .
        mov     r7,a                    ;19B8   FF                      .
        mov     r7,a                    ;19B9   FF                      .
        mov     r7,a                    ;19BA   FF                      .
        mov     r7,a                    ;19BB   FF                      .
        mov     r7,a                    ;19BC   FF                      .
        mov     r7,a                    ;19BD   FF                      .
        mov     r7,a                    ;19BE   FF                      .
        mov     r7,a                    ;19BF   FF                      .
        mov     r7,a                    ;19C0   FF                      .
        mov     r7,a                    ;19C1   FF                      .
        mov     r7,a                    ;19C2   FF                      .
        mov     r7,a                    ;19C3   FF                      .
        mov     r7,a                    ;19C4   FF                      .
        mov     r7,a                    ;19C5   FF                      .
        mov     r7,a                    ;19C6   FF                      .
        mov     r7,a                    ;19C7   FF                      .
        mov     r7,a                    ;19C8   FF                      .
        mov     r7,a                    ;19C9   FF                      .
        mov     r7,a                    ;19CA   FF                      .
        mov     r7,a                    ;19CB   FF                      .
        mov     r7,a                    ;19CC   FF                      .
        mov     r7,a                    ;19CD   FF                      .
        mov     r7,a                    ;19CE   FF                      .
        mov     r7,a                    ;19CF   FF                      .
        mov     r7,a                    ;19D0   FF                      .
        mov     r7,a                    ;19D1   FF                      .
        mov     r7,a                    ;19D2   FF                      .
        mov     r7,a                    ;19D3   FF                      .
        mov     r7,a                    ;19D4   FF                      .
        mov     r7,a                    ;19D5   FF                      .
        mov     r7,a                    ;19D6   FF                      .
        mov     r7,a                    ;19D7   FF                      .
        mov     r7,a                    ;19D8   FF                      .
        mov     r7,a                    ;19D9   FF                      .
        mov     r7,a                    ;19DA   FF                      .
        mov     r7,a                    ;19DB   FF                      .
        mov     r7,a                    ;19DC   FF                      .
        mov     r7,a                    ;19DD   FF                      .
        mov     r7,a                    ;19DE   FF                      .
        mov     r7,a                    ;19DF   FF                      .
        mov     r7,a                    ;19E0   FF                      .
        mov     r7,a                    ;19E1   FF                      .
        mov     r7,a                    ;19E2   FF                      .
        mov     r7,a                    ;19E3   FF                      .
        mov     r7,a                    ;19E4   FF                      .
        mov     r7,a                    ;19E5   FF                      .
        mov     r7,a                    ;19E6   FF                      .
        mov     r7,a                    ;19E7   FF                      .
        mov     r7,a                    ;19E8   FF                      .
        mov     r7,a                    ;19E9   FF                      .
        mov     r7,a                    ;19EA   FF                      .
        mov     r7,a                    ;19EB   FF                      .
        mov     r7,a                    ;19EC   FF                      .
        mov     r7,a                    ;19ED   FF                      .
        mov     r7,a                    ;19EE   FF                      .
        mov     r7,a                    ;19EF   FF                      .
        mov     r7,a                    ;19F0   FF                      .
        mov     r7,a                    ;19F1   FF                      .
        mov     r7,a                    ;19F2   FF                      .
        mov     r7,a                    ;19F3   FF                      .
        mov     r7,a                    ;19F4   FF                      .
        mov     r7,a                    ;19F5   FF                      .
        mov     r7,a                    ;19F6   FF                      .
        mov     r7,a                    ;19F7   FF                      .
        mov     r7,a                    ;19F8   FF                      .
        mov     r7,a                    ;19F9   FF                      .
        mov     r7,a                    ;19FA   FF                      .
        mov     r7,a                    ;19FB   FF                      .
        mov     r7,a                    ;19FC   FF                      .
        mov     r7,a                    ;19FD   FF                      .
        mov     r7,a                    ;19FE   FF                      .
        mov     r7,a                    ;19FF   FF                      .
        mov     r7,a                    ;1A00   FF                      .
        mov     r7,a                    ;1A01   FF                      .
        mov     r7,a                    ;1A02   FF                      .
        mov     r7,a                    ;1A03   FF                      .
        mov     r7,a                    ;1A04   FF                      .
        mov     r7,a                    ;1A05   FF                      .
        mov     r7,a                    ;1A06   FF                      .
        mov     r7,a                    ;1A07   FF                      .
        mov     r7,a                    ;1A08   FF                      .
        mov     r7,a                    ;1A09   FF                      .
        mov     r7,a                    ;1A0A   FF                      .
        mov     r7,a                    ;1A0B   FF                      .
        mov     r7,a                    ;1A0C   FF                      .
        mov     r7,a                    ;1A0D   FF                      .
        mov     r7,a                    ;1A0E   FF                      .
        mov     r7,a                    ;1A0F   FF                      .
        mov     r7,a                    ;1A10   FF                      .
        mov     r7,a                    ;1A11   FF                      .
        mov     r7,a                    ;1A12   FF                      .
        mov     r7,a                    ;1A13   FF                      .
        mov     r7,a                    ;1A14   FF                      .
        mov     r7,a                    ;1A15   FF                      .
        mov     r7,a                    ;1A16   FF                      .
        mov     r7,a                    ;1A17   FF                      .
        mov     r7,a                    ;1A18   FF                      .
        mov     r7,a                    ;1A19   FF                      .
        mov     r7,a                    ;1A1A   FF                      .
        mov     r7,a                    ;1A1B   FF                      .
        mov     r7,a                    ;1A1C   FF                      .
        mov     r7,a                    ;1A1D   FF                      .
        mov     r7,a                    ;1A1E   FF                      .
        mov     r7,a                    ;1A1F   FF                      .
        mov     r7,a                    ;1A20   FF                      .
        mov     r7,a                    ;1A21   FF                      .
        mov     r7,a                    ;1A22   FF                      .
        mov     r7,a                    ;1A23   FF                      .
        mov     r7,a                    ;1A24   FF                      .
        mov     r7,a                    ;1A25   FF                      .
        mov     r7,a                    ;1A26   FF                      .
        mov     r7,a                    ;1A27   FF                      .
        mov     r7,a                    ;1A28   FF                      .
        mov     r7,a                    ;1A29   FF                      .
        mov     r7,a                    ;1A2A   FF                      .
        mov     r7,a                    ;1A2B   FF                      .
        mov     r7,a                    ;1A2C   FF                      .
        mov     r7,a                    ;1A2D   FF                      .
        mov     r7,a                    ;1A2E   FF                      .
        mov     r7,a                    ;1A2F   FF                      .
        mov     r7,a                    ;1A30   FF                      .
        mov     r7,a                    ;1A31   FF                      .
        mov     r7,a                    ;1A32   FF                      .
        mov     r7,a                    ;1A33   FF                      .
        mov     r7,a                    ;1A34   FF                      .
        mov     r7,a                    ;1A35   FF                      .
        mov     r7,a                    ;1A36   FF                      .
        mov     r7,a                    ;1A37   FF                      .
        mov     r7,a                    ;1A38   FF                      .
        mov     r7,a                    ;1A39   FF                      .
        mov     r7,a                    ;1A3A   FF                      .
        mov     r7,a                    ;1A3B   FF                      .
        mov     r7,a                    ;1A3C   FF                      .
        mov     r7,a                    ;1A3D   FF                      .
        mov     r7,a                    ;1A3E   FF                      .
        mov     r7,a                    ;1A3F   FF                      .
        mov     r7,a                    ;1A40   FF                      .
        mov     r7,a                    ;1A41   FF                      .
        mov     r7,a                    ;1A42   FF                      .
        mov     r7,a                    ;1A43   FF                      .
        mov     r7,a                    ;1A44   FF                      .
        mov     r7,a                    ;1A45   FF                      .
        mov     r7,a                    ;1A46   FF                      .
        mov     r7,a                    ;1A47   FF                      .
        mov     r7,a                    ;1A48   FF                      .
        mov     r7,a                    ;1A49   FF                      .
        mov     r7,a                    ;1A4A   FF                      .
        mov     r7,a                    ;1A4B   FF                      .
        mov     r7,a                    ;1A4C   FF                      .
        mov     r7,a                    ;1A4D   FF                      .
        mov     r7,a                    ;1A4E   FF                      .
        mov     r7,a                    ;1A4F   FF                      .
        mov     r7,a                    ;1A50   FF                      .
        mov     r7,a                    ;1A51   FF                      .
        mov     r7,a                    ;1A52   FF                      .
        mov     r7,a                    ;1A53   FF                      .
        mov     r7,a                    ;1A54   FF                      .
        mov     r7,a                    ;1A55   FF                      .
        mov     r7,a                    ;1A56   FF                      .
        mov     r7,a                    ;1A57   FF                      .
        mov     r7,a                    ;1A58   FF                      .
        mov     r7,a                    ;1A59   FF                      .
        mov     r7,a                    ;1A5A   FF                      .
        mov     r7,a                    ;1A5B   FF                      .
        mov     r7,a                    ;1A5C   FF                      .
        mov     r7,a                    ;1A5D   FF                      .
        mov     r7,a                    ;1A5E   FF                      .
        mov     r7,a                    ;1A5F   FF                      .
        mov     r7,a                    ;1A60   FF                      .
        mov     r7,a                    ;1A61   FF                      .
        mov     r7,a                    ;1A62   FF                      .
        mov     r7,a                    ;1A63   FF                      .
        mov     r7,a                    ;1A64   FF                      .
        mov     r7,a                    ;1A65   FF                      .
        mov     r7,a                    ;1A66   FF                      .
        mov     r7,a                    ;1A67   FF                      .
        mov     r7,a                    ;1A68   FF                      .
        mov     r7,a                    ;1A69   FF                      .
        mov     r7,a                    ;1A6A   FF                      .
        mov     r7,a                    ;1A6B   FF                      .
        mov     r7,a                    ;1A6C   FF                      .
        mov     r7,a                    ;1A6D   FF                      .
        mov     r7,a                    ;1A6E   FF                      .
        mov     r7,a                    ;1A6F   FF                      .
        mov     r7,a                    ;1A70   FF                      .
        mov     r7,a                    ;1A71   FF                      .
        mov     r7,a                    ;1A72   FF                      .
        mov     r7,a                    ;1A73   FF                      .
        mov     r7,a                    ;1A74   FF                      .
        mov     r7,a                    ;1A75   FF                      .
        mov     r7,a                    ;1A76   FF                      .
        mov     r7,a                    ;1A77   FF                      .
        mov     r7,a                    ;1A78   FF                      .
        mov     r7,a                    ;1A79   FF                      .
        mov     r7,a                    ;1A7A   FF                      .
        mov     r7,a                    ;1A7B   FF                      .
        mov     r7,a                    ;1A7C   FF                      .
        mov     r7,a                    ;1A7D   FF                      .
        mov     r7,a                    ;1A7E   FF                      .
        mov     r7,a                    ;1A7F   FF                      .
        mov     r7,a                    ;1A80   FF                      .
        mov     r7,a                    ;1A81   FF                      .
        mov     r7,a                    ;1A82   FF                      .
        mov     r7,a                    ;1A83   FF                      .
        mov     r7,a                    ;1A84   FF                      .
        mov     r7,a                    ;1A85   FF                      .
        mov     r7,a                    ;1A86   FF                      .
        mov     r7,a                    ;1A87   FF                      .
        mov     r7,a                    ;1A88   FF                      .
        mov     r7,a                    ;1A89   FF                      .
        mov     r7,a                    ;1A8A   FF                      .
        mov     r7,a                    ;1A8B   FF                      .
        mov     r7,a                    ;1A8C   FF                      .
        mov     r7,a                    ;1A8D   FF                      .
        mov     r7,a                    ;1A8E   FF                      .
        mov     r7,a                    ;1A8F   FF                      .
        mov     r7,a                    ;1A90   FF                      .
        mov     r7,a                    ;1A91   FF                      .
        mov     r7,a                    ;1A92   FF                      .
        mov     r7,a                    ;1A93   FF                      .
        mov     r7,a                    ;1A94   FF                      .
        mov     r7,a                    ;1A95   FF                      .
        mov     r7,a                    ;1A96   FF                      .
        mov     r7,a                    ;1A97   FF                      .
        mov     r7,a                    ;1A98   FF                      .
        mov     r7,a                    ;1A99   FF                      .
        mov     r7,a                    ;1A9A   FF                      .
        mov     r7,a                    ;1A9B   FF                      .
        mov     r7,a                    ;1A9C   FF                      .
        mov     r7,a                    ;1A9D   FF                      .
        mov     r7,a                    ;1A9E   FF                      .
        mov     r7,a                    ;1A9F   FF                      .
        mov     r7,a                    ;1AA0   FF                      .
        mov     r7,a                    ;1AA1   FF                      .
        mov     r7,a                    ;1AA2   FF                      .
        mov     r7,a                    ;1AA3   FF                      .
        mov     r7,a                    ;1AA4   FF                      .
        mov     r7,a                    ;1AA5   FF                      .
        mov     r7,a                    ;1AA6   FF                      .
        mov     r7,a                    ;1AA7   FF                      .
        mov     r7,a                    ;1AA8   FF                      .
        mov     r7,a                    ;1AA9   FF                      .
        mov     r7,a                    ;1AAA   FF                      .
        mov     r7,a                    ;1AAB   FF                      .
        mov     r7,a                    ;1AAC   FF                      .
        mov     r7,a                    ;1AAD   FF                      .
        mov     r7,a                    ;1AAE   FF                      .
        mov     r7,a                    ;1AAF   FF                      .
        mov     r7,a                    ;1AB0   FF                      .
        mov     r7,a                    ;1AB1   FF                      .
        mov     r7,a                    ;1AB2   FF                      .
        mov     r7,a                    ;1AB3   FF                      .
        mov     r7,a                    ;1AB4   FF                      .
        mov     r7,a                    ;1AB5   FF                      .
        mov     r7,a                    ;1AB6   FF                      .
        mov     r7,a                    ;1AB7   FF                      .
        mov     r7,a                    ;1AB8   FF                      .
        mov     r7,a                    ;1AB9   FF                      .
        mov     r7,a                    ;1ABA   FF                      .
        mov     r7,a                    ;1ABB   FF                      .
        mov     r7,a                    ;1ABC   FF                      .
        mov     r7,a                    ;1ABD   FF                      .
        mov     r7,a                    ;1ABE   FF                      .
        mov     r7,a                    ;1ABF   FF                      .
        mov     r7,a                    ;1AC0   FF                      .
        mov     r7,a                    ;1AC1   FF                      .
        mov     r7,a                    ;1AC2   FF                      .
        mov     r7,a                    ;1AC3   FF                      .
        mov     r7,a                    ;1AC4   FF                      .
        mov     r7,a                    ;1AC5   FF                      .
        mov     r7,a                    ;1AC6   FF                      .
        mov     r7,a                    ;1AC7   FF                      .
        mov     r7,a                    ;1AC8   FF                      .
        mov     r7,a                    ;1AC9   FF                      .
        mov     r7,a                    ;1ACA   FF                      .
        mov     r7,a                    ;1ACB   FF                      .
        mov     r7,a                    ;1ACC   FF                      .
        mov     r7,a                    ;1ACD   FF                      .
        mov     r7,a                    ;1ACE   FF                      .
        mov     r7,a                    ;1ACF   FF                      .
        mov     r7,a                    ;1AD0   FF                      .
        mov     r7,a                    ;1AD1   FF                      .
        mov     r7,a                    ;1AD2   FF                      .
        mov     r7,a                    ;1AD3   FF                      .
        mov     r7,a                    ;1AD4   FF                      .
        mov     r7,a                    ;1AD5   FF                      .
        mov     r7,a                    ;1AD6   FF                      .
        mov     r7,a                    ;1AD7   FF                      .
        mov     r7,a                    ;1AD8   FF                      .
        mov     r7,a                    ;1AD9   FF                      .
        mov     r7,a                    ;1ADA   FF                      .
        mov     r7,a                    ;1ADB   FF                      .
        mov     r7,a                    ;1ADC   FF                      .
        mov     r7,a                    ;1ADD   FF                      .
        mov     r7,a                    ;1ADE   FF                      .
        mov     r7,a                    ;1ADF   FF                      .
        mov     r7,a                    ;1AE0   FF                      .
        mov     r7,a                    ;1AE1   FF                      .
        mov     r7,a                    ;1AE2   FF                      .
        mov     r7,a                    ;1AE3   FF                      .
        mov     r7,a                    ;1AE4   FF                      .
        mov     r7,a                    ;1AE5   FF                      .
        mov     r7,a                    ;1AE6   FF                      .
        mov     r7,a                    ;1AE7   FF                      .
        mov     r7,a                    ;1AE8   FF                      .
        mov     r7,a                    ;1AE9   FF                      .
        mov     r7,a                    ;1AEA   FF                      .
        mov     r7,a                    ;1AEB   FF                      .
        mov     r7,a                    ;1AEC   FF                      .
        mov     r7,a                    ;1AED   FF                      .
        mov     r7,a                    ;1AEE   FF                      .
        mov     r7,a                    ;1AEF   FF                      .
        mov     r7,a                    ;1AF0   FF                      .
        mov     r7,a                    ;1AF1   FF                      .
        mov     r7,a                    ;1AF2   FF                      .
        mov     r7,a                    ;1AF3   FF                      .
        mov     r7,a                    ;1AF4   FF                      .
        mov     r7,a                    ;1AF5   FF                      .
        mov     r7,a                    ;1AF6   FF                      .
        mov     r7,a                    ;1AF7   FF                      .
        mov     r7,a                    ;1AF8   FF                      .
        mov     r7,a                    ;1AF9   FF                      .
        mov     r7,a                    ;1AFA   FF                      .
        mov     r7,a                    ;1AFB   FF                      .
        mov     r7,a                    ;1AFC   FF                      .
        mov     r7,a                    ;1AFD   FF                      .
        mov     r7,a                    ;1AFE   FF                      .
        mov     r7,a                    ;1AFF   FF                      .
        mov     r7,a                    ;1B00   FF                      .
        mov     r7,a                    ;1B01   FF                      .
        mov     r7,a                    ;1B02   FF                      .
        mov     r7,a                    ;1B03   FF                      .
        mov     r7,a                    ;1B04   FF                      .
        mov     r7,a                    ;1B05   FF                      .
        mov     r7,a                    ;1B06   FF                      .
        mov     r7,a                    ;1B07   FF                      .
        mov     r7,a                    ;1B08   FF                      .
        mov     r7,a                    ;1B09   FF                      .
        mov     r7,a                    ;1B0A   FF                      .
        mov     r7,a                    ;1B0B   FF                      .
        mov     r7,a                    ;1B0C   FF                      .
        mov     r7,a                    ;1B0D   FF                      .
        mov     r7,a                    ;1B0E   FF                      .
        mov     r7,a                    ;1B0F   FF                      .
        mov     r7,a                    ;1B10   FF                      .
        mov     r7,a                    ;1B11   FF                      .
        mov     r7,a                    ;1B12   FF                      .
        mov     r7,a                    ;1B13   FF                      .
        mov     r7,a                    ;1B14   FF                      .
        mov     r7,a                    ;1B15   FF                      .
        mov     r7,a                    ;1B16   FF                      .
        mov     r7,a                    ;1B17   FF                      .
        mov     r7,a                    ;1B18   FF                      .
        mov     r7,a                    ;1B19   FF                      .
        mov     r7,a                    ;1B1A   FF                      .
        mov     r7,a                    ;1B1B   FF                      .
        mov     r7,a                    ;1B1C   FF                      .
        mov     r7,a                    ;1B1D   FF                      .
        mov     r7,a                    ;1B1E   FF                      .
        mov     r7,a                    ;1B1F   FF                      .
        mov     r7,a                    ;1B20   FF                      .
        mov     r7,a                    ;1B21   FF                      .
        mov     r7,a                    ;1B22   FF                      .
        mov     r7,a                    ;1B23   FF                      .
        mov     r7,a                    ;1B24   FF                      .
        mov     r7,a                    ;1B25   FF                      .
        mov     r7,a                    ;1B26   FF                      .
        mov     r7,a                    ;1B27   FF                      .
        mov     r7,a                    ;1B28   FF                      .
        mov     r7,a                    ;1B29   FF                      .
        mov     r7,a                    ;1B2A   FF                      .
        mov     r7,a                    ;1B2B   FF                      .
        mov     r7,a                    ;1B2C   FF                      .
        mov     r7,a                    ;1B2D   FF                      .
        mov     r7,a                    ;1B2E   FF                      .
        mov     r7,a                    ;1B2F   FF                      .
        mov     r7,a                    ;1B30   FF                      .
        mov     r7,a                    ;1B31   FF                      .
        mov     r7,a                    ;1B32   FF                      .
        mov     r7,a                    ;1B33   FF                      .
        mov     r7,a                    ;1B34   FF                      .
        mov     r7,a                    ;1B35   FF                      .
        mov     r7,a                    ;1B36   FF                      .
        mov     r7,a                    ;1B37   FF                      .
        mov     r7,a                    ;1B38   FF                      .
        mov     r7,a                    ;1B39   FF                      .
        mov     r7,a                    ;1B3A   FF                      .
        mov     r7,a                    ;1B3B   FF                      .
        mov     r7,a                    ;1B3C   FF                      .
        mov     r7,a                    ;1B3D   FF                      .
        mov     r7,a                    ;1B3E   FF                      .
        mov     r7,a                    ;1B3F   FF                      .
        mov     r7,a                    ;1B40   FF                      .
        mov     r7,a                    ;1B41   FF                      .
        mov     r7,a                    ;1B42   FF                      .
        mov     r7,a                    ;1B43   FF                      .
        mov     r7,a                    ;1B44   FF                      .
        mov     r7,a                    ;1B45   FF                      .
        mov     r7,a                    ;1B46   FF                      .
        mov     r7,a                    ;1B47   FF                      .
        mov     r7,a                    ;1B48   FF                      .
        mov     r7,a                    ;1B49   FF                      .
        mov     r7,a                    ;1B4A   FF                      .
        mov     r7,a                    ;1B4B   FF                      .
        mov     r7,a                    ;1B4C   FF                      .
        mov     r7,a                    ;1B4D   FF                      .
        mov     r7,a                    ;1B4E   FF                      .
        mov     r7,a                    ;1B4F   FF                      .
        mov     r7,a                    ;1B50   FF                      .
        mov     r7,a                    ;1B51   FF                      .
        mov     r7,a                    ;1B52   FF                      .
        mov     r7,a                    ;1B53   FF                      .
        mov     r7,a                    ;1B54   FF                      .
        mov     r7,a                    ;1B55   FF                      .
        mov     r7,a                    ;1B56   FF                      .
        mov     r7,a                    ;1B57   FF                      .
        mov     r7,a                    ;1B58   FF                      .
        mov     r7,a                    ;1B59   FF                      .
        mov     r7,a                    ;1B5A   FF                      .
        mov     r7,a                    ;1B5B   FF                      .
        mov     r7,a                    ;1B5C   FF                      .
        mov     r7,a                    ;1B5D   FF                      .
        mov     r7,a                    ;1B5E   FF                      .
        mov     r7,a                    ;1B5F   FF                      .
        mov     r7,a                    ;1B60   FF                      .
        mov     r7,a                    ;1B61   FF                      .
        mov     r7,a                    ;1B62   FF                      .
        mov     r7,a                    ;1B63   FF                      .
        mov     r7,a                    ;1B64   FF                      .
        mov     r7,a                    ;1B65   FF                      .
        mov     r7,a                    ;1B66   FF                      .
        mov     r7,a                    ;1B67   FF                      .
        mov     r7,a                    ;1B68   FF                      .
        mov     r7,a                    ;1B69   FF                      .
        mov     r7,a                    ;1B6A   FF                      .
        mov     r7,a                    ;1B6B   FF                      .
        mov     r7,a                    ;1B6C   FF                      .
        mov     r7,a                    ;1B6D   FF                      .
        mov     r7,a                    ;1B6E   FF                      .
        mov     r7,a                    ;1B6F   FF                      .
        mov     r7,a                    ;1B70   FF                      .
        mov     r7,a                    ;1B71   FF                      .
        mov     r7,a                    ;1B72   FF                      .
        mov     r7,a                    ;1B73   FF                      .
        mov     r7,a                    ;1B74   FF                      .
        mov     r7,a                    ;1B75   FF                      .
        mov     r7,a                    ;1B76   FF                      .
        mov     r7,a                    ;1B77   FF                      .
        mov     r7,a                    ;1B78   FF                      .
        mov     r7,a                    ;1B79   FF                      .
        mov     r7,a                    ;1B7A   FF                      .
        mov     r7,a                    ;1B7B   FF                      .
        mov     r7,a                    ;1B7C   FF                      .
        mov     r7,a                    ;1B7D   FF                      .
        mov     r7,a                    ;1B7E   FF                      .
        mov     r7,a                    ;1B7F   FF                      .
        mov     r7,a                    ;1B80   FF                      .
        mov     r7,a                    ;1B81   FF                      .
        mov     r7,a                    ;1B82   FF                      .
        mov     r7,a                    ;1B83   FF                      .
        mov     r7,a                    ;1B84   FF                      .
        mov     r7,a                    ;1B85   FF                      .
        mov     r7,a                    ;1B86   FF                      .
        mov     r7,a                    ;1B87   FF                      .
        mov     r7,a                    ;1B88   FF                      .
        mov     r7,a                    ;1B89   FF                      .
        mov     r7,a                    ;1B8A   FF                      .
        mov     r7,a                    ;1B8B   FF                      .
        mov     r7,a                    ;1B8C   FF                      .
        mov     r7,a                    ;1B8D   FF                      .
        mov     r7,a                    ;1B8E   FF                      .
        mov     r7,a                    ;1B8F   FF                      .
        mov     r7,a                    ;1B90   FF                      .
        mov     r7,a                    ;1B91   FF                      .
        mov     r7,a                    ;1B92   FF                      .
        mov     r7,a                    ;1B93   FF                      .
        mov     r7,a                    ;1B94   FF                      .
        mov     r7,a                    ;1B95   FF                      .
        mov     r7,a                    ;1B96   FF                      .
        mov     r7,a                    ;1B97   FF                      .
        mov     r7,a                    ;1B98   FF                      .
        mov     r7,a                    ;1B99   FF                      .
        mov     r7,a                    ;1B9A   FF                      .
        mov     r7,a                    ;1B9B   FF                      .
        mov     r7,a                    ;1B9C   FF                      .
        mov     r7,a                    ;1B9D   FF                      .
        mov     r7,a                    ;1B9E   FF                      .
        mov     r7,a                    ;1B9F   FF                      .
        mov     r7,a                    ;1BA0   FF                      .
        mov     r7,a                    ;1BA1   FF                      .
        mov     r7,a                    ;1BA2   FF                      .
        mov     r7,a                    ;1BA3   FF                      .
        mov     r7,a                    ;1BA4   FF                      .
        mov     r7,a                    ;1BA5   FF                      .
        mov     r7,a                    ;1BA6   FF                      .
        mov     r7,a                    ;1BA7   FF                      .
        mov     r7,a                    ;1BA8   FF                      .
        mov     r7,a                    ;1BA9   FF                      .
        mov     r7,a                    ;1BAA   FF                      .
        mov     r7,a                    ;1BAB   FF                      .
        mov     r7,a                    ;1BAC   FF                      .
        mov     r7,a                    ;1BAD   FF                      .
        mov     r7,a                    ;1BAE   FF                      .
        mov     r7,a                    ;1BAF   FF                      .
        mov     r7,a                    ;1BB0   FF                      .
        mov     r7,a                    ;1BB1   FF                      .
        mov     r7,a                    ;1BB2   FF                      .
        mov     r7,a                    ;1BB3   FF                      .
        mov     r7,a                    ;1BB4   FF                      .
        mov     r7,a                    ;1BB5   FF                      .
        mov     r7,a                    ;1BB6   FF                      .
        mov     r7,a                    ;1BB7   FF                      .
        mov     r7,a                    ;1BB8   FF                      .
        mov     r7,a                    ;1BB9   FF                      .
        mov     r7,a                    ;1BBA   FF                      .
        mov     r7,a                    ;1BBB   FF                      .
        mov     r7,a                    ;1BBC   FF                      .
        mov     r7,a                    ;1BBD   FF                      .
        mov     r7,a                    ;1BBE   FF                      .
        mov     r7,a                    ;1BBF   FF                      .
        mov     r7,a                    ;1BC0   FF                      .
        mov     r7,a                    ;1BC1   FF                      .
        mov     r7,a                    ;1BC2   FF                      .
        mov     r7,a                    ;1BC3   FF                      .
        mov     r7,a                    ;1BC4   FF                      .
        mov     r7,a                    ;1BC5   FF                      .
        mov     r7,a                    ;1BC6   FF                      .
        mov     r7,a                    ;1BC7   FF                      .
        mov     r7,a                    ;1BC8   FF                      .
        mov     r7,a                    ;1BC9   FF                      .
        mov     r7,a                    ;1BCA   FF                      .
        mov     r7,a                    ;1BCB   FF                      .
        mov     r7,a                    ;1BCC   FF                      .
        mov     r7,a                    ;1BCD   FF                      .
        mov     r7,a                    ;1BCE   FF                      .
        mov     r7,a                    ;1BCF   FF                      .
        mov     r7,a                    ;1BD0   FF                      .
        mov     r7,a                    ;1BD1   FF                      .
        mov     r7,a                    ;1BD2   FF                      .
        mov     r7,a                    ;1BD3   FF                      .
        mov     r7,a                    ;1BD4   FF                      .
        mov     r7,a                    ;1BD5   FF                      .
        mov     r7,a                    ;1BD6   FF                      .
        mov     r7,a                    ;1BD7   FF                      .
        mov     r7,a                    ;1BD8   FF                      .
        mov     r7,a                    ;1BD9   FF                      .
        mov     r7,a                    ;1BDA   FF                      .
        mov     r7,a                    ;1BDB   FF                      .
        mov     r7,a                    ;1BDC   FF                      .
        mov     r7,a                    ;1BDD   FF                      .
        mov     r7,a                    ;1BDE   FF                      .
        mov     r7,a                    ;1BDF   FF                      .
        mov     r7,a                    ;1BE0   FF                      .
        mov     r7,a                    ;1BE1   FF                      .
        mov     r7,a                    ;1BE2   FF                      .
        mov     r7,a                    ;1BE3   FF                      .
        mov     r7,a                    ;1BE4   FF                      .
        mov     r7,a                    ;1BE5   FF                      .
        mov     r7,a                    ;1BE6   FF                      .
        mov     r7,a                    ;1BE7   FF                      .
        mov     r7,a                    ;1BE8   FF                      .
        mov     r7,a                    ;1BE9   FF                      .
        mov     r7,a                    ;1BEA   FF                      .
        mov     r7,a                    ;1BEB   FF                      .
        mov     r7,a                    ;1BEC   FF                      .
        mov     r7,a                    ;1BED   FF                      .
        mov     r7,a                    ;1BEE   FF                      .
        mov     r7,a                    ;1BEF   FF                      .
        mov     r7,a                    ;1BF0   FF                      .
        mov     r7,a                    ;1BF1   FF                      .
        mov     r7,a                    ;1BF2   FF                      .
        mov     r7,a                    ;1BF3   FF                      .
        mov     r7,a                    ;1BF4   FF                      .
        mov     r7,a                    ;1BF5   FF                      .
        mov     r7,a                    ;1BF6   FF                      .
        mov     r7,a                    ;1BF7   FF                      .
        mov     r7,a                    ;1BF8   FF                      .
        mov     r7,a                    ;1BF9   FF                      .
        mov     r7,a                    ;1BFA   FF                      .
        mov     r7,a                    ;1BFB   FF                      .
        mov     r7,a                    ;1BFC   FF                      .
        mov     r7,a                    ;1BFD   FF                      .
        mov     r7,a                    ;1BFE   FF                      .
        mov     r7,a                    ;1BFF   FF                      .
        mov     r7,a                    ;1C00   FF                      .
        mov     r7,a                    ;1C01   FF                      .
        mov     r7,a                    ;1C02   FF                      .
        mov     r7,a                    ;1C03   FF                      .
        mov     r7,a                    ;1C04   FF                      .
        mov     r7,a                    ;1C05   FF                      .
        mov     r7,a                    ;1C06   FF                      .
        mov     r7,a                    ;1C07   FF                      .
        mov     r7,a                    ;1C08   FF                      .
        mov     r7,a                    ;1C09   FF                      .
        mov     r7,a                    ;1C0A   FF                      .
        mov     r7,a                    ;1C0B   FF                      .
        mov     r7,a                    ;1C0C   FF                      .
        mov     r7,a                    ;1C0D   FF                      .
        mov     r7,a                    ;1C0E   FF                      .
        mov     r7,a                    ;1C0F   FF                      .
        mov     r7,a                    ;1C10   FF                      .
        mov     r7,a                    ;1C11   FF                      .
        mov     r7,a                    ;1C12   FF                      .
        mov     r7,a                    ;1C13   FF                      .
        mov     r7,a                    ;1C14   FF                      .
        mov     r7,a                    ;1C15   FF                      .
        mov     r7,a                    ;1C16   FF                      .
        mov     r7,a                    ;1C17   FF                      .
        mov     r7,a                    ;1C18   FF                      .
        mov     r7,a                    ;1C19   FF                      .
        mov     r7,a                    ;1C1A   FF                      .
        mov     r7,a                    ;1C1B   FF                      .
        mov     r7,a                    ;1C1C   FF                      .
        mov     r7,a                    ;1C1D   FF                      .
        mov     r7,a                    ;1C1E   FF                      .
        mov     r7,a                    ;1C1F   FF                      .
        mov     r7,a                    ;1C20   FF                      .
        mov     r7,a                    ;1C21   FF                      .
        mov     r7,a                    ;1C22   FF                      .
        mov     r7,a                    ;1C23   FF                      .
        mov     r7,a                    ;1C24   FF                      .
        mov     r7,a                    ;1C25   FF                      .
        mov     r7,a                    ;1C26   FF                      .
        mov     r7,a                    ;1C27   FF                      .
        mov     r7,a                    ;1C28   FF                      .
        mov     r7,a                    ;1C29   FF                      .
        mov     r7,a                    ;1C2A   FF                      .
        mov     r7,a                    ;1C2B   FF                      .
        mov     r7,a                    ;1C2C   FF                      .
        mov     r7,a                    ;1C2D   FF                      .
        mov     r7,a                    ;1C2E   FF                      .
        mov     r7,a                    ;1C2F   FF                      .
        mov     r7,a                    ;1C30   FF                      .
        mov     r7,a                    ;1C31   FF                      .
        mov     r7,a                    ;1C32   FF                      .
        mov     r7,a                    ;1C33   FF                      .
        mov     r7,a                    ;1C34   FF                      .
        mov     r7,a                    ;1C35   FF                      .
        mov     r7,a                    ;1C36   FF                      .
        mov     r7,a                    ;1C37   FF                      .
        mov     r7,a                    ;1C38   FF                      .
        mov     r7,a                    ;1C39   FF                      .
        mov     r7,a                    ;1C3A   FF                      .
        mov     r7,a                    ;1C3B   FF                      .
        mov     r7,a                    ;1C3C   FF                      .
        mov     r7,a                    ;1C3D   FF                      .
        mov     r7,a                    ;1C3E   FF                      .
        mov     r7,a                    ;1C3F   FF                      .
        mov     r7,a                    ;1C40   FF                      .
        mov     r7,a                    ;1C41   FF                      .
        mov     r7,a                    ;1C42   FF                      .
        mov     r7,a                    ;1C43   FF                      .
        mov     r7,a                    ;1C44   FF                      .
        mov     r7,a                    ;1C45   FF                      .
        mov     r7,a                    ;1C46   FF                      .
        mov     r7,a                    ;1C47   FF                      .
        mov     r7,a                    ;1C48   FF                      .
        mov     r7,a                    ;1C49   FF                      .
        mov     r7,a                    ;1C4A   FF                      .
        mov     r7,a                    ;1C4B   FF                      .
        mov     r7,a                    ;1C4C   FF                      .
        mov     r7,a                    ;1C4D   FF                      .
        mov     r7,a                    ;1C4E   FF                      .
        mov     r7,a                    ;1C4F   FF                      .
        mov     r7,a                    ;1C50   FF                      .
        mov     r7,a                    ;1C51   FF                      .
        mov     r7,a                    ;1C52   FF                      .
        mov     r7,a                    ;1C53   FF                      .
        mov     r7,a                    ;1C54   FF                      .
        mov     r7,a                    ;1C55   FF                      .
        mov     r7,a                    ;1C56   FF                      .
        mov     r7,a                    ;1C57   FF                      .
        mov     r7,a                    ;1C58   FF                      .
        mov     r7,a                    ;1C59   FF                      .
        mov     r7,a                    ;1C5A   FF                      .
        mov     r7,a                    ;1C5B   FF                      .
        mov     r7,a                    ;1C5C   FF                      .
        mov     r7,a                    ;1C5D   FF                      .
        mov     r7,a                    ;1C5E   FF                      .
        mov     r7,a                    ;1C5F   FF                      .
        mov     r7,a                    ;1C60   FF                      .
        mov     r7,a                    ;1C61   FF                      .
        mov     r7,a                    ;1C62   FF                      .
        mov     r7,a                    ;1C63   FF                      .
        mov     r7,a                    ;1C64   FF                      .
        mov     r7,a                    ;1C65   FF                      .
        mov     r7,a                    ;1C66   FF                      .
        mov     r7,a                    ;1C67   FF                      .
        mov     r7,a                    ;1C68   FF                      .
        mov     r7,a                    ;1C69   FF                      .
        mov     r7,a                    ;1C6A   FF                      .
        mov     r7,a                    ;1C6B   FF                      .
        mov     r7,a                    ;1C6C   FF                      .
        mov     r7,a                    ;1C6D   FF                      .
        mov     r7,a                    ;1C6E   FF                      .
        mov     r7,a                    ;1C6F   FF                      .
        mov     r7,a                    ;1C70   FF                      .
        mov     r7,a                    ;1C71   FF                      .
        mov     r7,a                    ;1C72   FF                      .
        mov     r7,a                    ;1C73   FF                      .
        mov     r7,a                    ;1C74   FF                      .
        mov     r7,a                    ;1C75   FF                      .
        mov     r7,a                    ;1C76   FF                      .
        mov     r7,a                    ;1C77   FF                      .
        mov     r7,a                    ;1C78   FF                      .
        mov     r7,a                    ;1C79   FF                      .
        mov     r7,a                    ;1C7A   FF                      .
        mov     r7,a                    ;1C7B   FF                      .
        mov     r7,a                    ;1C7C   FF                      .
        mov     r7,a                    ;1C7D   FF                      .
        mov     r7,a                    ;1C7E   FF                      .
        mov     r7,a                    ;1C7F   FF                      .
        mov     r7,a                    ;1C80   FF                      .
        mov     r7,a                    ;1C81   FF                      .
        mov     r7,a                    ;1C82   FF                      .
        mov     r7,a                    ;1C83   FF                      .
        mov     r7,a                    ;1C84   FF                      .
        mov     r7,a                    ;1C85   FF                      .
        mov     r7,a                    ;1C86   FF                      .
        mov     r7,a                    ;1C87   FF                      .
        mov     r7,a                    ;1C88   FF                      .
        mov     r7,a                    ;1C89   FF                      .
        mov     r7,a                    ;1C8A   FF                      .
        mov     r7,a                    ;1C8B   FF                      .
        mov     r7,a                    ;1C8C   FF                      .
        mov     r7,a                    ;1C8D   FF                      .
        mov     r7,a                    ;1C8E   FF                      .
        mov     r7,a                    ;1C8F   FF                      .
        mov     r7,a                    ;1C90   FF                      .
        mov     r7,a                    ;1C91   FF                      .
        mov     r7,a                    ;1C92   FF                      .
        mov     r7,a                    ;1C93   FF                      .
        mov     r7,a                    ;1C94   FF                      .
        mov     r7,a                    ;1C95   FF                      .
        mov     r7,a                    ;1C96   FF                      .
        mov     r7,a                    ;1C97   FF                      .
        mov     r7,a                    ;1C98   FF                      .
        mov     r7,a                    ;1C99   FF                      .
        mov     r7,a                    ;1C9A   FF                      .
        mov     r7,a                    ;1C9B   FF                      .
        mov     r7,a                    ;1C9C   FF                      .
        mov     r7,a                    ;1C9D   FF                      .
        mov     r7,a                    ;1C9E   FF                      .
        mov     r7,a                    ;1C9F   FF                      .
        mov     r7,a                    ;1CA0   FF                      .
        mov     r7,a                    ;1CA1   FF                      .
        mov     r7,a                    ;1CA2   FF                      .
        mov     r7,a                    ;1CA3   FF                      .
        mov     r7,a                    ;1CA4   FF                      .
        mov     r7,a                    ;1CA5   FF                      .
        mov     r7,a                    ;1CA6   FF                      .
        mov     r7,a                    ;1CA7   FF                      .
        mov     r7,a                    ;1CA8   FF                      .
        mov     r7,a                    ;1CA9   FF                      .
        mov     r7,a                    ;1CAA   FF                      .
        mov     r7,a                    ;1CAB   FF                      .
        mov     r7,a                    ;1CAC   FF                      .
        mov     r7,a                    ;1CAD   FF                      .
        mov     r7,a                    ;1CAE   FF                      .
        mov     r7,a                    ;1CAF   FF                      .
        mov     r7,a                    ;1CB0   FF                      .
        mov     r7,a                    ;1CB1   FF                      .
        mov     r7,a                    ;1CB2   FF                      .
        mov     r7,a                    ;1CB3   FF                      .
        mov     r7,a                    ;1CB4   FF                      .
        mov     r7,a                    ;1CB5   FF                      .
        mov     r7,a                    ;1CB6   FF                      .
        mov     r7,a                    ;1CB7   FF                      .
        mov     r7,a                    ;1CB8   FF                      .
        mov     r7,a                    ;1CB9   FF                      .
        mov     r7,a                    ;1CBA   FF                      .
        mov     r7,a                    ;1CBB   FF                      .
        mov     r7,a                    ;1CBC   FF                      .
        mov     r7,a                    ;1CBD   FF                      .
        mov     r7,a                    ;1CBE   FF                      .
        mov     r7,a                    ;1CBF   FF                      .
        mov     r7,a                    ;1CC0   FF                      .
        mov     r7,a                    ;1CC1   FF                      .
        mov     r7,a                    ;1CC2   FF                      .
        mov     r7,a                    ;1CC3   FF                      .
        mov     r7,a                    ;1CC4   FF                      .
        mov     r7,a                    ;1CC5   FF                      .
        mov     r7,a                    ;1CC6   FF                      .
        mov     r7,a                    ;1CC7   FF                      .
        mov     r7,a                    ;1CC8   FF                      .
        mov     r7,a                    ;1CC9   FF                      .
        mov     r7,a                    ;1CCA   FF                      .
        mov     r7,a                    ;1CCB   FF                      .
        mov     r7,a                    ;1CCC   FF                      .
        mov     r7,a                    ;1CCD   FF                      .
        mov     r7,a                    ;1CCE   FF                      .
        mov     r7,a                    ;1CCF   FF                      .
        mov     r7,a                    ;1CD0   FF                      .
        mov     r7,a                    ;1CD1   FF                      .
        mov     r7,a                    ;1CD2   FF                      .
        mov     r7,a                    ;1CD3   FF                      .
        mov     r7,a                    ;1CD4   FF                      .
        mov     r7,a                    ;1CD5   FF                      .
        mov     r7,a                    ;1CD6   FF                      .
        mov     r7,a                    ;1CD7   FF                      .
        mov     r7,a                    ;1CD8   FF                      .
        mov     r7,a                    ;1CD9   FF                      .
        mov     r7,a                    ;1CDA   FF                      .
        mov     r7,a                    ;1CDB   FF                      .
        mov     r7,a                    ;1CDC   FF                      .
        mov     r7,a                    ;1CDD   FF                      .
        mov     r7,a                    ;1CDE   FF                      .
        mov     r7,a                    ;1CDF   FF                      .
        mov     r7,a                    ;1CE0   FF                      .
        mov     r7,a                    ;1CE1   FF                      .
        mov     r7,a                    ;1CE2   FF                      .
        mov     r7,a                    ;1CE3   FF                      .
        mov     r7,a                    ;1CE4   FF                      .
        mov     r7,a                    ;1CE5   FF                      .
        mov     r7,a                    ;1CE6   FF                      .
        mov     r7,a                    ;1CE7   FF                      .
        mov     r7,a                    ;1CE8   FF                      .
        mov     r7,a                    ;1CE9   FF                      .
        mov     r7,a                    ;1CEA   FF                      .
        mov     r7,a                    ;1CEB   FF                      .
        mov     r7,a                    ;1CEC   FF                      .
        mov     r7,a                    ;1CED   FF                      .
        mov     r7,a                    ;1CEE   FF                      .
        mov     r7,a                    ;1CEF   FF                      .
        mov     r7,a                    ;1CF0   FF                      .
        mov     r7,a                    ;1CF1   FF                      .
        mov     r7,a                    ;1CF2   FF                      .
        mov     r7,a                    ;1CF3   FF                      .
        mov     r7,a                    ;1CF4   FF                      .
        mov     r7,a                    ;1CF5   FF                      .
        mov     r7,a                    ;1CF6   FF                      .
        mov     r7,a                    ;1CF7   FF                      .
        mov     r7,a                    ;1CF8   FF                      .
        mov     r7,a                    ;1CF9   FF                      .
        mov     r7,a                    ;1CFA   FF                      .
        mov     r7,a                    ;1CFB   FF                      .
        mov     r7,a                    ;1CFC   FF                      .
        mov     r7,a                    ;1CFD   FF                      .
        mov     r7,a                    ;1CFE   FF                      .
        mov     r7,a                    ;1CFF   FF                      .
        mov     r7,a                    ;1D00   FF                      .
        mov     r7,a                    ;1D01   FF                      .
        mov     r7,a                    ;1D02   FF                      .
        mov     r7,a                    ;1D03   FF                      .
        mov     r7,a                    ;1D04   FF                      .
        mov     r7,a                    ;1D05   FF                      .
        mov     r7,a                    ;1D06   FF                      .
        mov     r7,a                    ;1D07   FF                      .
        mov     r7,a                    ;1D08   FF                      .
        mov     r7,a                    ;1D09   FF                      .
        mov     r7,a                    ;1D0A   FF                      .
        mov     r7,a                    ;1D0B   FF                      .
        mov     r7,a                    ;1D0C   FF                      .
        mov     r7,a                    ;1D0D   FF                      .
        mov     r7,a                    ;1D0E   FF                      .
        mov     r7,a                    ;1D0F   FF                      .
        mov     r7,a                    ;1D10   FF                      .
        mov     r7,a                    ;1D11   FF                      .
        mov     r7,a                    ;1D12   FF                      .
        mov     r7,a                    ;1D13   FF                      .
        mov     r7,a                    ;1D14   FF                      .
        mov     r7,a                    ;1D15   FF                      .
        mov     r7,a                    ;1D16   FF                      .
        mov     r7,a                    ;1D17   FF                      .
        mov     r7,a                    ;1D18   FF                      .
        mov     r7,a                    ;1D19   FF                      .
        mov     r7,a                    ;1D1A   FF                      .
        mov     r7,a                    ;1D1B   FF                      .
        mov     r7,a                    ;1D1C   FF                      .
        mov     r7,a                    ;1D1D   FF                      .
        mov     r7,a                    ;1D1E   FF                      .
        mov     r7,a                    ;1D1F   FF                      .
        mov     r7,a                    ;1D20   FF                      .
        mov     r7,a                    ;1D21   FF                      .
        mov     r7,a                    ;1D22   FF                      .
        mov     r7,a                    ;1D23   FF                      .
        mov     r7,a                    ;1D24   FF                      .
        mov     r7,a                    ;1D25   FF                      .
        mov     r7,a                    ;1D26   FF                      .
        mov     r7,a                    ;1D27   FF                      .
        mov     r7,a                    ;1D28   FF                      .
        mov     r7,a                    ;1D29   FF                      .
        mov     r7,a                    ;1D2A   FF                      .
        mov     r7,a                    ;1D2B   FF                      .
        mov     r7,a                    ;1D2C   FF                      .
        mov     r7,a                    ;1D2D   FF                      .
        mov     r7,a                    ;1D2E   FF                      .
        mov     r7,a                    ;1D2F   FF                      .
        mov     r7,a                    ;1D30   FF                      .
        mov     r7,a                    ;1D31   FF                      .
        mov     r7,a                    ;1D32   FF                      .
        mov     r7,a                    ;1D33   FF                      .
        mov     r7,a                    ;1D34   FF                      .
        mov     r7,a                    ;1D35   FF                      .
        mov     r7,a                    ;1D36   FF                      .
        mov     r7,a                    ;1D37   FF                      .
        mov     r7,a                    ;1D38   FF                      .
        mov     r7,a                    ;1D39   FF                      .
        mov     r7,a                    ;1D3A   FF                      .
        mov     r7,a                    ;1D3B   FF                      .
        mov     r7,a                    ;1D3C   FF                      .
        mov     r7,a                    ;1D3D   FF                      .
        mov     r7,a                    ;1D3E   FF                      .
        mov     r7,a                    ;1D3F   FF                      .
        mov     r7,a                    ;1D40   FF                      .
        mov     r7,a                    ;1D41   FF                      .
        mov     r7,a                    ;1D42   FF                      .
        mov     r7,a                    ;1D43   FF                      .
        mov     r7,a                    ;1D44   FF                      .
        mov     r7,a                    ;1D45   FF                      .
        mov     r7,a                    ;1D46   FF                      .
        mov     r7,a                    ;1D47   FF                      .
        mov     r7,a                    ;1D48   FF                      .
        mov     r7,a                    ;1D49   FF                      .
        mov     r7,a                    ;1D4A   FF                      .
        mov     r7,a                    ;1D4B   FF                      .
        mov     r7,a                    ;1D4C   FF                      .
        mov     r7,a                    ;1D4D   FF                      .
        mov     r7,a                    ;1D4E   FF                      .
        mov     r7,a                    ;1D4F   FF                      .
        mov     r7,a                    ;1D50   FF                      .
        mov     r7,a                    ;1D51   FF                      .
        mov     r7,a                    ;1D52   FF                      .
        mov     r7,a                    ;1D53   FF                      .
        mov     r7,a                    ;1D54   FF                      .
        mov     r7,a                    ;1D55   FF                      .
        mov     r7,a                    ;1D56   FF                      .
        mov     r7,a                    ;1D57   FF                      .
        mov     r7,a                    ;1D58   FF                      .
        mov     r7,a                    ;1D59   FF                      .
        mov     r7,a                    ;1D5A   FF                      .
        mov     r7,a                    ;1D5B   FF                      .
        mov     r7,a                    ;1D5C   FF                      .
        mov     r7,a                    ;1D5D   FF                      .
        mov     r7,a                    ;1D5E   FF                      .
        mov     r7,a                    ;1D5F   FF                      .
        mov     r7,a                    ;1D60   FF                      .
        mov     r7,a                    ;1D61   FF                      .
        mov     r7,a                    ;1D62   FF                      .
        mov     r7,a                    ;1D63   FF                      .
        mov     r7,a                    ;1D64   FF                      .
        mov     r7,a                    ;1D65   FF                      .
        mov     r7,a                    ;1D66   FF                      .
        mov     r7,a                    ;1D67   FF                      .
        mov     r7,a                    ;1D68   FF                      .
        mov     r7,a                    ;1D69   FF                      .
        mov     r7,a                    ;1D6A   FF                      .
        mov     r7,a                    ;1D6B   FF                      .
        mov     r7,a                    ;1D6C   FF                      .
        mov     r7,a                    ;1D6D   FF                      .
        mov     r7,a                    ;1D6E   FF                      .
        mov     r7,a                    ;1D6F   FF                      .
        mov     r7,a                    ;1D70   FF                      .
        mov     r7,a                    ;1D71   FF                      .
        mov     r7,a                    ;1D72   FF                      .
        mov     r7,a                    ;1D73   FF                      .
        mov     r7,a                    ;1D74   FF                      .
        mov     r7,a                    ;1D75   FF                      .
        mov     r7,a                    ;1D76   FF                      .
        mov     r7,a                    ;1D77   FF                      .
        mov     r7,a                    ;1D78   FF                      .
        mov     r7,a                    ;1D79   FF                      .
        mov     r7,a                    ;1D7A   FF                      .
        mov     r7,a                    ;1D7B   FF                      .
        mov     r7,a                    ;1D7C   FF                      .
        mov     r7,a                    ;1D7D   FF                      .
        mov     r7,a                    ;1D7E   FF                      .
        mov     r7,a                    ;1D7F   FF                      .
        mov     r7,a                    ;1D80   FF                      .
        mov     r7,a                    ;1D81   FF                      .
        mov     r7,a                    ;1D82   FF                      .
        mov     r7,a                    ;1D83   FF                      .
        mov     r7,a                    ;1D84   FF                      .
        mov     r7,a                    ;1D85   FF                      .
        mov     r7,a                    ;1D86   FF                      .
        mov     r7,a                    ;1D87   FF                      .
        mov     r7,a                    ;1D88   FF                      .
        mov     r7,a                    ;1D89   FF                      .
        mov     r7,a                    ;1D8A   FF                      .
        mov     r7,a                    ;1D8B   FF                      .
        mov     r7,a                    ;1D8C   FF                      .
        mov     r7,a                    ;1D8D   FF                      .
        mov     r7,a                    ;1D8E   FF                      .
        mov     r7,a                    ;1D8F   FF                      .
        mov     r7,a                    ;1D90   FF                      .
        mov     r7,a                    ;1D91   FF                      .
        mov     r7,a                    ;1D92   FF                      .
        mov     r7,a                    ;1D93   FF                      .
        mov     r7,a                    ;1D94   FF                      .
        mov     r7,a                    ;1D95   FF                      .
        mov     r7,a                    ;1D96   FF                      .
        mov     r7,a                    ;1D97   FF                      .
        mov     r7,a                    ;1D98   FF                      .
        mov     r7,a                    ;1D99   FF                      .
        mov     r7,a                    ;1D9A   FF                      .
        mov     r7,a                    ;1D9B   FF                      .
        mov     r7,a                    ;1D9C   FF                      .
        mov     r7,a                    ;1D9D   FF                      .
        mov     r7,a                    ;1D9E   FF                      .
        mov     r7,a                    ;1D9F   FF                      .
        mov     r7,a                    ;1DA0   FF                      .
        mov     r7,a                    ;1DA1   FF                      .
        mov     r7,a                    ;1DA2   FF                      .
        mov     r7,a                    ;1DA3   FF                      .
        mov     r7,a                    ;1DA4   FF                      .
        mov     r7,a                    ;1DA5   FF                      .
        mov     r7,a                    ;1DA6   FF                      .
        mov     r7,a                    ;1DA7   FF                      .
        mov     r7,a                    ;1DA8   FF                      .
        mov     r7,a                    ;1DA9   FF                      .
        mov     r7,a                    ;1DAA   FF                      .
        mov     r7,a                    ;1DAB   FF                      .
        mov     r7,a                    ;1DAC   FF                      .
        mov     r7,a                    ;1DAD   FF                      .
        mov     r7,a                    ;1DAE   FF                      .
        mov     r7,a                    ;1DAF   FF                      .
        mov     r7,a                    ;1DB0   FF                      .
        mov     r7,a                    ;1DB1   FF                      .
        mov     r7,a                    ;1DB2   FF                      .
        mov     r7,a                    ;1DB3   FF                      .
        mov     r7,a                    ;1DB4   FF                      .
        mov     r7,a                    ;1DB5   FF                      .
        mov     r7,a                    ;1DB6   FF                      .
        mov     r7,a                    ;1DB7   FF                      .
        mov     r7,a                    ;1DB8   FF                      .
        mov     r7,a                    ;1DB9   FF                      .
        mov     r7,a                    ;1DBA   FF                      .
        mov     r7,a                    ;1DBB   FF                      .
        mov     r7,a                    ;1DBC   FF                      .
        mov     r7,a                    ;1DBD   FF                      .
        mov     r7,a                    ;1DBE   FF                      .
        mov     r7,a                    ;1DBF   FF                      .
        mov     r7,a                    ;1DC0   FF                      .
        mov     r7,a                    ;1DC1   FF                      .
        mov     r7,a                    ;1DC2   FF                      .
        mov     r7,a                    ;1DC3   FF                      .
        mov     r7,a                    ;1DC4   FF                      .
        mov     r7,a                    ;1DC5   FF                      .
        mov     r7,a                    ;1DC6   FF                      .
        mov     r7,a                    ;1DC7   FF                      .
        mov     r7,a                    ;1DC8   FF                      .
        mov     r7,a                    ;1DC9   FF                      .
        mov     r7,a                    ;1DCA   FF                      .
        mov     r7,a                    ;1DCB   FF                      .
        mov     r7,a                    ;1DCC   FF                      .
        mov     r7,a                    ;1DCD   FF                      .
        mov     r7,a                    ;1DCE   FF                      .
        mov     r7,a                    ;1DCF   FF                      .
        mov     r7,a                    ;1DD0   FF                      .
        mov     r7,a                    ;1DD1   FF                      .
        mov     r7,a                    ;1DD2   FF                      .
        mov     r7,a                    ;1DD3   FF                      .
        mov     r7,a                    ;1DD4   FF                      .
        mov     r7,a                    ;1DD5   FF                      .
        mov     r7,a                    ;1DD6   FF                      .
        mov     r7,a                    ;1DD7   FF                      .
        mov     r7,a                    ;1DD8   FF                      .
        mov     r7,a                    ;1DD9   FF                      .
        mov     r7,a                    ;1DDA   FF                      .
        mov     r7,a                    ;1DDB   FF                      .
        mov     r7,a                    ;1DDC   FF                      .
        mov     r7,a                    ;1DDD   FF                      .
        mov     r7,a                    ;1DDE   FF                      .
        mov     r7,a                    ;1DDF   FF                      .
        mov     r7,a                    ;1DE0   FF                      .
        mov     r7,a                    ;1DE1   FF                      .
        mov     r7,a                    ;1DE2   FF                      .
        mov     r7,a                    ;1DE3   FF                      .
        mov     r7,a                    ;1DE4   FF                      .
        mov     r7,a                    ;1DE5   FF                      .
        mov     r7,a                    ;1DE6   FF                      .
        mov     r7,a                    ;1DE7   FF                      .
        mov     r7,a                    ;1DE8   FF                      .
        mov     r7,a                    ;1DE9   FF                      .
        mov     r7,a                    ;1DEA   FF                      .
        mov     r7,a                    ;1DEB   FF                      .
        mov     r7,a                    ;1DEC   FF                      .
        mov     r7,a                    ;1DED   FF                      .
        mov     r7,a                    ;1DEE   FF                      .
        mov     r7,a                    ;1DEF   FF                      .
        mov     r7,a                    ;1DF0   FF                      .
        mov     r7,a                    ;1DF1   FF                      .
        mov     r7,a                    ;1DF2   FF                      .
        mov     r7,a                    ;1DF3   FF                      .
        mov     r7,a                    ;1DF4   FF                      .
        mov     r7,a                    ;1DF5   FF                      .
        mov     r7,a                    ;1DF6   FF                      .
        mov     r7,a                    ;1DF7   FF                      .
        mov     r7,a                    ;1DF8   FF                      .
        mov     r7,a                    ;1DF9   FF                      .
        mov     r7,a                    ;1DFA   FF                      .
        mov     r7,a                    ;1DFB   FF                      .
        mov     r7,a                    ;1DFC   FF                      .
        mov     r7,a                    ;1DFD   FF                      .
        mov     r7,a                    ;1DFE   FF                      .
        mov     r7,a                    ;1DFF   FF                      .
        mov     r7,a                    ;1E00   FF                      .
        mov     r7,a                    ;1E01   FF                      .
        mov     r7,a                    ;1E02   FF                      .
        mov     r7,a                    ;1E03   FF                      .
        mov     r7,a                    ;1E04   FF                      .
        mov     r7,a                    ;1E05   FF                      .
        mov     r7,a                    ;1E06   FF                      .
        mov     r7,a                    ;1E07   FF                      .
        mov     r7,a                    ;1E08   FF                      .
        mov     r7,a                    ;1E09   FF                      .
        mov     r7,a                    ;1E0A   FF                      .
        mov     r7,a                    ;1E0B   FF                      .
        mov     r7,a                    ;1E0C   FF                      .
        mov     r7,a                    ;1E0D   FF                      .
        mov     r7,a                    ;1E0E   FF                      .
        mov     r7,a                    ;1E0F   FF                      .
        mov     r7,a                    ;1E10   FF                      .
        mov     r7,a                    ;1E11   FF                      .
        mov     r7,a                    ;1E12   FF                      .
        mov     r7,a                    ;1E13   FF                      .
        mov     r7,a                    ;1E14   FF                      .
        mov     r7,a                    ;1E15   FF                      .
        mov     r7,a                    ;1E16   FF                      .
        mov     r7,a                    ;1E17   FF                      .
        mov     r7,a                    ;1E18   FF                      .
        mov     r7,a                    ;1E19   FF                      .
        mov     r7,a                    ;1E1A   FF                      .
        mov     r7,a                    ;1E1B   FF                      .
        mov     r7,a                    ;1E1C   FF                      .
        mov     r7,a                    ;1E1D   FF                      .
        mov     r7,a                    ;1E1E   FF                      .
        mov     r7,a                    ;1E1F   FF                      .
        mov     r7,a                    ;1E20   FF                      .
        mov     r7,a                    ;1E21   FF                      .
        mov     r7,a                    ;1E22   FF                      .
        mov     r7,a                    ;1E23   FF                      .
        mov     r7,a                    ;1E24   FF                      .
        mov     r7,a                    ;1E25   FF                      .
        mov     r7,a                    ;1E26   FF                      .
        mov     r7,a                    ;1E27   FF                      .
        mov     r7,a                    ;1E28   FF                      .
        mov     r7,a                    ;1E29   FF                      .
        mov     r7,a                    ;1E2A   FF                      .
        mov     r7,a                    ;1E2B   FF                      .
        mov     r7,a                    ;1E2C   FF                      .
        mov     r7,a                    ;1E2D   FF                      .
        mov     r7,a                    ;1E2E   FF                      .
        mov     r7,a                    ;1E2F   FF                      .
        mov     r7,a                    ;1E30   FF                      .
        mov     r7,a                    ;1E31   FF                      .
        mov     r7,a                    ;1E32   FF                      .
        mov     r7,a                    ;1E33   FF                      .
        mov     r7,a                    ;1E34   FF                      .
        mov     r7,a                    ;1E35   FF                      .
        mov     r7,a                    ;1E36   FF                      .
        mov     r7,a                    ;1E37   FF                      .
        mov     r7,a                    ;1E38   FF                      .
        mov     r7,a                    ;1E39   FF                      .
        mov     r7,a                    ;1E3A   FF                      .
        mov     r7,a                    ;1E3B   FF                      .
        mov     r7,a                    ;1E3C   FF                      .
        mov     r7,a                    ;1E3D   FF                      .
        mov     r7,a                    ;1E3E   FF                      .
        mov     r7,a                    ;1E3F   FF                      .
        mov     r7,a                    ;1E40   FF                      .
        mov     r7,a                    ;1E41   FF                      .
        mov     r7,a                    ;1E42   FF                      .
        mov     r7,a                    ;1E43   FF                      .
        mov     r7,a                    ;1E44   FF                      .
        mov     r7,a                    ;1E45   FF                      .
        mov     r7,a                    ;1E46   FF                      .
        mov     r7,a                    ;1E47   FF                      .
        mov     r7,a                    ;1E48   FF                      .
        mov     r7,a                    ;1E49   FF                      .
        mov     r7,a                    ;1E4A   FF                      .
        mov     r7,a                    ;1E4B   FF                      .
        mov     r7,a                    ;1E4C   FF                      .
        mov     r7,a                    ;1E4D   FF                      .
        mov     r7,a                    ;1E4E   FF                      .
        mov     r7,a                    ;1E4F   FF                      .
        mov     r7,a                    ;1E50   FF                      .
        mov     r7,a                    ;1E51   FF                      .
        mov     r7,a                    ;1E52   FF                      .
        mov     r7,a                    ;1E53   FF                      .
        mov     r7,a                    ;1E54   FF                      .
        mov     r7,a                    ;1E55   FF                      .
        mov     r7,a                    ;1E56   FF                      .
        mov     r7,a                    ;1E57   FF                      .
        mov     r7,a                    ;1E58   FF                      .
        mov     r7,a                    ;1E59   FF                      .
        mov     r7,a                    ;1E5A   FF                      .
        mov     r7,a                    ;1E5B   FF                      .
        mov     r7,a                    ;1E5C   FF                      .
        mov     r7,a                    ;1E5D   FF                      .
        mov     r7,a                    ;1E5E   FF                      .
        mov     r7,a                    ;1E5F   FF                      .
        mov     r7,a                    ;1E60   FF                      .
        mov     r7,a                    ;1E61   FF                      .
        mov     r7,a                    ;1E62   FF                      .
        mov     r7,a                    ;1E63   FF                      .
        mov     r7,a                    ;1E64   FF                      .
        mov     r7,a                    ;1E65   FF                      .
        mov     r7,a                    ;1E66   FF                      .
        mov     r7,a                    ;1E67   FF                      .
        mov     r7,a                    ;1E68   FF                      .
        mov     r7,a                    ;1E69   FF                      .
        mov     r7,a                    ;1E6A   FF                      .
        mov     r7,a                    ;1E6B   FF                      .
        mov     r7,a                    ;1E6C   FF                      .
        mov     r7,a                    ;1E6D   FF                      .
        mov     r7,a                    ;1E6E   FF                      .
        mov     r7,a                    ;1E6F   FF                      .
        mov     r7,a                    ;1E70   FF                      .
        mov     r7,a                    ;1E71   FF                      .
        mov     r7,a                    ;1E72   FF                      .
        mov     r7,a                    ;1E73   FF                      .
        mov     r7,a                    ;1E74   FF                      .
        mov     r7,a                    ;1E75   FF                      .
        mov     r7,a                    ;1E76   FF                      .
        mov     r7,a                    ;1E77   FF                      .
        mov     r7,a                    ;1E78   FF                      .
        mov     r7,a                    ;1E79   FF                      .
        mov     r7,a                    ;1E7A   FF                      .
        mov     r7,a                    ;1E7B   FF                      .
        mov     r7,a                    ;1E7C   FF                      .
        mov     r7,a                    ;1E7D   FF                      .
        mov     r7,a                    ;1E7E   FF                      .
        mov     r7,a                    ;1E7F   FF                      .
        mov     r7,a                    ;1E80   FF                      .
        mov     r7,a                    ;1E81   FF                      .
        mov     r7,a                    ;1E82   FF                      .
        mov     r7,a                    ;1E83   FF                      .
        mov     r7,a                    ;1E84   FF                      .
        mov     r7,a                    ;1E85   FF                      .
        mov     r7,a                    ;1E86   FF                      .
        mov     r7,a                    ;1E87   FF                      .
        mov     r7,a                    ;1E88   FF                      .
        mov     r7,a                    ;1E89   FF                      .
        mov     r7,a                    ;1E8A   FF                      .
        mov     r7,a                    ;1E8B   FF                      .
        mov     r7,a                    ;1E8C   FF                      .
        mov     r7,a                    ;1E8D   FF                      .
        mov     r7,a                    ;1E8E   FF                      .
        mov     r7,a                    ;1E8F   FF                      .
        mov     r7,a                    ;1E90   FF                      .
        mov     r7,a                    ;1E91   FF                      .
        mov     r7,a                    ;1E92   FF                      .
        mov     r7,a                    ;1E93   FF                      .
        mov     r7,a                    ;1E94   FF                      .
        mov     r7,a                    ;1E95   FF                      .
        mov     r7,a                    ;1E96   FF                      .
        mov     r7,a                    ;1E97   FF                      .
        mov     r7,a                    ;1E98   FF                      .
        mov     r7,a                    ;1E99   FF                      .
        mov     r7,a                    ;1E9A   FF                      .
        mov     r7,a                    ;1E9B   FF                      .
        mov     r7,a                    ;1E9C   FF                      .
        mov     r7,a                    ;1E9D   FF                      .
        mov     r7,a                    ;1E9E   FF                      .
        mov     r7,a                    ;1E9F   FF                      .
        mov     r7,a                    ;1EA0   FF                      .
        mov     r7,a                    ;1EA1   FF                      .
        mov     r7,a                    ;1EA2   FF                      .
        mov     r7,a                    ;1EA3   FF                      .
        mov     r7,a                    ;1EA4   FF                      .
        mov     r7,a                    ;1EA5   FF                      .
        mov     r7,a                    ;1EA6   FF                      .
        mov     r7,a                    ;1EA7   FF                      .
        mov     r7,a                    ;1EA8   FF                      .
        mov     r7,a                    ;1EA9   FF                      .
        mov     r7,a                    ;1EAA   FF                      .
        mov     r7,a                    ;1EAB   FF                      .
        mov     r7,a                    ;1EAC   FF                      .
        mov     r7,a                    ;1EAD   FF                      .
        mov     r7,a                    ;1EAE   FF                      .
        mov     r7,a                    ;1EAF   FF                      .
        mov     r7,a                    ;1EB0   FF                      .
        mov     r7,a                    ;1EB1   FF                      .
        mov     r7,a                    ;1EB2   FF                      .
        mov     r7,a                    ;1EB3   FF                      .
        mov     r7,a                    ;1EB4   FF                      .
        mov     r7,a                    ;1EB5   FF                      .
        mov     r7,a                    ;1EB6   FF                      .
        mov     r7,a                    ;1EB7   FF                      .
        mov     r7,a                    ;1EB8   FF                      .
        mov     r7,a                    ;1EB9   FF                      .
        mov     r7,a                    ;1EBA   FF                      .
        mov     r7,a                    ;1EBB   FF                      .
        mov     r7,a                    ;1EBC   FF                      .
        mov     r7,a                    ;1EBD   FF                      .
        mov     r7,a                    ;1EBE   FF                      .
        mov     r7,a                    ;1EBF   FF                      .
        mov     r7,a                    ;1EC0   FF                      .
        mov     r7,a                    ;1EC1   FF                      .
        mov     r7,a                    ;1EC2   FF                      .
        mov     r7,a                    ;1EC3   FF                      .
        mov     r7,a                    ;1EC4   FF                      .
        mov     r7,a                    ;1EC5   FF                      .
        mov     r7,a                    ;1EC6   FF                      .
        mov     r7,a                    ;1EC7   FF                      .
        mov     r7,a                    ;1EC8   FF                      .
        mov     r7,a                    ;1EC9   FF                      .
        mov     r7,a                    ;1ECA   FF                      .
        mov     r7,a                    ;1ECB   FF                      .
        mov     r7,a                    ;1ECC   FF                      .
        mov     r7,a                    ;1ECD   FF                      .
        mov     r7,a                    ;1ECE   FF                      .
        mov     r7,a                    ;1ECF   FF                      .
        mov     r7,a                    ;1ED0   FF                      .
        mov     r7,a                    ;1ED1   FF                      .
        mov     r7,a                    ;1ED2   FF                      .
        mov     r7,a                    ;1ED3   FF                      .
        mov     r7,a                    ;1ED4   FF                      .
        mov     r7,a                    ;1ED5   FF                      .
        mov     r7,a                    ;1ED6   FF                      .
        mov     r7,a                    ;1ED7   FF                      .
        mov     r7,a                    ;1ED8   FF                      .
        mov     r7,a                    ;1ED9   FF                      .
        mov     r7,a                    ;1EDA   FF                      .
        mov     r7,a                    ;1EDB   FF                      .
        mov     r7,a                    ;1EDC   FF                      .
        mov     r7,a                    ;1EDD   FF                      .
        mov     r7,a                    ;1EDE   FF                      .
        mov     r7,a                    ;1EDF   FF                      .
        mov     r7,a                    ;1EE0   FF                      .
        mov     r7,a                    ;1EE1   FF                      .
        mov     r7,a                    ;1EE2   FF                      .
        mov     r7,a                    ;1EE3   FF                      .
        mov     r7,a                    ;1EE4   FF                      .
        mov     r7,a                    ;1EE5   FF                      .
        mov     r7,a                    ;1EE6   FF                      .
        mov     r7,a                    ;1EE7   FF                      .
        mov     r7,a                    ;1EE8   FF                      .
        mov     r7,a                    ;1EE9   FF                      .
        mov     r7,a                    ;1EEA   FF                      .
        mov     r7,a                    ;1EEB   FF                      .
        mov     r7,a                    ;1EEC   FF                      .
        mov     r7,a                    ;1EED   FF                      .
        mov     r7,a                    ;1EEE   FF                      .
        mov     r7,a                    ;1EEF   FF                      .
        mov     r7,a                    ;1EF0   FF                      .
        mov     r7,a                    ;1EF1   FF                      .
        mov     r7,a                    ;1EF2   FF                      .
        mov     r7,a                    ;1EF3   FF                      .
        mov     r7,a                    ;1EF4   FF                      .
        mov     r7,a                    ;1EF5   FF                      .
        mov     r7,a                    ;1EF6   FF                      .
        mov     r7,a                    ;1EF7   FF                      .
        mov     r7,a                    ;1EF8   FF                      .
        mov     r7,a                    ;1EF9   FF                      .
        mov     r7,a                    ;1EFA   FF                      .
        mov     r7,a                    ;1EFB   FF                      .
        mov     r7,a                    ;1EFC   FF                      .
        mov     r7,a                    ;1EFD   FF                      .
        mov     r7,a                    ;1EFE   FF                      .
        mov     r7,a                    ;1EFF   FF                      .
        mov     r7,a                    ;1F00   FF                      .
        mov     r7,a                    ;1F01   FF                      .
        mov     r7,a                    ;1F02   FF                      .
        mov     r7,a                    ;1F03   FF                      .
        mov     r7,a                    ;1F04   FF                      .
        mov     r7,a                    ;1F05   FF                      .
        mov     r7,a                    ;1F06   FF                      .
        mov     r7,a                    ;1F07   FF                      .
        mov     r7,a                    ;1F08   FF                      .
        mov     r7,a                    ;1F09   FF                      .
        mov     r7,a                    ;1F0A   FF                      .
        mov     r7,a                    ;1F0B   FF                      .
        mov     r7,a                    ;1F0C   FF                      .
        mov     r7,a                    ;1F0D   FF                      .
        mov     r7,a                    ;1F0E   FF                      .
        mov     r7,a                    ;1F0F   FF                      .
        mov     r7,a                    ;1F10   FF                      .
        mov     r7,a                    ;1F11   FF                      .
        mov     r7,a                    ;1F12   FF                      .
        mov     r7,a                    ;1F13   FF                      .
        mov     r7,a                    ;1F14   FF                      .
        mov     r7,a                    ;1F15   FF                      .
        mov     r7,a                    ;1F16   FF                      .
        mov     r7,a                    ;1F17   FF                      .
        mov     r7,a                    ;1F18   FF                      .
        mov     r7,a                    ;1F19   FF                      .
        mov     r7,a                    ;1F1A   FF                      .
        mov     r7,a                    ;1F1B   FF                      .
        mov     r7,a                    ;1F1C   FF                      .
        mov     r7,a                    ;1F1D   FF                      .
        mov     r7,a                    ;1F1E   FF                      .
        mov     r7,a                    ;1F1F   FF                      .
        mov     r7,a                    ;1F20   FF                      .
        mov     r7,a                    ;1F21   FF                      .
        mov     r7,a                    ;1F22   FF                      .
        mov     r7,a                    ;1F23   FF                      .
        mov     r7,a                    ;1F24   FF                      .
        mov     r7,a                    ;1F25   FF                      .
        mov     r7,a                    ;1F26   FF                      .
        mov     r7,a                    ;1F27   FF                      .
        mov     r7,a                    ;1F28   FF                      .
        mov     r7,a                    ;1F29   FF                      .
        mov     r7,a                    ;1F2A   FF                      .
        mov     r7,a                    ;1F2B   FF                      .
        mov     r7,a                    ;1F2C   FF                      .
        mov     r7,a                    ;1F2D   FF                      .
        mov     r7,a                    ;1F2E   FF                      .
        mov     r7,a                    ;1F2F   FF                      .
        mov     r7,a                    ;1F30   FF                      .
        mov     r7,a                    ;1F31   FF                      .
        mov     r7,a                    ;1F32   FF                      .
        mov     r7,a                    ;1F33   FF                      .
        mov     r7,a                    ;1F34   FF                      .
        mov     r7,a                    ;1F35   FF                      .
        mov     r7,a                    ;1F36   FF                      .
        mov     r7,a                    ;1F37   FF                      .
        mov     r7,a                    ;1F38   FF                      .
        mov     r7,a                    ;1F39   FF                      .
        mov     r7,a                    ;1F3A   FF                      .
        mov     r7,a                    ;1F3B   FF                      .
        mov     r7,a                    ;1F3C   FF                      .
        mov     r7,a                    ;1F3D   FF                      .
        mov     r7,a                    ;1F3E   FF                      .
        mov     r7,a                    ;1F3F   FF                      .
        mov     r7,a                    ;1F40   FF                      .
        mov     r7,a                    ;1F41   FF                      .
        mov     r7,a                    ;1F42   FF                      .
        mov     r7,a                    ;1F43   FF                      .
        mov     r7,a                    ;1F44   FF                      .
        mov     r7,a                    ;1F45   FF                      .
        mov     r7,a                    ;1F46   FF                      .
        mov     r7,a                    ;1F47   FF                      .
        mov     r7,a                    ;1F48   FF                      .
        mov     r7,a                    ;1F49   FF                      .
        mov     r7,a                    ;1F4A   FF                      .
        mov     r7,a                    ;1F4B   FF                      .
        mov     r7,a                    ;1F4C   FF                      .
        mov     r7,a                    ;1F4D   FF                      .
        mov     r7,a                    ;1F4E   FF                      .
        mov     r7,a                    ;1F4F   FF                      .
        mov     r7,a                    ;1F50   FF                      .
        mov     r7,a                    ;1F51   FF                      .
        mov     r7,a                    ;1F52   FF                      .
        mov     r7,a                    ;1F53   FF                      .
        mov     r7,a                    ;1F54   FF                      .
        mov     r7,a                    ;1F55   FF                      .
        mov     r7,a                    ;1F56   FF                      .
        mov     r7,a                    ;1F57   FF                      .
        mov     r7,a                    ;1F58   FF                      .
        mov     r7,a                    ;1F59   FF                      .
        mov     r7,a                    ;1F5A   FF                      .
        mov     r7,a                    ;1F5B   FF                      .
        mov     r7,a                    ;1F5C   FF                      .
        mov     r7,a                    ;1F5D   FF                      .
        mov     r7,a                    ;1F5E   FF                      .
        mov     r7,a                    ;1F5F   FF                      .
        mov     r7,a                    ;1F60   FF                      .
        mov     r7,a                    ;1F61   FF                      .
        mov     r7,a                    ;1F62   FF                      .
        mov     r7,a                    ;1F63   FF                      .
        mov     r7,a                    ;1F64   FF                      .
        mov     r7,a                    ;1F65   FF                      .
        mov     r7,a                    ;1F66   FF                      .
        mov     r7,a                    ;1F67   FF                      .
        mov     r7,a                    ;1F68   FF                      .
        mov     r7,a                    ;1F69   FF                      .
        mov     r7,a                    ;1F6A   FF                      .
        mov     r7,a                    ;1F6B   FF                      .
        mov     r7,a                    ;1F6C   FF                      .
        mov     r7,a                    ;1F6D   FF                      .
        mov     r7,a                    ;1F6E   FF                      .
        mov     r7,a                    ;1F6F   FF                      .
        mov     r7,a                    ;1F70   FF                      .
        mov     r7,a                    ;1F71   FF                      .
        mov     r7,a                    ;1F72   FF                      .
        mov     r7,a                    ;1F73   FF                      .
        mov     r7,a                    ;1F74   FF                      .
        mov     r7,a                    ;1F75   FF                      .
        mov     r7,a                    ;1F76   FF                      .
        mov     r7,a                    ;1F77   FF                      .
        mov     r7,a                    ;1F78   FF                      .
        mov     r7,a                    ;1F79   FF                      .
        mov     r7,a                    ;1F7A   FF                      .
        mov     r7,a                    ;1F7B   FF                      .
        mov     r7,a                    ;1F7C   FF                      .
        mov     r7,a                    ;1F7D   FF                      .
        mov     r7,a                    ;1F7E   FF                      .
        mov     r7,a                    ;1F7F   FF                      .
        mov     r7,a                    ;1F80   FF                      .
        mov     r7,a                    ;1F81   FF                      .
        mov     r7,a                    ;1F82   FF                      .
        mov     r7,a                    ;1F83   FF                      .
        mov     r7,a                    ;1F84   FF                      .
        mov     r7,a                    ;1F85   FF                      .
        mov     r7,a                    ;1F86   FF                      .
        mov     r7,a                    ;1F87   FF                      .
        mov     r7,a                    ;1F88   FF                      .
        mov     r7,a                    ;1F89   FF                      .
        mov     r7,a                    ;1F8A   FF                      .
        mov     r7,a                    ;1F8B   FF                      .
        mov     r7,a                    ;1F8C   FF                      .
        mov     r7,a                    ;1F8D   FF                      .
        mov     r7,a                    ;1F8E   FF                      .
        mov     r7,a                    ;1F8F   FF                      .
        mov     r7,a                    ;1F90   FF                      .
        mov     r7,a                    ;1F91   FF                      .
        mov     r7,a                    ;1F92   FF                      .
        mov     r7,a                    ;1F93   FF                      .
        mov     r7,a                    ;1F94   FF                      .
        mov     r7,a                    ;1F95   FF                      .
        mov     r7,a                    ;1F96   FF                      .
        mov     r7,a                    ;1F97   FF                      .
        mov     r7,a                    ;1F98   FF                      .
        mov     r7,a                    ;1F99   FF                      .
        mov     r7,a                    ;1F9A   FF                      .
        mov     r7,a                    ;1F9B   FF                      .
        mov     r7,a                    ;1F9C   FF                      .
        mov     r7,a                    ;1F9D   FF                      .
        mov     r7,a                    ;1F9E   FF                      .
        mov     r7,a                    ;1F9F   FF                      .
        mov     r7,a                    ;1FA0   FF                      .
        mov     r7,a                    ;1FA1   FF                      .
        mov     r7,a                    ;1FA2   FF                      .
        mov     r7,a                    ;1FA3   FF                      .
        mov     r7,a                    ;1FA4   FF                      .
        mov     r7,a                    ;1FA5   FF                      .
        mov     r7,a                    ;1FA6   FF                      .
        mov     r7,a                    ;1FA7   FF                      .
        mov     r7,a                    ;1FA8   FF                      .
        mov     r7,a                    ;1FA9   FF                      .
        mov     r7,a                    ;1FAA   FF                      .
        mov     r7,a                    ;1FAB   FF                      .
        mov     r7,a                    ;1FAC   FF                      .
        mov     r7,a                    ;1FAD   FF                      .
        mov     r7,a                    ;1FAE   FF                      .
        mov     r7,a                    ;1FAF   FF                      .
        mov     r7,a                    ;1FB0   FF                      .
        mov     r7,a                    ;1FB1   FF                      .
        mov     r7,a                    ;1FB2   FF                      .
        mov     r7,a                    ;1FB3   FF                      .
        mov     r7,a                    ;1FB4   FF                      .
        mov     r7,a                    ;1FB5   FF                      .
        mov     r7,a                    ;1FB6   FF                      .
        mov     r7,a                    ;1FB7   FF                      .
        mov     r7,a                    ;1FB8   FF                      .
        mov     r7,a                    ;1FB9   FF                      .
        mov     r7,a                    ;1FBA   FF                      .
        mov     r7,a                    ;1FBB   FF                      .
        mov     r7,a                    ;1FBC   FF                      .
        mov     r7,a                    ;1FBD   FF                      .
        mov     r7,a                    ;1FBE   FF                      .
        mov     r7,a                    ;1FBF   FF                      .
        mov     r7,a                    ;1FC0   FF                      .
        mov     r7,a                    ;1FC1   FF                      .
        mov     r7,a                    ;1FC2   FF                      .
        mov     r7,a                    ;1FC3   FF                      .
        mov     r7,a                    ;1FC4   FF                      .
        mov     r7,a                    ;1FC5   FF                      .
        mov     r7,a                    ;1FC6   FF                      .
        mov     r7,a                    ;1FC7   FF                      .
        mov     r7,a                    ;1FC8   FF                      .
        mov     r7,a                    ;1FC9   FF                      .
        mov     r7,a                    ;1FCA   FF                      .
        mov     r7,a                    ;1FCB   FF                      .
        mov     r7,a                    ;1FCC   FF                      .
        mov     r7,a                    ;1FCD   FF                      .
        mov     r7,a                    ;1FCE   FF                      .
        mov     r7,a                    ;1FCF   FF                      .
        mov     r7,a                    ;1FD0   FF                      .
        mov     r7,a                    ;1FD1   FF                      .
        mov     r7,a                    ;1FD2   FF                      .
        mov     r7,a                    ;1FD3   FF                      .
        mov     r7,a                    ;1FD4   FF                      .
        mov     r7,a                    ;1FD5   FF                      .
        mov     r7,a                    ;1FD6   FF                      .
        mov     r7,a                    ;1FD7   FF                      .
        mov     r7,a                    ;1FD8   FF                      .
        mov     r7,a                    ;1FD9   FF                      .
        mov     r7,a                    ;1FDA   FF                      .
        mov     r7,a                    ;1FDB   FF                      .
        mov     r7,a                    ;1FDC   FF                      .
        mov     r7,a                    ;1FDD   FF                      .
        mov     r7,a                    ;1FDE   FF                      .
        mov     r7,a                    ;1FDF   FF                      .
        mov     r7,a                    ;1FE0   FF                      .
        mov     r7,a                    ;1FE1   FF                      .
        mov     r7,a                    ;1FE2   FF                      .
        mov     r7,a                    ;1FE3   FF                      .
        mov     r7,a                    ;1FE4   FF                      .
        mov     r7,a                    ;1FE5   FF                      .
        mov     r7,a                    ;1FE6   FF                      .
        mov     r7,a                    ;1FE7   FF                      .
        mov     r7,a                    ;1FE8   FF                      .
        mov     r7,a                    ;1FE9   FF                      .
        mov     r7,a                    ;1FEA   FF                      .
        mov     r7,a                    ;1FEB   FF                      .
        mov     r7,a                    ;1FEC   FF                      .
        mov     r7,a                    ;1FED   FF                      .
        mov     r7,a                    ;1FEE   FF                      .
        mov     r7,a                    ;1FEF   FF                      .
        mov     r7,a                    ;1FF0   FF                      .
        mov     r7,a                    ;1FF1   FF                      .
        mov     r7,a                    ;1FF2   FF                      .
        mov     r7,a                    ;1FF3   FF                      .
        mov     r7,a                    ;1FF4   FF                      .
        mov     r7,a                    ;1FF5   FF                      .
        mov     r7,a                    ;1FF6   FF                      .
        mov     r7,a                    ;1FF7   FF                      .
        mov     r7,a                    ;1FF8   FF                      .
        mov     r7,a                    ;1FF9   FF                      .
        mov     r7,a                    ;1FFA   FF                      .
        mov     r7,a                    ;1FFB   FF                      .
        mov     r7,a                    ;1FFC   FF                      .
        mov     r7,a                    ;1FFD   FF                      .
        mov     r7,a                    ;1FFE   FF                      .
        mov     r7,a                    ;1FFF   FF                      .
;
;       Unresolved Address Reference list
;
;
L006D:          EQU     0006DH
L008E:          EQU     0008EH
L00CF:          EQU     000CFH
L1001:          EQU     01001H
L1012:          EQU     01012H
L106D:          EQU     0106DH
L1080:          EQU     01080H
L1115:          EQU     01115H
L1124:          EQU     01124H
L1224:          EQU     01224H
L147F:          EQU     0147FH
L14A7:          EQU     014A7H
L14E2:          EQU     014E2H
L1509:          EQU     01509H
L1531:          EQU     01531H
L1540:          EQU     01540H
L1548:          EQU     01548H
L1573:          EQU     01573H
L1582:          EQU     01582H
L15BD:          EQU     015BDH
L15DC:          EQU     015DCH
L1605:          EQU     01605H
L1609:          EQU     01609H
L161A:          EQU     0161AH
L1626:          EQU     01626H
L162B:          EQU     0162BH
L2028:          EQU     02028H
L2413:          EQU     02413H
L3028:          EQU     03028H
L3415:          EQU     03415H
L8003:          EQU     08003H
LFF00:          EQU     0FF00H
LFF01:          EQU     0FF01H
LFF03:          EQU     0FF03H
LFF05:          EQU     0FF05H
LFF06:          EQU     0FF06H
LFF08:          EQU     0FF08H
LFF09:          EQU     0FF09H
LFF0A:          EQU     0FF0AH
LFF0C:          EQU     0FF0CH
LFF0D:          EQU     0FF0DH
LFF0F:          EQU     0FF0FH
LFF10:          EQU     0FF10H
LFF11:          EQU     0FF11H
LFF13:          EQU     0FF13H
LFF14:          EQU     0FF14H
LFF1B:          EQU     0FF1BH
LFF22:          EQU     0FF22H
LFF23:          EQU     0FF23H
LFF24:          EQU     0FF24H
LFF25:          EQU     0FF25H
LFF26:          EQU     0FF26H
LFF27:          EQU     0FF27H
LFF28:          EQU     0FF28H
LFF29:          EQU     0FF29H
LFF2A:          EQU     0FF2AH
LFF2B:          EQU     0FF2BH
LFF2C:          EQU     0FF2CH
LFF2D:          EQU     0FF2DH
LFF65:          EQU     0FF65H
LFF69:          EQU     0FF69H
LFF6B:          EQU     0FF6BH
LFF6F:          EQU     0FF6FH
LFF71:          EQU     0FF71H
LFF72:          EQU     0FF72H
LFF74:          EQU     0FF74H
LFF7A:          EQU     0FF7AH
LFF7B:          EQU     0FF7BH
LFF7C:          EQU     0FF7CH
LFF7D:          EQU     0FF7DH
LFF7E:          EQU     0FF7EH
LFF7F:          EQU     0FF7FH
LFF80:          EQU     0FF80H
LFF83:          EQU     0FF83H
LFF84:          EQU     0FF84H
LFF86:          EQU     0FF86H
LFF88:          EQU     0FF88H
LFF89:          EQU     0FF89H
LFF8B:          EQU     0FF8BH
LFF8C:          EQU     0FF8CH
LFF8D:          EQU     0FF8DH
LFF8E:          EQU     0FF8EH
LFF90:          EQU     0FF90H
LFF91:          EQU     0FF91H
LFF93:          EQU     0FF93H
LFF94:          EQU     0FF94H
LFF95:          EQU     0FF95H
LFF96:          EQU     0FF96H
LFF97:          EQU     0FF97H
LFF98:          EQU     0FF98H
LFF99:          EQU     0FF99H
LFF9A:          EQU     0FF9AH
;
;       Cross-references to LABELS
;
;
; L0008=  00B1  
; L0018=  00B8  
; L0030=  1450  
; L003D=  0030  
; L005E=  0033  
; L006D=  0042  
; L008E=  004E  
; L00AF=  005B  
; L00B1=  0061  
; L00B8=  00B3  
; L00CE=  006A  
; L00CF=  00BA  
; L00D2=  006C  
; L00EA=  00C5  
; L00F0=  0267  
; L0128=  00C3  
; L0138=  00D2  
; L0210=  0000  027C  
; L0219=  02CE  
; L0241=  0251  026F  0281  0283  
; L0247=  024A  
; L024C=  0247  
; L024E=  0259  
; L0259=  0253  
; L0267=  0262  
; L0271=  0265  
; L027E=  0256  
; L0286=  0661  
; L0294=  02A1  
; L02A3=  029F  
; L02AC=  02B1  02B6  1417  
; L02B8=  0216  04C3  0631  0DBE  0DD0  
; L02D0=  0244  
; L02F8=  0213  
; L0326=  0321  
; L0336=  032E  
; L033C=  0334  0336  
; L033F=  0324  
; L0367=  0201  020A  0350  
; L036F=  0B53  0C12  0C4D  0D1A  0D23  0E4D  
; L0374=  0318  
; L0376=  03BD  
; L03BC=  038C  039A  03A5  03B3  
; L03C4=  037F  0384  0392  0397  039D  03AB  03B0  03B6  
; L03CA=  0326  
; L03D7=  0329  03E6  
; L03E2=  03DC  
; L03E6=  0226  
; L040F=  03FA  
; L0410=  0223  
; L0416=  02B8  
; L042E=  030F  
; L042F=  0241  0439  0515  0527  052B  068C  06F6  0700  095A  09AA  
;         0CF1  
; L043D=  0475  0486  0499  04AA  
; L0468=  0463  
; L0469=  0297  
; L0478=  0294  062A  06F8  0950  096B  0978  09F8  0ACC  0BB5  0CF7  
;         0D2E  0DAF  0DC2  0DF5  0E03  0EAD  0EBA  0EF5  105A  111F  
;         1199  119D  
; L048B=  0513  0525  064F  068A  06F4  06FE  0957  09A7  0CEE  0D95  
;         0EB6  0F05  107E  110D  1192  
; L049E=  0A7D  0C3D  0E48  
; L04AD=  029A  02AC  04FF  0517  0529  0A27  0A80  0BD3  0E69  0EC0  
;         
; L04B3=  04C1  
; L04B5=  04BF  
; L04B7=  04BD  
; L04C5=  04B7  
; L04C7=  04CF  
; L04DC=  04E3  
; L04F5=  04CC  
; L04F8=  051B  
; L0501=  0229  0286  0353  04FC  0BF0  0D99  
; L050C=  04F5  
; L051B=  04CA  04D4  04DF  
; L052B=  04F0  050A  0519  
; L052D=  04F3  
; L052E=  024E  027E  04C7  04D1  04DC  
; L0533=  053D  
; L0543=  0537  
; L054C=  0546  
; L0552=  035A  043E  04AE  
; L055A=  0552  0B4E  0DEB  
; L055D=  0557  
; L0567=  0ED7  
; L056F=  056A  
; L0578=  0574  0C54  0D08  
; L057D=  0BB1  0C5B  0EE9  11F0  
; L0583=  0594  
; L0585=  0592  
; L058C=  0585  
; L058F=  058A  
; L0599=  0587  
; L05A1=  058C  
; L05A4=  0597  059F  
; L05A9=  0460  0E61  
; L05AD=  05B3  
; L05B8=  05AD  
; L05BB=  05B6  
; L05BE=  0356  059C  0F02  
; L05C1=  055D  
; L05CA=  0A14  0B58  0BC8  0E45  
; L05D1=  0EBD  
; L05D8=  0A24  0BE0  0E66  
; L05DD=  0EF0  
; L05E0=  05DB  
; L05E6=  035D  042F  04E5  05F1  0C40  0DB5  
; L05F3=  05EA  
; L05F8=  02B3  
; L0604=  05FD  
; L060B=  0604  
; L0612=  060B  
; L0619=  0612  
; L0620=  0619  
; L0627=  0620  
; L0633=  0627  
; L0637=  0633  
; L063E=  0637  
; L0645=  063E  
; L064C=  0645  
; L0659=  0659  
; L065B=  064C  
; L0663=  065B  
; L0667=  0663  
; L066B=  0667  
; L0672=  066B  
; L0679=  0672  
; L0680=  0679  
; L0687=  0680  
; L068F=  0600  
; L0696=  0691  
; L069B=  0698  
; L06A5=  06A2  
; L06AA=  06A7  
; L06B0=  069D  
; L06BC=  06B4  
; L06C1=  06BE  
; L06C5=  06C1  
; L06C8=  06C5  
; L06CC=  06AE  06BA  
; L06D8=  06CE  
; L06DD=  06D6  
; L06ED=  06EA  
; L06F8=  06ED  06F2  
; L06FB=  0694  069B  06A5  06AA  06B0  06BC  06C8  06D3  06DA  
; L0703=  06DD  
; L0726=  0709  
; L073B=  0726  
; L074E=  073B  
; L075F=  074E  
; L0773=  075F  
; L0787=  0773  
; L078C=  074C  075D  
; L078F=  0738  0771  0785  
; L0792=  0723  
; L07A7=  078F  
; L07AC=  0720  
; L07B5=  078C  
; L07DA=  0718  076E  
; L07FF=  0735  
; L0824=  0782  
; L0849=  06E0  
; L0864=  0856  
; L086F=  084B  
; L0888=  087A  
; L0893=  086F  
; L0894=  085C  0862  0867  086D  0880  0886  088B  0891  
; L08AA=  0899  089E  
; L08AB=  06EF  
; L08BB=  08B0  
; L08C6=  08BB  
; L08D1=  08C6  
; L08DC=  08D1  
; L08E7=  08DC  
; L08F2=  08E7  
; L08F7=  08B9  08C4  08CF  08DA  08E5  08F0  
; L0915=  091F  
; L0921=  0913  
; L0923=  0901  
; L0927=  0903  
; L092D=  0607  
; L0934=  092F  
; L0937=  0932  
; L0948=  093F  
; L094D=  0945  
; L0954=  0934  0948  
; L095E=  060E  
; L096F=  0960  
; L097C=  0615  
; L0988=  097E  
; L098F=  0988  
; L0996=  098F  
; L099F=  0996  
; L09A4=  0981  
; L09A7=  09A2  
; L09AE=  0992  
; L09AF=  11AF  
; L09D2=  09EB  
; L09D4=  09CE  09E9  
; L09F7=  09BA  09C7  
; L09F8=  0984  
; L09FB=  0A0C  
; L0A0C=  09FB  
; L0A14=  0A36  
; L0A1F=  0A17  
; L0A32=  0A1D  
; L0A33=  0A2F  
; L0A38=  0A33  
; L0A3C=  0A22  
; L0A40=  0A78  0C1D  
; L0A50=  0A5A  
; L0A78=  0A1A  0AE8  
; L0A80=  0A8A  0ABD  
; L0A99=  0A8F  0A94  
; L0AAC=  0A9B  
; L0AB5=  0AAA  
; L0ABF=  0A97  
; L0AC5=  0A85  
; L0AC7=  0A9F  0AB8  
; L0ACC=  099B  
; L0ACF=  0AE0  
; L0ADA=  0AE2  
; L0AE2=  0ADA  
; L0AEB=  0AB5  
; L0B17=  0B14  
; L0B1B=  0B0F  
; L0B1D=  0B19  
; L0B23=  0B17  0B1B  
; L0B2F=  0B0B  
; L0B30=  0ABA  
; L0B6E=  0B92  0B96  
; L0B7E=  0B82  
; L0BB5=  098B  
; L0BB8=  0BC3  
; L0BBD=  0BC5  
; L0BC5=  0BBD  
; L0BD3=  0BD8  0BDA  
; L0BE9=  0BD1  
; L0BED=  09FE  0ADD  0BC0  
; L0BF9=  0BBA  0D2C  
; L0C1D=  0A1F  0BCE  
; L0C6D=  0C67  
; L0C6E=  0AC2  0C69  
; L0C73=  0C70  
; L0C7E=  0C73  0C77  
; L0C7F=  0C43  
; L0C82=  056F  
; L0C8E=  0C08  0D11  
; L0C9F=  0C0D  0C48  0D0D  
; L0CA4=  0C57  
; L0CB4=  0A7A  0C64  
; L0CBB=  0C3A  
; L0CE0=  061C  
; L0CF5=  0CE6  
; L0CFA=  0A09  0AD7  
; L0D21=  0D16  
; L0D2A=  0CE9  
; L0D32=  0BE3  0BED  0C61  0D1D  0EEC  13D1  
; L0D39=  0C19  0D26  13F4  
; L0D43=  0D13  
; L0D4F=  0D6B  
; L0D57=  0D51  
; L0D6D=  0D55  
; L0D77=  0D59  
; L0D78=  0D70  0D75  
; L0D82=  0C03  
; L0D8B=  0623  
; L0D99=  0D90  
; L0DC1=  0DB8  
; L0DC2=  0D8D  
; L0DD3=  0D9C  
; L0DF5=  063A  
; L0E03=  0641  
; L0E14=  0E08  
; L0E21=  0E16  
; L0E2C=  0E21  
; L0E33=  0E12  
; L0E38=  0E1F  0E2A  
; L0E3A=  0E7E  
; L0E70=  0E7B  0E80  
; L0E74=  0E6E  
; L0E7B=  0E77  
; L0E82=  0E64  
; L0E86=  0648  
; L0E8F=  0E88  
; L0E93=  0E8F  
; L0E9A=  0E93  
; L0EB1=  0EA0  
; L0EB6=  0E9A  0EB4  
; L0EBA=  0E8B  0F2F  
; L0EFF=  0EC8  
; L0F02=  0EEE  0EFD  
; L0F0A=  0E96  
; L0F1A=  0F17  
; L0F1E=  0F0C  
; L0F2F=  0F1C  0F29  
; L0F3A=  0F2D  
; L0F3B=  0F1E  
; L0F3C=  0F1A  0F31  
; L0F40=  0F36  
; L0F4F=  0F52  
; L0F5C=  0F58  
; L0F5E=  0FAD  
; L0F63=  0F78  0F9D  
; L0F7C=  0F6D  0F71  
; L0FA1=  0F76  0F9B  
; L0FB1=  0F66  0F7A  0F84  0F91  0F9F  
; L0FB3=  0FAF  
; L0FB4=  0F73  
; L0FE5=  0FC4  0FD1  0FDB  
; L0FE6=  0F7E  0FB6  0FF4  
; L0FFA=  0F98  0FD8  1024  
; L1001=  14A4  
; L1012=  15AC  
; L1021=  1017  
; L1024=  1589  
; L1026=  1005  1015  
; L102E=  09B7  0F63  0F81  0FC1  
; L1032=  103F  
; L1044=  103A  
; L104E=  1042  
; L1051=  066E  
; L1058=  1055  
; L1068=  105F  
; L106D=  15E8  
; L1071=  1068  
; L1074=  1065  106E  
; L107B=  1058  
; L1080=  1496  
; L1082=  0675  
; L108C=  1087  
; L10A7=  109F  
; L10AC=  108E  
; L10C5=  10BD  
; L10CA=  10AC  
; L10CC=  1084  
; L10E7=  10DF  
; L10EC=  10CE  
; L1105=  10FD  
; L110A=  1089  10CA  10EC  
; L1111=  10A5  10AA  10C3  10C8  10E5  10EA  1103  1108  
; L1115=  14A9  
; L111F=  1116  
; L1123=  067C  
; L1124=  1547  
; L112D=  1128  
; L1143=  112F  
; L115D=  1143  
; L115F=  1125  
; L1175=  1161  
; L118F=  112A  115D  1175  
; L1196=  1141  115B  1173  118D  
; L119D=  0683  
; L11D1=  11ED  
; L11D3=  11CD  11EB  
; L11E3=  11E7  
; L11F4=  03D0  0403  040C  08A7  094D  0968  1097  10B8  10D7  10F8  
;         1138  1152  116A  1184  1196  1308  
; L11F8=  1218  
; L1217=  1538  
; L1218=  1200  1207  120E  
; L121F=  0389  03A2  0851  0875  093A  0E0D  10B2  10F2  1149  117B  
;         
; L1223=  1252  
; L1224=  1555  
; L1234=  1597  
; L1252=  122B  1232  1240  
; L1259=  09BF  0F89  0FC9  1032  11F8  1223  
; L1261=  1237  
; L1280=  127C  
; L1285=  09C4  0F8E  0FCE  0FEA  0FF1  1037  1046  104B  11FD  1204  
;         120B  1228  122F  123D  
; L1296=  09D4  09DE  09EE  1000  1010  1242  
; L12A4=  09DB  09E5  1007  1021  
; L12A8=  09F1  1019  1026  1247  
; L12AA=  12A6  
; L12B8=  09BC  09F4  0F86  0FC6  0FF6  101C  1029  1210  1234  124A  
;         
; L12CB=  126D  1276  128F  129C  12B4  12BE  12C7  12EC  
; L12D0=  12DA  
; L12E1=  12D5  
; L12E3=  12DF  
; L12E6=  1292  
; L12F5=  12EE  
; L12F6=  033C  0894  1111  111C  130E  
; L12FC=  12F8  
; L1302=  14D4  
; L1317=  1318  
; L131D=  02CB  04BA  0507  053A  05B0  0BAA  0BAD  0DB2  103C  12D7  
;         1327  1329  132B  132D  132F  1336  
; L1321=  1322  
; L1327=  0B98  
; L1332=  03D3  03F5  0406  0423  0432  058F  0B9B  0C5E  109A  10DA  
;         13CF  
; L1336=  1338  
; L133D=  0D4C  
; L1352=  1370  
; L1365=  135D  
; L136A=  1360  
; L136B=  1363  
; L1380=  09B4  0BFE  0C27  0CFF  0EDF  0F45  11B7  14F4  
; L138B=  0B35  0F68  0F93  0FD3  
; L1398=  0F5E  
; L13A5=  09B1  0B32  0BFB  0C24  0CFC  0EDC  0F42  11B4  
; L13A8=  1656  
; L13AA=  002B  
; L13B3=  0003  
; L13CC=  13C7  
; L13D6=  13CC  
; L13E0=  15D7  
; L13F7=  13D6  13EE  13F2  
; L13FC=  13F7  
; L1411=  140C  
; L1421=  13FC  1405  140F  
; L1424=  1421  
; L1432=  033F  0BF5  0C7B  1077  
; L1437=  1434  
; L143A=  1437  
; L144B=  1473  
; L1460=  145D  
; L146C=  1460  
; L146E=  146A  
; L147F=  14F2  
; L1483=  0013  
; L1484=  0376  038F  03A8  
; L1490=  148A  
; L1494=  0331  
; L14A3=  149B  
; L14A6=  149D  
; L14A7=  1520  
; L14DC=  14B8  
; L14DF=  14BB  
; L14E2=  14BD  
; L1500=  14CF  
; L1509=  1562  
; L1514=  15FA  
; L151D=  0864  10E2  
; L1531=  15A6  
; L153E=  0859  10A2  
; L1540=  151E  
; L1548=  1534  
; L154C=  150F  
; L155B=  1553  
; L155D=  15D5  
; L155F=  086A  10E7  
; L1560=  14EF  
; L1573=  1526  
; L157C=  15C8  
; L1580=  085F  10A7  
; L1582=  1560  
; L159D=  1595  
; L15A1=  0339  
; L15BD=  15AA  
; L15BE=  158B  
; L15D7=  1574  
; L15DC=  15BA  
; L15E2=  1658  
; L15F6=  0888  1100  
; L1605=  15D1  
; L1607=  087D  10C0  
; L1609=  1603  
; L1618=  088E  1105  
; L161A=  0078  1614  
; L161E=  0049  160A  
; L1623=  161B  
; L1626=  0050  
; L1629=  0883  10C5  
; L162B=  1625  
; L1630=  0071  
; L163A=  1119  
; L163C=  1636  
; L1640=  162C  
; L1642=  164F  
; L1688=  1652  
; L2028=  1523  1544  
; L2413=  14A6  
; L3028=  1565  1586  
; L3415=  1577  
; L8003=  1498  15A1  
; LFF00=  031B  
; LFF01=  07AC  
; LFF03=  079E  
; LFF05=  0312  
; LFF06=  0D82  13E6  
; LFF08=  0CAA  0D32  0D39  0DDC  0EE2  1440  1475  
; LFF09=  0CA4  0CB6  
; LFF0A=  0A6E  0C2A  
; LFF0C=  02D0  0367  0651  
; LFF0D=  0219  026B  0346  0363  0DF8  
; LFF0F=  03D7  
; LFF10=  090A  
; LFF11=  0DE2  13A5  
; LFF13=  1380  138B  
; LFF14=  1391  
; LFF1B=  0C34  0C8E  0DE6  
; LFF22=  09D7  
; LFF23=  09E1  
; LFF24=  0B6E  0FB9  0FDD  0FE6  0FFA  11D3  
; LFF25=  0B76  0FBD  0FE1  0FED  100A  11DB  
; LFF26=  0543  
; LFF27=  0549  05ED  
; LFF28=  02E4  0562  0578  1408  
; LFF29=  0443  0B5B  0B72  0BA2  0E56  11D7  
; LFF2A=  0B7A  11DF  
; LFF2B=  1401  
; LFF2C=  02C5  0503  0DC7  
; LFF2D=  02BD  
; LFF65=  0435  04EC  0533  05E6  0B7E  11E3  
; LFF69=  02EC  055A  0567  05BE  
; LFF6B=  0D9F  
; LFF6F=  0554  056C  0B38  0C7F  11BA  
; LFF71=  0DA5  0E50  
; LFF72=  0C98  
; LFF74=  02D8  036F  13BD  
; LFF7A=  0410  0427  
; LFF7B=  125B  
; LFF7C=  1261  1267  1270  1289  1296  12AE  12B8  12C1  12E6  
; LFF7D=  1285  12AA  
; LFF7E=  129F  12F0  
; LFF7F=  12D0  
; LFF80=  1280  
; LFF83=  022F  
; LFF84=  03E8  0416  
; LFF86=  0236  0271  
; LFF88=  0C92  
; LFF89=  0A43  
; LFF8B=  144C  
; LFF8C=  146E  
; LFF8D=  0C9F  0DEE  
; LFF8E=  0794  
; LFF90=  02DC  05CC  05D8  0B9E  
; LFF91=  05D3  05DD  
; LFF93=  1398  
; LFF94=  139E  
; LFF95=  07B5  07DA  07FF  0824  
; LFF96=  07BB  07E0  0805  082A  
; LFF97=  07C1  07E6  080B  0830  
; LFF98=  07C7  07EC  0811  0836  
; LFF99=  07CD  07F2  0817  083C  
; LFF9A=  07D3  07F8  081D  0842  
;
;       Cross-references to Data Memory locations
;
;
; M: 00=  1558  159A  
; M: 03=  057D  05A6  
; M: 04=  057F  05A4  05A9  05BB  
; M: 05=  133D  137D  
; M: 06=  102E  104E  1332  133A  143C  147E  
; M: 07=  052E  0540  054F  11F4  1215  121C  121F  124F  1256  12CB  
;         12E3  1313  131A  131D  1324  143A  1480  
; M: 08=  037D  03C4  03C7  08B6  08C1  08CC  08D7  08E2  08ED  0AA4  
;         0AAF  0AEB  0AF1  0B03  0B29  0CC4  0CCF  0D43  0D53  0D5F  
;         0D63  0D78  0F12  0F21  0F6F  0FA1  0FA5  1049  11A9  1352  
;         1355  1374  
; M: 09=  08F9  08FC  08FF  0AA1  0AAC  0AF3  0AF5  0AFC  0AFE  0B09  
;         0B24  0D46  0D4F  0D65  0D69  0D7B  0F0F  0F24  0F6B  0FA7  
;         0FAB  1044  11AC  1344  134A  
; M: 0A=  0AA7  0AB2  0AED  0AF8  0B05  0B12  0B20  0B3F  0B67  0B86  
;         0B8A  0B94  0D49  1346  135A  1484  
; M: 0B=  0B0D  0B1D  0B45  0B6B  0B8C  0B90  0D57  0D5B  0D6E  0D72  
;         0D7E  1376  
; M: 0C=  00BF  0F48  0F50  0F5A  0F5C  
; M: 0D=  0ABF  0C1F  0C6E  
; M: 0E=  0E19  0E27  0E35  0E5D  15F1  
; M: 0F=  0E1C  0E24  0E33  0E59  
; M: 11=  15DB  164C  
; M: 13=  15AE  
; M: 14=  15B3  160C  162E  
; M: 1B=  14B5  
; M: 1C=  00CE  
; M: 1E=  0309  0AA4  0AB2  0B14  0B20  0EA5  
; M: 1F=  030C  0A99  0AA1  0B0F  0B1D  0EAB  
; M: 20=  020C  0303  0E24  
; M: 21=  0305  0E27  
; M: 22=  028F  02A6  047B  05F8  0ECB  
; M: 23=  029D  02A3  02AF  02F9  04D6  05FA  0A2A  0A2C  0A83  0A87  
;         0BD6  0BDD  0E6C  0E74  0EC3  0EC5  15BC  
; M: 24=  093D  0962  0972  097C  0CE4  0D8B  0DFB  0E0A  0E14  0E2F  
;         0E86  1051  1082  1123  11A0  
; M: 25=  0696  06E3  095E  0A03  0AD1  0D43  0DFF  0E06  0E9E  0ED3  
;         0F12  0F2B  11A3  
; M: 26=  06B2  06E6  0965  0975  0A06  0A8D  0AA7  0AAF  0AD4  0B5E  
;         0D46  0EA7  0ED0  0F0F  0F15  0F27  11A9  
; M: 27=  06A0  0A92  0A9D  0AAC  0B62  0ECD  0F0A  11AC  
; M: 29=  02FB  044A  0469  0478  048B  049E  148C  
; M: 2A=  044F  046D  047B  0495  0A0F  0AE5  0BCB  0E3A  
; M: 2B=  0453  046F  047E  048E  04A1  
; M: 2C=  00DD  0458  0471  0482  0491  04A4  
; M: 2D=  045C  0473  0484  0497  04A7  
; M: 2E=  13C1  13C5  1411  1424  14CD  
; M: 2F=  0307  15CE  
; M: 30=  0395  039A  03AE  03B3  03CD  0400  0409  0854  0878  08A4  
;         0942  094A  0965  0E10  1094  10B5  10D4  10F5  1135  113E  
;         114C  114F  1158  1167  1170  117E  1181  118A  1209  1245  
;         1306  156B  
; M: 31=  1062  106B  1071  1074  
; M: 32=  0387  03A0  03CA  03FD  084E  0872  08A1  0937  0962  0E0A  
;         1091  10AF  10D1  10EF  1132  113B  1146  1155  1164  116D  
;         1178  1187  1202  122D  12FC  
; M: 33=  02FD  047E  0488  
; M: 34=  02FF  048E  049B  
; M: 35=  031E  032C  03B9  03C0  03DA  03F8  068F  06D1  06D8  0849  
;         0897  092D  108C  10CC  1114  112D  115F  
; M: 36=  04A1  09CB  0A4B  0A50  0A53  0A5E  0A62  0A73  0B01  0C8A  
;         0CC8  0E3D  0ED3  0F4B  0F54  11A0  11C5  11CA  
; M: 37=  04A4  09C9  0A47  0A55  0A58  0A64  0A68  0A6B  0ABF  0B07  
;         0C1F  0C86  0CCA  0CD6  0CD8  0E41  0ED0  0F48  11A3  11C1  
;         11C8  
; M: 38=  04A7  0A40  0C82  0CC1  0CCD  0CD3  0CDB  0CDD  0E43  0ECD  
;         11A6  
; M: 39=  06E8  08AB  08F9  
; M: 3A=  06AC  06B7  06CA  06CC  0705  089C  08F7  109D  10BB  10DD  
;         10FB  
; M: 3B=  08B3  08BE  08C9  08D4  08DF  08EA  0908  090D  
; M: 3C=  00E8  0712  072F  0744  0757  0768  077C  0792  
; M: 3D=  0715  0732  0747  075A  076B  077F  0798  
; M: 3E=  0203  070C  0729  073E  0751  0762  0776  079C  0915  0918  
;         0CBB  
; M: 3F=  070F  072C  0741  0754  0765  0779  07A2  091A  091D  0CBD  
;         
; M: 40=  0D7B  13E0  13E4  13EC  
; M: 41=  0D78  13DA  13DE  13F0  
; M: 42=  0465  0491  0510  0522  0687  06FB  0788  08F3  0923  0927  
;         0954  099F  09A4  0A38  0A3C  0AC7  0BE9  0CEB  0D92  0E70  
;         0E82  0EB1  0EFA  0EFF  0F3C  107B  110A  118F  
; M: 47=  0301  0BF3  0C75  0C79  1074  1432  1456  
; M: 48=  0B2C  1394  13A2  
; M: 49=  0B27  138E  139C  
; M: 4A=  022C  025D  0260  
; M: 4D=  0382  11FB  1226  123A  
; M: 50=  1053  105D  
; M: 54=  15FE  160F  
; M: 5F=  14D6  
; M: 60=  1512  1529  154A  
; M: 64=  007B  0089  
; M: 65=  15DE  
; M: 67=  14DF  1515  152C  154D  156E  158F  
; M: 69=  14E3  
; M: 73=  0207  
; M: 80=  15C1  
; M: 81=  0210  062C  065E  0DBB  0DCB  1414  
; M: 82=  03EF  041D  044D  0456  05E1  0972  0B65  0E2F  1304  130A  
;         13B9  141A  1429  
; M: 83=  096F  0E2C  1302  130C  13BB  141C  1427  14DC  
; M: 88=  15D9  
; M: 8E=  14FC  
; M: B8=  1643  
; M: CF=  14D8  
; M: D0=  13B7  142B  
; M: E0=  133F  134E  136B  136E  1372  137B  13AC  13AE  13B5  142D  
;         
; M: F0=  071D  07A9  07B0  0AED  0AF5  0AF8  0B43  0B4B  0CBD  0CC1  
;         0CC4  0CCA  0CCF  0CD3  0FFE  1003  100E  1013  1341  1346  
;         1357  135A  1366  1368  1376  1379  143E  1454  145B  1464  
;         1467  147C  
;
;       Cross-references to BIT addressable locations
;
;
; B: 00=  0A0C  0AE2  0BC5  0BE6  0C15  0D02  13D4  15D1  
; B: 01=  02AA  
; B: 03=  0C17  0D04  0EF3  0F31  0F34  
; B: 04=  12DC  12E1  
; B: 05=  09FB  0A01  0ACF  0ADA  0BB8  0BBD  0CE0  13CA  15A6  
; B: 06=  038C  03A5  1213  121A  124D  1254  1574  
; B: 07=  0FB1  
; B: 08=  0A17  0CF5  0D2A  
; B: 09=  00B3  0247  025B  028B  02E8  04B7  04EA  04FA  050E  0520  
;         0587  059A  05F5  0DAB  0DD5  13FF  
; B: 0A=  0441  058C  05A2  05AD  05B9  0B56  0C50  0DD7  13FA  
; B: 0B=  0289  02EA  04E8  04F8  050C  051E  0546  054D  05F3  0DA9  
;         0DD3  
; B: 0C=  0030  0703  074A  085C  0867  0880  088B  
; B: 0D=  02A8  0360  04F5  051B  062F  0DB8  0DCE  
; B: 10=  14B8  
; B: 12=  161B  
; B: 14=  14F6  1520  1562  
; B: 18=  0033  0042  
; B: 19=  00BA  
; B: 20=  153F  1581  
; B: 24=  150F  1526  
; B: 25=  158B  
; B: 27=  14C1  
; B: 29=  00C5  
; B: 2A=  15C8  
; B: 2B=  14C7  
; B: 5C=  005E  
; B: 68=  14E1  
; B: 69=  152E  154F  1570  1591  
; B: 70=  1421  
; B: 71=  13D6  
; B: 73=  13CC  
; B: 74=  1517  1608  1619  162A  
; B: 75=  13F7  
; B: 76=  13FC  
; B: 77=  13C7  
; B: 78=  028D  0981  0999  0CE2  0DAD  0DD9  
; B: 88=  1648  
; B: A8=  0344  
; B: AA=  1259  
; B: AF=  0342  13AA  13B0  13B3  141E  142F  
; B: E0=  03DC  06CE  06D3  06DA  0903  0EA0  
; B: E1=  0856  
; B: E2=  087A  
; B: E5=  0B82  11E7  
; B: E7=  0439  04F0  0537  05EA  1444  1479  
;
;       Immediate Byte references
;
;
; #: 00=  00AF  022C  02A3  02DF  030C  032E  0374  04B3  0581  0583  
;         05AB  05CA  05D1  05FA  077C  07BE  07CA  07D0  07D6  07E3  
;         082D  084B  08B3  09CE  09D2  0A03  0A06  0A2C  0A40  0A66  
;         0A87  0AD4  0B3B  0B47  0B8E  0BA7  0BDD  0CB4  0D35  0D67  
;         0D86  0DC5  0E35  0E3A  0E74  0EA9  0EC5  0F1E  0F21  0F24  
;         0FA9  105F  1062  108E  10CE  112F  1161  11A6  11BD  11CD  
;         11D1  1273  12A4  12CE  134C  1383  1387  13E2  1449  150A  
;         
; #: 01=  0220  02BB  02C2  034D  03E2  04C5  05FD  0698  06A2  06B4  
;         0712  071D  072F  0768  0773  07A7  07A9  08B0  08BE  093F  
;         097E  099F  0A0F  0AD1  0C06  0D0F  0D61  0D72  0E19  0E88  
;         1068  10D4  128C  13DC  
; #: 02=  03BD  0409  041A  04B1  0501  0604  08BB  08C9  0923  092F  
;         0988  0A4D  0B88  0BCB  0C37  0E3D  0E53  0E8F  12B1  
; #: 03=  060B  075F  08C6  0927  098F  0A12  0D06  0E38  0E93  0F61  
;         1055  1094  11F6  1221  1299  
; #: 04=  0336  03FA  04D8  0576  0612  06BE  086F  0899  08B6  08D1  
;         0934  0A38  0A60  0C0B  0DF1  0E70  10AC  10B5  10EC  1116  
;         1143  1175  12E9  
; #: 05=  0619  06B7  074E  089E  08DC  0996  0A3C  0AE5  0BE9  0E1C  
;         12BB  
; #: 06=  024C  02F4  05C6  0645  08E7  0B41  0DA2  0EA3  0EFF  0F4D  
;         126A  12C4  
; #: 07=  02C8  0315  042A  0637  069D  073B  0757  106B  109F  10BD  
;         10DF  10FD  1264  
; #: 08=  0262  0620  075A  08C1  0E9A  1170  1350  
; #: 09=  0627  0709  08F3  
; #: 0A=  0292  049E  0531  0633  0788  0C46  0EC8  
; #: 0B=  063E  06FB  0726  0CEB  0D92  107B  1487  
; #: 0C=  05E1  064C  06A7  06C5  0E82  
; #: 0D=  0283  028F  0469  065B  0687  
; #: 0E=  0478  0663  0A2F  0A8A  0BDA  0E77  1071  110A  
; #: 0F=  021C  0349  048B  0667  0707  08AE  08FC  09A4  0A33  0E7B  
;         0FB4  0FD6  1462  
; #: 10=  066B  0779  08CC  08D4  08D7  0AC7  0EE5  0F7C  0F96  1458  
;         145D  
; #: 11=  084E  0EB1  1091  10D1  1315  1434  
; #: 12=  006F  03CA  0672  118F  
; #: 13=  0679  07F5  07FB  081A  0820  083F  0845  
; #: 14=  0776  08DF  0C95  
; #: 15=  0680  0D18  1536  161F  1630  
; #: 16=  007F  
; #: 17=  02D3  036A  0C10  0D21  
; #: 18=  072C  08E2  08EA  
; #: 19=  1334  1603  1614  1625  1636  
; #: 1B=  0F17  164C  
; #: 1C=  0744  
; #: 1D=  00D7  
; #: 1F=  0654  0F56  
; #: 20=  070C  070F  0729  0732  0747  0765  0827  08ED  0FA3  15EF  
;         15F8  
; #: 21=  071B  
; #: 22=  0400  0833  0839  
; #: 23=  0C52  
; #: 24=  04DA  
; #: 26=  08A1  
; #: 28=  0762  
; #: 2A=  0872  10AF  10EF  1132  1146  1164  1178  
; #: 2B=  02E2  0560  113B  1155  116D  1187  
; #: 2D=  00E2  
; #: 30=  0087  0572  1030  140C  1569  
; #: 32=  08A4  
; #: 33=  0802  0808  080E  0814  
; #: 38=  0059  
; #: 3A=  0309  
; #: 3C=  0754  
; #: 3E=  0036  
; #: 3F=  0CA7  
; #: 40=  07DD  1652  
; #: 42=  0BF9  0CFA  0EDA  
; #: 44=  07E9  07EF  
; #: 4A=  125E  
; #: 4C=  113E  
; #: 50=  0210  062C  065E  0751  0DBB  0DCB  1414  
; #: 58=  004C  
; #: 5A=  09AF  
; #: 5B=  0B30  0F40  11B2  
; #: 5F=  0C2D  
; #: 60=  0C70  14D1  
; #: 61=  020E  
; #: 64=  0074  0076  007D  0083  0085  008B  008D  008F  0091  0093  
;         0095  0097  0099  009B  009D  009F  00A1  00A3  00A5  00A7  
;         00A9  00AB  00AD  14D8  15DB  
; #: 68=  118A  15E2  
; #: 69=  15E4  
; #: 6A=  14E5  
; #: 6B=  0C22  
; #: 6E=  0054  14ED  
; #: 70=  06EA  
; #: 74=  14F9  1530  1551  1572  1593  
; #: 75=  0937  
; #: 76=  03FD  14FC  
; #: 77=  15F1  
; #: 78=  0065  0741  077F  
; #: 7F=  094A  0D49  0D5B  
; #: 80=  03CD  0715  07B8  07C4  0942  0D80  114C  1447  1502  1504  
;         1506  
; #: 81=  0C01  
; #: 82=  0CAD  
; #: 85=  165C  
; #: 90=  1135  
; #: 97=  1643  
; #: 9E=  02D6  
; #: 9F=  036D  0B51  0C4B  0D3F  0E4B  114F  
; #: A0=  0279  073E  117E  15BF  
; #: AA=  0253  0446  04CC  
; #: AC=  1035  
; #: AD=  09C2  0F8C  0FCC  
; #: AE=  1158  
; #: AF=  023E  
; #: B0=  1167  
; #: B5=  131F  
; #: BE=  0D3C  
; #: BF=  00F5  1181  
; #: C2=  0CB0  
; #: C4=  04B5  
; #: CC=  0C9B  
; #: DC=  0F0C  
; #: E0=  076B  
; #: E2=  1508  
; #: F0=  023A  0275  0510  0A8F  0A94  0E16  1464  
; #: F1=  0522  
; #: F2=  0E21  0F3C  
; #: F4=  0D0B  
; #: FB=  0EFA  10F5  
; #: FC=  0954  
; #: FD=  03EC  03F2  0420  127A  
; #: FE=  0C31  
; #: FF=  0233  0321  03C0  0465  0691  096F  0E2C  127E  12A8  12F8  
;         13E9  1405  1411  1424  146C  1500  
;
;
        end
