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

_LABEL_6_58:
	nop
	nop
_LABEL_8_8:
	ld   c, $BF
	di
	out  (c), l
	out  (c), h
	ei
	ret

_LABEL_11_59:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	jp   _LABEL_13EE_10


; Data from 3B to 65 (43 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

_NMI_HANDLER:
	jp   _LABEL_1424_65


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
	call _LABEL_1522_4
	call _LABEL_115E_6
	ei
	call _LABEL_334_25

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
	ld   hl, $0A3B
	push hl
	call _LABEL_1438_36
	pop  af
	pop  af
	ld   hl, $092B
	jp   _LABEL_1294_55

_LABEL_21D_57:
	push ix
	ld   ix, $0000
	add  ix, sp
	ld   l, (ix+6)
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   c, l
	ld   a, h
	or   $78
	ld   b, a
	ld   l, (ix+5)
	ld   h, $00
	add  hl, hl
	ld   a, l
	or   c
	ld   l, a
	ld   a, h
	or   b
	ld   h, a
	call _LABEL_6_58
	ld   hl, $093B
	ld   c, (hl)
	ld   b, $00
	ld   l, (ix+4)
	ld   h, $00
	add  hl, bc
	pop  ix
	jp   _LABEL_11_59

_LABEL_255_60:
	push ix
	ld   ix, $0000
	add  ix, sp
	ld   hl, $FFFA
	add  hl, sp
	ld   sp, hl
	ld   a, (ix+4)
	rrca
	rrca
	rrca
	and  $1F
	rlca
	rlca
	rlca
	rlca
	and  $F0
	add  a, $40
	ld   c, a
	ld   a, (ix+4)
	add  a, a
	ld   l, a
	add  hl, bc
	ld   (ix+4), l
	ld   a, (ix+6)
	ld   (ix+254), a
	ld   (ix+255), $00
	ld   l, (ix+254)
	ld   h, (ix+255)
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   c, l
	ld   a, h
	or   $78
	ld   b, a
	ld   l, (ix+5)
	ld   h, $00
	add  hl, hl
	ld   (ix+252), l
	ld   (ix+253), h
	ld   a, c
	or   (ix+252)
	ld   l, a
	ld   a, b
	or   (ix+253)
	ld   h, a
	push bc
	call _LABEL_6_58
	pop  bc
	ld   hl, $093B
	ld   l, (hl)
	ld   h, $00
	ld   e, (ix+4)
	ld   d, $00
	add  hl, de
	call _LABEL_11_59
	ld   l, (ix+5)
	inc  l
	ld   h, $00
	add  hl, hl
	inc  sp
	inc  sp
	push hl
	ld   a, c
	or   (ix+250)
	ld   l, a
	ld   a, b
	or   (ix+251)
	ld   h, a
	call _LABEL_6_58
	ld   hl, $093B
	ld   l, (hl)
	ld   h, $00
	add  hl, de
	inc  hl
	call _LABEL_11_59
	ld   l, (ix+254)
	ld   h, (ix+255)
	inc  hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   c, l
	ld   a, h
	or   $78
	ld   b, a
	ld   a, c
	or   (ix+252)
	ld   l, a
	ld   a, b
	or   (ix+253)
	ld   h, a
	push bc
	call _LABEL_6_58
	pop  bc
	ld   hl, $093B
	ld   l, (hl)
	ld   h, $00
	add  hl, de
	push de
	ld   de, $0010
	add  hl, de
	pop  de
	call _LABEL_11_59
	ld   a, c
	or   (ix+250)
	ld   l, a
	ld   a, b
	or   (ix+251)
	ld   h, a
	call _LABEL_6_58
	ld   hl, $093B
	ld   l, (hl)
	ld   h, $00
	add  hl, de
	ld   bc, $0011
	add  hl, bc
	call _LABEL_11_59
	ld   sp, ix
	pop  ix
	ret

_LABEL_334_25:
	call _LABEL_115E_6
	ld   l, $00
	call _LABEL_1227_26
	ld   l, $01
	call _LABEL_1213_32
	ld   hl, $0020
	call _LABEL_11C5_28
	call _LABEL_20A_35
	ld   hl, $0101
	push hl
	ld   a, $33
	push af
	inc  sp
	call _LABEL_21D_57
	inc  sp
	ld   hl, $0102
	ex   (sp), hl
	ld   a, $34
	push af
	inc  sp
	call _LABEL_21D_57
	inc  sp
	ld   hl, $0103
	ex   (sp), hl
	ld   a, $25
	push af
	inc  sp
	call _LABEL_21D_57
	inc  sp
	ld   hl, $0104
	ex   (sp), hl
	ld   a, $36
	push af
	inc  sp
	call _LABEL_21D_57
	inc  sp
	ld   hl, $0105
	ex   (sp), hl
	ld   a, $25
	push af
	inc  sp
	call _LABEL_21D_57
	inc  sp
	ld   hl, $0201
	ex   (sp), hl
	xor  a
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0203
	ex   (sp), hl
	ld   a, $01
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0205
	ex   (sp), hl
	ld   a, $02
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0207
	ex   (sp), hl
	ld   a, $03
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0209
	ex   (sp), hl
	ld   a, $04
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $020B
	ex   (sp), hl
	ld   a, $05
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $020D
	ex   (sp), hl
	ld   a, $06
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $020F
	ex   (sp), hl
	ld   a, $07
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0211
	ex   (sp), hl
	ld   a, $08
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0213
	ex   (sp), hl
	ld   a, $09
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0215
	ex   (sp), hl
	ld   a, $0A
	push af
	inc  sp
	call _LABEL_255_60
	inc  sp
	ld   hl, $0217
	ex   (sp), hl
	ld   a, $0B
	push af
	inc  sp
	call _LABEL_255_60
	pop  af
	inc  sp
	ld   hl, $0140
	call _LABEL_11C5_28
_LABEL_41C_63:
	call _LABEL_1356_61
	jr   _LABEL_41C_63


; Data from 421 to 115D (3389 bytes)
.incbin "output.sms.dat.1"

_LABEL_115E_6:
	ld   hl, $0000
	push hl
	call _LABEL_1280_7
	pop  af
	ld   c, $00
_LABEL_1168_14:
	ld   hl, $11B2
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
	jr   c, _LABEL_1168_14
	call _LABEL_12C0_15
	call _LABEL_131B_16
	call _LABEL_132D_17
	call _LABEL_13C0_20
_LABEL_118B_21:
	in   a, ($7E)
	ld   b, a
	ld   a, $80
	sub  b
	jr   c, _LABEL_118B_21
_LABEL_1193_22:
	in   a, ($7E)
	sub  $80
	jr   c, _LABEL_1193_22
_LABEL_1199_23:
	in   a, ($7E)
	ld   c, a
	in   a, ($7E)
	sub  c
	jr   nc, _LABEL_1199_23
	ld   a, c
	sub  $E7
	jr   c, _LABEL_11AC_24
	ld   hl, $C024
	ld   (hl), $80
	ret

_LABEL_11AC_24:
	ld   hl, $C024
	ld   (hl), $40
	ret


; Data from 11B2 to 11C4 (19 bytes)
.db $04, $20, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $FF, $FD, $21, $24, $C0, $FD
.db $6E, $00, $C9

_LABEL_11C5_28:
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

_LABEL_11DC_31:
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


; Data from 11F5 to 1212 (30 bytes)
.db $F3, "}", $D3, $BF, ">", $88, $D3, $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $89, $D3
.db $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $87, $D3, $BF, $FB, $C9

_LABEL_1213_32:
	bit  0, l
	jr   z, _LABEL_121B_33
	ld   c, $FB
	jr   _LABEL_121D_34

_LABEL_121B_33:
	ld   c, $FF
_LABEL_121D_34:
	di
	ld   a, c
	out  ($BF), a
	ld   a, $86
	out  ($BF), a
	ei
	ret

_LABEL_1227_26:
	ld   c, l
	bit  0, c
	jr   z, _LABEL_123B_27
	push bc
	ld   hl, $0102
	call _LABEL_11C5_28
	pop  bc
	ld   hl, $C112
	ld   (hl), $10
	jr   _LABEL_1248_29

_LABEL_123B_27:
	push bc
	ld   hl, $0102
	call _LABEL_11DC_31
	pop  bc
	ld   hl, $C112
	ld   (hl), $08
_LABEL_1248_29:
	bit  1, c
	jr   z, _LABEL_1260_30
	ld   hl, $0101
	call _LABEL_11C5_28
	ld   hl, $C113
	ld   (hl), $10
	ld   iy, $C112
	sla  (iy+0)
	ret

_LABEL_1260_30:
	ld   hl, $0101
	call _LABEL_11DC_31
	ld   hl, $C113
	ld   (hl), $08
	ret


; Data from 126C to 127F (20 bytes)
.db $21, $02, $00, $39, $4E, $06, $00, $21, $00, $C0, $09, $CF, $21, $03, $00, $39
.db $7E, $D3, $BE, $C9

_LABEL_1280_7:
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

_LABEL_1294_55:
	ld   de, $C000
	ld   c, $BF
	di
	out  (c), e
	out  (c), d
	ei
	ld   b, $10
	ld   c, $BE
_LABEL_12A3_56:
	outi
	jr   nz, _LABEL_12A3_56
	ret


; Data from 12A8 to 12BF (24 bytes)
.db $11, $10, $C0, $0E, $BF, $F3, $ED, $59, $ED, $51, $FB, $06, $10, $0E, $BE, $ED
.db $A3, $20, $FC, $C9, $7D, $D3, $BE, $C9

_LABEL_12C0_15:
	ld   hl, $C0E9
	ld   (hl), $00
	ret


; Data from 12C6 to 131A (85 bytes)
.db $3A, $E9, $C0, $D6, $40, $30, $4B, $FD, $21, $03, $00, $FD, $39, $FD, $7E, $00
.db $D6, $D1, $28, $3E, $3E, $29, $21, $E9, $C0, $86, $4F, $3E, $C0, $CE, $00, $47
.db $FD, $5E, $00, $1D, $7B, $02, $3A, $E9, $C0, $87, $4F, $21, $69, $C0, $06, $00
.db $09, $FD, $21, $02, $00, $FD, $39, $FD, $7E, $00, $77, $23, $FD, $21, $04, $00
.db $FD, $39, $FD, $7E, $00, $77, $FD, $21, $E9, $C0, $FD, $4E, $00, $FD, $34, $00
.db $69, $C9, $2E, $FF, $C9

_LABEL_131B_16:
	ld   a, ($C0E9)
	sub  $40
	ret  nc

	ld   bc, $C029
	ld   hl, ($C0E9)
	ld   h, $00
	add  hl, bc
	ld   (hl), $D0
	ret

_LABEL_132D_17:
	ld   hl, $7F00
	rst  $8
	ld   bc, $C029
	ld   e, $40
_LABEL_1336_18:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_1336_18
	ld   hl, $7F80
	rst  $8
	ld   bc, $C069
	ld   e, $80
_LABEL_134A_19:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_134A_19
	ret

_LABEL_1356_61:
	ld   hl, $C021
	ld   (hl), $00
_LABEL_135B_62:
	ld   hl, $C021
	bit  0, (hl)
	jr   z, _LABEL_135B_62
	ret


; Data from 1363 to 13BF (93 bytes)
.db $2A, $25, $C0, $C9, $FD, $21, $27, $C0, $FD, $7E, $00, $2F, $4F, $FD, $7E, $01
.db $2F, $47, $FD, $21, $25, $C0, $FD, $7E, $00, $A1, $6F, $FD, $7E, $01, $A0, $67
.db $C9, $3A, $25, $C0, $FD, $21, $27, $C0, $FD, $A6, $00, $6F, $3A, $26, $C0, $FD
.db $21, $27, $C0, $FD, $A6, $01, $67, $C9, $FD, $21, $25, $C0, $FD, $7E, $00, $2F
.db $4F, $FD, $7E, $01, $2F, $47, $79, $FD, $21, $27, $C0, $FD, $A6, $00, $6F, $78
.db $FD, $A6, $01, $67, $C9, $FD, $21, $23, $C0, $FD, $6E, $00, $C9

_LABEL_13C0_20:
	ld   hl, $C023
	ld   (hl), $00
	ret


; Data from 13C6 to 13ED (40 bytes)
.db $21, $02, $00, $39, $7E, $32, $EA, $C0, $21, $03, $00, $39, $7E, $32, $EB, $C0
.db $C9, $21, $02, $00, $39, $4E, $F3, $79, $D3, $BF, $3E, $8A, $D3, $BF, $FB, $C9
.db $DB, $7E, $6F, $C9, $DB, $7F, $6F, $C9

_LABEL_13EE_10:
	push af
	push hl
	in   a, ($BF)
	ld   ($C022), a
	rlca
	jr   nc, _LABEL_1411_11
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
	jr   _LABEL_141F_12

_LABEL_1411_11:
	push bc
	push de
	push iy
	ld   hl, ($C0EA)
	call _LABEL_1437_13
	pop  iy
	pop  de
	pop  bc
_LABEL_141F_12:
	pop  hl
	pop  af
	ei
	reti

_LABEL_1424_65:
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

_LABEL_1437_13:
	jp   (hl)

_LABEL_1438_36:
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
_LABEL_145C_51:
	push bc
	ld   b, $04
	ld   de, $C0EC
	ld   c, (ix+0)
	inc  ix
_LABEL_1467_48:
	rlc  c
	jr   nc, _LABEL_14AE_37
	rlc  c
	jr   c, _LABEL_14AA_38
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
	jr   c, _LABEL_14C8_39
	cp   $10
	jr   c, _LABEL_14A2_40
	cp   $13
	jr   c, _LABEL_14CD_41
	cp   $20
	jr   c, _LABEL_14A2_40
	cp   $23
	jr   c, _LABEL_14D2_42
	cp   $40
	jr   c, _LABEL_14A2_40
	cp   $43
	jr   c, _LABEL_14DB_43
_LABEL_14A2_40:
	ld   h, a
	ld   l, (ix+0)
	inc  ix
	jr   _LABEL_14B4_44

_LABEL_14AA_38:
	ld   h, $00
	jr   _LABEL_14B4_44

_LABEL_14AE_37:
	rlc  c
	sbc  a, a
	ld   l, a
	ld   h, $FF
_LABEL_14B4_44:
	push bc
	ld   b, $08
_LABEL_14B7_46:
	ld   a, l
	rlc  h
	jr   c, _LABEL_14C1_45
	ld   a, (ix+0)
	inc  ix
_LABEL_14C1_45:
	ld   (de), a
	inc  de
	djnz _LABEL_14B7_46
	pop  bc
	jr   _LABEL_14F9_47

_LABEL_14C8_39:
	ld   hl, $FF00
	jr   _LABEL_14E2_54

_LABEL_14CD_41:
	ld   hl, $FFFF
	jr   _LABEL_14E2_54

_LABEL_14D2_42:
	ld   h, (ix+0)
	ld   l, $00
	inc  ix
	jr   _LABEL_14E2_54

_LABEL_14DB_43:
	ld   h, (ix+0)
	ld   l, $FF
	inc  ix
_LABEL_14E2_54:
	push bc
	ld   b, $08
_LABEL_14E5_53:
	ld   a, (iy+0)
	inc  iy
	xor  l
	rlc  h
	jr   c, _LABEL_14F4_52
	ld   a, (ix+0)
	inc  ix
_LABEL_14F4_52:
	ld   (de), a
	inc  de
	djnz _LABEL_14E5_53
	pop  bc
_LABEL_14F9_47:
	dec  b
	jp   nz, _LABEL_1467_48
	ld   de, $0008
	ld   c, e
	ld   hl, $C0EC
_LABEL_1504_50:
	ld   b, $04
	push hl
_LABEL_1507_49:
	ld   a, (hl)
	out  ($BE), a
	add  hl, de
	djnz _LABEL_1507_49
	pop  hl
	inc  hl
	dec  c
	jr   nz, _LABEL_1504_50
	pop  bc
	dec  bc
	ld   a, b
	or   c
	jp   nz, _LABEL_145C_51
	ret


; Data from 151A to 1521 (8 bytes)
.db $00, $00, $00, $00, $04, $20, $08, $08

_LABEL_1522_4:
	ld   bc, $0008
	ld   a, b
	or   c
	jr   z, _LABEL_1531_5
	ld   de, $C10C
	ld   hl, $151A
	ldir
_LABEL_1531_5:
	ret


.BANK 1 SLOT 1
.ORG $0000


; Data from 4000 to 7FFF (16384 bytes)
.incbin "output.sms.dat.10"

