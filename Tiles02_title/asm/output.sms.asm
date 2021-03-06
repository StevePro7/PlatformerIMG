; Source code created by SMS Examine V1.2a
; Size: 32768 bytes

.MEMORYMAP
SLOTSIZE $4000
SLOT 0 $0000
SLOT 1 $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME

.ROMBANKMAP
BANKSTOTAL 2
BANKSIZE $4000
BANKS 2
.ENDRO

; SDSC Tag:
; Name:        Candy Kid Demo
; Author:      StevePro Studios
; Date:        17.03.2017
; Version:     1.00
; Description: DESC

.BANK 0 SLOT 0
.ORG $0000

_START:
	di
	im   1
	jp   _LABEL_70_2


; Data from 6 to 7 (2 bytes)
; (only NULL-bytes)
.db $00, $00

_LABEL_8_8:
	ld   c, $BF
	di
	out  (c), l
	out  (c), h
	ei
	ret


; Data from 11 to 17 (7 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00

_RST_18H:
	ld   a, l
	out  ($BE), a
	ld   a, h
	sub  $00
	nop
	out  ($BE), a
	ret


; Data from 22 to 37 (22 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00

_IRQ_HANDLER:
	jp   _LABEL_245B_10


; Data from 3B to 65 (43 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

_NMI_HANDLER:
	jp   _LABEL_2491_79


; Data from 69 to 6F (7 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00

_LABEL_70_2:
	ld   sp, $DFF0
	ld   de, $FFFC
	xor  a
	ld   (de), a
	ld   b, $03
_LABEL_7A_3:
	inc  de
	ld   (de), a
	inc  a
	djnz _LABEL_7A_3
	xor  a
	ld   hl, $C000
	ld   (hl), a
	ld   de, $C001
	ld   bc, $1FF0
	ldir
	call _LABEL_2770_4
	call _LABEL_21CB_6
	ei
	call _LABEL_22E_25

; Data from 96 to 209 (372 bytes)
.db $C3, $04, $02, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $C9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3E, $02, $CF, $C9, $3E, $00
.db $CF, $76, $18, $FD

_LABEL_20A_35:
	ld   hl, $0000
	push hl
	ld   hl, $10D0
	push hl
	call _LABEL_2686_36
	pop  af
	ld   h, $20
	ex   (sp), hl
	inc  sp
	ld   hl, $0F9C
	push hl
	ld   hl, $0000
	push hl
	call _LABEL_24A4_55
	pop  af
	pop  af
	inc  sp
	ld   hl, $0F8C
	jp   _LABEL_2301_73

_LABEL_22E_25:
	call _LABEL_21CB_6
	ld   l, $00
	call _LABEL_2294_26
	ld   l, $01
	call _LABEL_2280_32
	ld   hl, $0020
	call _LABEL_2232_28
	call _LABEL_20A_35
	ld   hl, $0140
	call _LABEL_2232_28
_LABEL_24A_77:
	call _LABEL_23C3_75
	jr   _LABEL_24A_77


; Data from 24F to 21CA (8060 bytes)
.incbin "output.sms.dat.0"

_LABEL_21CB_6:
	ld   hl, $0000
	push hl
	call _LABEL_22ED_7
	pop  af
	ld   c, $00
_LABEL_21D5_14:
	ld   hl, $221F
	ld   b, $00
	add  hl, bc
	ld   b, (hl)
	di
	ld   a, b
	out  ($BF), a
	ld   a, c
	set  7, a
	out  ($BF), a
	ei
	inc  c
	ld   a, c
	sub  $0B
	jr   c, _LABEL_21D5_14
	call _LABEL_232D_15
	call _LABEL_2388_16
	call _LABEL_239A_17
	call _LABEL_242D_20
_LABEL_21F8_21:
	in   a, ($7E)
	ld   b, a
	ld   a, $80
	sub  b
	jr   c, _LABEL_21F8_21
_LABEL_2200_22:
	in   a, ($7E)
	sub  $80
	jr   c, _LABEL_2200_22
_LABEL_2206_23:
	in   a, ($7E)
	ld   c, a
	in   a, ($7E)
	sub  c
	jr   nc, _LABEL_2206_23
	ld   a, c
	sub  $E7
	jr   c, _LABEL_2219_24
	ld   hl, $C024
	ld   (hl), $80
	ret

_LABEL_2219_24:
	ld   hl, $C024
	ld   (hl), $40
	ret


; Data from 221F to 2231 (19 bytes)
.db $04, $20, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $FF, $FD, $21, $24, $C0, $FD
.db $6E, $00, $C9

_LABEL_2232_28:
	ld   c, l
	ld   e, h
	ld   d, $00
	ld   hl, $C110
	add  hl, de
	ld   a, (hl)
	or   c
	ld   c, a
	ld   (hl), c
	di
	ld   a, c
	out  ($BF), a
	ld   a, e
	set  7, a
	out  ($BF), a
	ei
	ret

_LABEL_2249_31:
	ld   a, l
	ld   e, h
	cpl
	ld   b, a
	ld   d, $00
	ld   hl, $C110
	add  hl, de
	ld   a, (hl)
	and  b
	ld   c, a
	ld   (hl), c
	di
	ld   a, c
	out  ($BF), a
	ld   a, e
	set  7, a
	out  ($BF), a
	ei
	ret


; Data from 2262 to 227F (30 bytes)
.db $F3, "}", $D3, $BF, ">", $88, $D3, $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $89, $D3
.db $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $87, $D3, $BF, $FB, $C9

_LABEL_2280_32:
	bit  0, l
	jr   z, _LABEL_2288_33
	ld   c, $FB
	jr   _LABEL_228A_34

_LABEL_2288_33:
	ld   c, $FF
_LABEL_228A_34:
	di
	ld   a, c
	out  ($BF), a
	ld   a, $86
	out  ($BF), a
	ei
	ret

_LABEL_2294_26:
	ld   c, l
	bit  0, c
	jr   z, _LABEL_22A8_27
	push bc
	ld   hl, $0102
	call _LABEL_2232_28
	pop  bc
	ld   hl, $C112
	ld   (hl), $10
	jr   _LABEL_22B5_29

_LABEL_22A8_27:
	push bc
	ld   hl, $0102
	call _LABEL_2249_31
	pop  bc
	ld   hl, $C112
	ld   (hl), $08
_LABEL_22B5_29:
	bit  1, c
	jr   z, _LABEL_22CD_30
	ld   hl, $0101
	call _LABEL_2232_28
	ld   hl, $C113
	ld   (hl), $10
	ld   iy, $C112
	sla  (iy+0)
	ret

_LABEL_22CD_30:
	ld   hl, $0101
	call _LABEL_2249_31
	ld   hl, $C113
	ld   (hl), $08
	ret


; Data from 22D9 to 22EC (20 bytes)
.db $21, $02, $00, $39, $4E, $06, $00, $21, $00, $C0, $09, $CF, $21, $03, $00, $39
.db $7E, $D3, $BE, $C9

_LABEL_22ED_7:
	ld   hl, $0002
	add  hl, sp
	ld   c, (hl)
	ld   b, $00
	ld   hl, $C010
	add  hl, bc
	rst  $8
	ld   hl, $0003
	add  hl, sp
	ld   a, (hl)
	out  ($BE), a
	ret

_LABEL_2301_73:
	ld   de, $C000
	ld   c, $BF
	di
	out  (c), e
	out  (c), d
	ei
	ld   b, $10
	ld   c, $BE
_LABEL_2310_74:
	outi
	jr   nz, _LABEL_2310_74
	ret


; Data from 2315 to 232C (24 bytes)
.db $11, $10, $C0, $0E, $BF, $F3, $ED, $59, $ED, $51, $FB, $06, $10, $0E, $BE, $ED
.db $A3, $20, $FC, $C9, $7D, $D3, $BE, $C9

_LABEL_232D_15:
	ld   hl, $C0E9
	ld   (hl), $00
	ret


; Data from 2333 to 2387 (85 bytes)
.db $3A, $E9, $C0, $D6, $40, $30, $4B, $FD, $21, $03, $00, $FD, $39, $FD, $7E, $00
.db $D6, $D1, $28, $3E, $3E, $29, $21, $E9, $C0, $86, $4F, $3E, $C0, $CE, $00, $47
.db $FD, $5E, $00, $1D, $7B, $02, $3A, $E9, $C0, $87, $4F, $21, $69, $C0, $06, $00
.db $09, $FD, $21, $02, $00, $FD, $39, $FD, $7E, $00, $77, $23, $FD, $21, $04, $00
.db $FD, $39, $FD, $7E, $00, $77, $FD, $21, $E9, $C0, $FD, $4E, $00, $FD, $34, $00
.db $69, $C9, $2E, $FF, $C9

_LABEL_2388_16:
	ld   a, ($C0E9)
	sub  $40
	ret  nc

	ld   bc, $C029
	ld   hl, ($C0E9)
	ld   h, $00
	add  hl, bc
	ld   (hl), $D0
	ret

_LABEL_239A_17:
	ld   hl, $7F00
	rst  $8
	ld   bc, $C029
	ld   e, $40
_LABEL_23A3_18:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_23A3_18
	ld   hl, $7F80
	rst  $8
	ld   bc, $C069
	ld   e, $80
_LABEL_23B7_19:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_23B7_19
	ret

_LABEL_23C3_75:
	ld   hl, $C021
	ld   (hl), $00
_LABEL_23C8_76:
	ld   hl, $C021
	bit  0, (hl)
	jr   z, _LABEL_23C8_76
	ret


; Data from 23D0 to 242C (93 bytes)
.db $2A, $25, $C0, $C9, $FD, $21, $27, $C0, $FD, $7E, $00, $2F, $4F, $FD, $7E, $01
.db $2F, $47, $FD, $21, $25, $C0, $FD, $7E, $00, $A1, $6F, $FD, $7E, $01, $A0, $67
.db $C9, $3A, $25, $C0, $FD, $21, $27, $C0, $FD, $A6, $00, $6F, $3A, $26, $C0, $FD
.db $21, $27, $C0, $FD, $A6, $01, $67, $C9, $FD, $21, $25, $C0, $FD, $7E, $00, $2F
.db $4F, $FD, $7E, $01, $2F, $47, $79, $FD, $21, $27, $C0, $FD, $A6, $00, $6F, $78
.db $FD, $A6, $01, $67, $C9, $FD, $21, $23, $C0, $FD, $6E, $00, $C9

_LABEL_242D_20:
	ld   hl, $C023
	ld   (hl), $00
	ret


; Data from 2433 to 245A (40 bytes)
.db $21, $02, $00, $39, $7E, $32, $EA, $C0, $21, $03, $00, $39, $7E, $32, $EB, $C0
.db $C9, $21, $02, $00, $39, $4E, $F3, $79, $D3, $BF, $3E, $8A, $D3, $BF, $FB, $C9
.db $DB, $7E, $6F, $C9, $DB, $7F, $6F, $C9

_LABEL_245B_10:
	push af
	push hl
	in   a, ($BF)
	ld   ($C022), a
	rlca
	jr   nc, _LABEL_247E_11
	ld   hl, $C021
	ld   (hl), $01
	ld   hl, ($C025)
	ld   ($C027), hl
	in   a, ($DC)
	cpl
	ld   hl, $C025
	ld   (hl), a
	in   a, ($DD)
	cpl
	inc  hl
	ld   (hl), a
	jr   _LABEL_248C_12

_LABEL_247E_11:
	push bc
	push de
	push iy
	ld   hl, ($C0EA)
	call _LABEL_2685_13
	pop  iy
	pop  de
	pop  bc
_LABEL_248C_12:
	pop  hl
	pop  af
	ei
	reti

_LABEL_2491_79:
	push af
	push bc
	push de
	push hl
	push iy
	ld   hl, $C023
	ld   (hl), $01
	pop  iy
	pop  hl
	pop  de
	pop  bc
	pop  af
	retn

_LABEL_24A4_55:
	push ix
	ld   ix, $0000
	add  ix, sp
	ld   hl, $FFF0
	add  hl, sp
	ld   sp, hl
	ld   (ix+254), $00
	ld   (ix+255), $00
	ld   (ix+243), $00
	ld   (ix+244), $00
	ld   l, (ix+5)
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   (ix+252), l
	ld   a, h
	or   $78
	ld   (ix+253), a
	ld   a, (ix+4)
	ld   (ix+250), a
	ld   (ix+251), $00
	sla  (ix+250)
	rl   (ix+251)
	ld   a, (ix+252)
	or   (ix+250)
	ld   e, a
	ld   a, (ix+253)
	or   (ix+251)
	ld   d, a
	ld   a, (ix+8)
	ld   (ix+250), a
	ld   (ix+241), a
	ld   (ix+240), $00
	ld   l, e
	ld   h, d
	rst  $8
_LABEL_2505_64:
	ld   l, (ix+6)
	ld   h, (ix+7)
	ld   a, (hl)
	ld   (ix+242), a
	inc  hl
	ld   (ix+6), l
	ld   (ix+7), h
	ld   a, (ix+6)
	ld   (ix+252), a
	ld   a, (ix+7)
	ld   (ix+253), a
	ld   a, (ix+242)
	and  $02
	ld   (ix+249), a
	ld   a, (ix+242)
	rrca
	rrca
	and  $3F
	ld   (ix+248), a
	bit  0, (ix+242)
	jp   z, _LABEL_25DD_56
	ld   (ix+246), $00
	ld   a, (ix+255)
	ld   (ix+247), a
	ld   c, (ix+252)
	ld   b, (ix+253)
	inc  bc
	ld   l, (ix+252)
	ld   h, (ix+253)
	ld   l, (hl)
	ld   a, (ix+248)
	add  a, $02
	ld   (ix+245), a
	ld   h, $00
	ld   a, l
	or   (ix+246)
	ld   l, a
	ld   a, h
	or   (ix+247)
	ld   h, a
	ld   a, (ix+249)
	or   a
	jr   z, _LABEL_25A9_57
	ld   (ix+6), c
	ld   (ix+7), b
	ld   c, l
	ld   b, h
	ld   l, (ix+245)
_LABEL_2578_62:
	ld   a, l
	or   a
	jp   z, _LABEL_2656_58
	push hl
	ld   l, c
	ld   h, b
	rst  $18
	pop  hl
	dec  (ix+241)
	ld   a, (ix+241)
	or   a
	jr   nz, _LABEL_25A0_60
	ld   a, e
	add  a, $40
	ld   e, a
	ld   a, d
	adc  a, $00
	ld   d, a
	push hl
	push bc
	ld   l, e
	ld   h, d
	rst  $8
	pop  bc
	pop  hl
	ld   a, (ix+250)
	ld   (ix+241), a
_LABEL_25A0_60:
	ld   a, $01
	sub  l
	jr   nc, _LABEL_25A6_61
	inc  bc
_LABEL_25A6_61:
	dec  l
	jr   _LABEL_2578_62

_LABEL_25A9_57:
	ld   (ix+6), c
	ld   (ix+7), b
	ld   (ix+254), l
	ld   (ix+255), h
	ld   b, (ix+245)
_LABEL_25B8_66:
	ld   a, b
	or   a
	jp   z, _LABEL_2666_63
	ld   l, (ix+254)
	ld   h, (ix+255)
	rst  $18
	dec  (ix+241)
	ld   a, (ix+241)
	or   a
	jr   nz, _LABEL_25DA_65
	ld   hl, $0040
	add  hl, de
	ld   e, l
	ld   d, h
	rst  $8
	ld   a, (ix+250)
	ld   (ix+241), a
_LABEL_25DA_65:
	dec  b
	jr   _LABEL_25B8_66

_LABEL_25DD_56:
	ld   a, (ix+249)
	or   a
	jr   z, _LABEL_260C_67
	bit  2, (ix+242)
	jr   z, _LABEL_25F9_68
	ld   a, (ix+254)
	ld   (ix+243), a
	ld   a, (ix+255)
	ld   (ix+244), a
	ld   (ix+240), $01
_LABEL_25F9_68:
	ld   c, (ix+242)
	srl  c
	srl  c
	srl  c
	ld   (ix+255), c
	ld   (ix+254), $00
	jp   _LABEL_2505_64

_LABEL_260C_67:
	ld   l, (ix+248)
	ld   a, l
	or   a
	jr   z, _LABEL_2680_69
	ld   a, (ix+255)
	ld   (ix+246), a
	ld   (ix+247), $00
	ld   c, (ix+252)
	ld   b, (ix+253)
	ld   (ix+245), l
_LABEL_2626_72:
	ld   a, (ix+245)
	or   a
	jr   z, _LABEL_2660_70
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	nop
	nop
	nop
	ld   a, (ix+246)
	out  ($BE), a
	dec  (ix+241)
	ld   a, (ix+241)
	or   a
	jr   nz, _LABEL_2651_71
	ld   hl, $0040
	add  hl, de
	ex   de, hl
	push bc
	ld   l, e
	ld   h, d
	rst  $8
	pop  bc
	ld   a, (ix+250)
	ld   (ix+241), a
_LABEL_2651_71:
	dec  (ix+245)
	jr   _LABEL_2626_72

_LABEL_2656_58:
	ld   (ix+254), c
	ld   (ix+255), b
	jr   _LABEL_2666_63


; Data from 265E to 265F (2 bytes)
.db $18, $06

_LABEL_2660_70:
	ld   (ix+6), c
	ld   (ix+7), b
_LABEL_2666_63:
	bit  0, (ix+240)
	jp   z, _LABEL_2505_64
	ld   a, (ix+243)
	ld   (ix+254), a
	ld   a, (ix+244)
	ld   (ix+255), a
	ld   (ix+240), $00
	jp   _LABEL_2505_64

_LABEL_2680_69:
	ld   sp, ix
	pop  ix
	ret

_LABEL_2685_13:
	jp   (hl)

_LABEL_2686_36:
	ld   iy, $0004
	add  iy, sp
	ld   l, (iy+0)
	ld   h, (iy+1)
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	set  6, h
	rst  $8
	pop  bc
	pop  ix
	push ix
	push bc
	ld   c, (ix+0)
	inc  ix
	ld   b, (ix+0)
	inc  ix
_LABEL_26AA_51:
	push bc
	ld   b, $04
	ld   de, $C0EC
	ld   c, (ix+0)
	inc  ix
_LABEL_26B5_48:
	rlc  c
	jr   nc, _LABEL_26FC_37
	rlc  c
	jr   c, _LABEL_26F8_38
	ld   a, (ix+0)
	inc  ix
	ex   de, hl
	ld   d, a
	and  $03
	add  a, a
	add  a, a
	add  a, a
	ld   e, a
	ld   a, d
	ld   d, $00
	ld   iy, $C0EC
	add  iy, de
	ex   de, hl
	cp   $03
	jr   c, _LABEL_2716_39
	cp   $10
	jr   c, _LABEL_26F0_40
	cp   $13
	jr   c, _LABEL_271B_41
	cp   $20
	jr   c, _LABEL_26F0_40
	cp   $23
	jr   c, _LABEL_2720_42
	cp   $40
	jr   c, _LABEL_26F0_40
	cp   $43
	jr   c, _LABEL_2729_43
_LABEL_26F0_40:
	ld   h, a
	ld   l, (ix+0)
	inc  ix
	jr   _LABEL_2702_44

_LABEL_26F8_38:
	ld   h, $00
	jr   _LABEL_2702_44

_LABEL_26FC_37:
	rlc  c
	sbc  a, a
	ld   l, a
	ld   h, $FF
_LABEL_2702_44:
	push bc
	ld   b, $08
_LABEL_2705_46:
	ld   a, l
	rlc  h
	jr   c, _LABEL_270F_45
	ld   a, (ix+0)
	inc  ix
_LABEL_270F_45:
	ld   (de), a
	inc  de
	djnz _LABEL_2705_46
	pop  bc
	jr   _LABEL_2747_47

_LABEL_2716_39:
	ld   hl, $FF00
	jr   _LABEL_2730_54

_LABEL_271B_41:
	ld   hl, $FFFF
	jr   _LABEL_2730_54

_LABEL_2720_42:
	ld   h, (ix+0)
	ld   l, $00
	inc  ix
	jr   _LABEL_2730_54

_LABEL_2729_43:
	ld   h, (ix+0)
	ld   l, $FF
	inc  ix
_LABEL_2730_54:
	push bc
	ld   b, $08
_LABEL_2733_53:
	ld   a, (iy+0)
	inc  iy
	xor  l
	rlc  h
	jr   c, _LABEL_2742_52
	ld   a, (ix+0)
	inc  ix
_LABEL_2742_52:
	ld   (de), a
	inc  de
	djnz _LABEL_2733_53
	pop  bc
_LABEL_2747_47:
	dec  b
	jp   nz, _LABEL_26B5_48
	ld   de, $0008
	ld   c, e
	ld   hl, $C0EC
_LABEL_2752_50:
	ld   b, $04
	push hl
_LABEL_2755_49:
	ld   a, (hl)
	out  ($BE), a
	add  hl, de
	djnz _LABEL_2755_49
	pop  hl
	inc  hl
	dec  c
	jr   nz, _LABEL_2752_50
	pop  bc
	dec  bc
	ld   a, b
	or   c
	jp   nz, _LABEL_26AA_51
	ret


; Data from 2768 to 276F (8 bytes)
.db $00, $00, $00, $00, $04, $20, $08, $08

_LABEL_2770_4:
	ld   bc, $0008
	ld   a, b
	or   c
	jr   z, _LABEL_277F_5
	ld   de, $C10C
	ld   hl, $2768
	ldir
_LABEL_277F_5:
	ret


.BANK 1 SLOT 1
.ORG $0000


; Data from 4000 to 7FFF (16384 bytes)
.incbin "output.sms.dat.10"

