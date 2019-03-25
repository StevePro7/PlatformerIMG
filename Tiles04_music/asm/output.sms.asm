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


; Data from 11 to 37 (39 bytes)
.db $00, $00, $00, $00, $00, $00, $00, "}", $D3, $BE, "|", $D6, $00, $00, $D3, $BE, $C9
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00

_IRQ_HANDLER:
	jp   _LABEL_3710_10


; Data from 3B to 65 (43 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

_NMI_HANDLER:
	jp   _LABEL_3746_39


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
	call _LABEL_3762_4
	call _LABEL_3480_6
	ei
	call _LABEL_20A_25

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

_LABEL_20A_25:
	call _LABEL_3480_6
	ld   l, $00
	call _LABEL_3549_26
	ld   l, $01
	call _LABEL_3535_32
	ld   hl, $0020
	call _LABEL_34E7_28
	ld   hl, $0140
	call _LABEL_34E7_28
_LABEL_223_37:
	call _LABEL_3678_35
	jr   _LABEL_223_37


; Data from 228 to 347F (12888 bytes)
.incbin "output.sms.dat.0"

_LABEL_3480_6:
	ld   hl, $0000
	push hl
	call _LABEL_35A2_7
	pop  af
	ld   c, $00
_LABEL_348A_14:
	ld   hl, $34D4
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
	jr   c, _LABEL_348A_14
	call _LABEL_35E2_15
	call _LABEL_363D_16
	call _LABEL_364F_17
	call _LABEL_36E2_20
_LABEL_34AD_21:
	in   a, ($7E)
	ld   b, a
	ld   a, $80
	sub  b
	jr   c, _LABEL_34AD_21
_LABEL_34B5_22:
	in   a, ($7E)
	sub  $80
	jr   c, _LABEL_34B5_22
_LABEL_34BB_23:
	in   a, ($7E)
	ld   c, a
	in   a, ($7E)
	sub  c
	jr   nc, _LABEL_34BB_23
	ld   a, c
	sub  $E7
	jr   c, _LABEL_34CE_24
	ld   hl, $C024
	ld   (hl), $80
	ret

_LABEL_34CE_24:
	ld   hl, $C024
	ld   (hl), $40
	ret


; Data from 34D4 to 34E6 (19 bytes)
.db $04, $20, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $FF, $FD, $21, $24, $C0, $FD
.db $6E, $00, $C9

_LABEL_34E7_28:
	ld   c, l
	ld   e, h
	ld   d, $00
	ld   hl, $C0F0
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

_LABEL_34FE_31:
	ld   a, l
	ld   e, h
	cpl
	ld   b, a
	ld   d, $00
	ld   hl, $C0F0
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


; Data from 3517 to 3534 (30 bytes)
.db $F3, "}", $D3, $BF, ">", $88, $D3, $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $89, $D3
.db $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $87, $D3, $BF, $FB, $C9

_LABEL_3535_32:
	bit  0, l
	jr   z, _LABEL_353D_33
	ld   c, $FB
	jr   _LABEL_353F_34

_LABEL_353D_33:
	ld   c, $FF
_LABEL_353F_34:
	di
	ld   a, c
	out  ($BF), a
	ld   a, $86
	out  ($BF), a
	ei
	ret

_LABEL_3549_26:
	ld   c, l
	bit  0, c
	jr   z, _LABEL_355D_27
	push bc
	ld   hl, $0102
	call _LABEL_34E7_28
	pop  bc
	ld   hl, $C0F2
	ld   (hl), $10
	jr   _LABEL_356A_29

_LABEL_355D_27:
	push bc
	ld   hl, $0102
	call _LABEL_34FE_31
	pop  bc
	ld   hl, $C0F2
	ld   (hl), $08
_LABEL_356A_29:
	bit  1, c
	jr   z, _LABEL_3582_30
	ld   hl, $0101
	call _LABEL_34E7_28
	ld   hl, $C0F3
	ld   (hl), $10
	ld   iy, $C0F2
	sla  (iy+0)
	ret

_LABEL_3582_30:
	ld   hl, $0101
	call _LABEL_34FE_31
	ld   hl, $C0F3
	ld   (hl), $08
	ret


; Data from 358E to 35A1 (20 bytes)
.db $21, $02, $00, $39, $4E, $06, $00, $21, $00, $C0, $09, $CF, $21, $03, $00, $39
.db $7E, $D3, $BE, $C9

_LABEL_35A2_7:
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


; Data from 35B6 to 35E1 (44 bytes)
.db $11, $00, $C0, $0E, $BF, $F3, $ED, $59, $ED, $51, $FB, $06, $10, $0E, $BE, $ED
.db $A3, $20, $FC, $C9, $11, $10, $C0, $0E, $BF, $F3, $ED, $59, $ED, $51, $FB, $06
.db $10, $0E, $BE, $ED, $A3, $20, $FC, $C9, $7D, $D3, $BE, $C9

_LABEL_35E2_15:
	ld   hl, $C0E9
	ld   (hl), $00
	ret


; Data from 35E8 to 363C (85 bytes)
.db $3A, $E9, $C0, $D6, $40, $30, $4B, $FD, $21, $03, $00, $FD, $39, $FD, $7E, $00
.db $D6, $D1, $28, $3E, $3E, $29, $21, $E9, $C0, $86, $4F, $3E, $C0, $CE, $00, $47
.db $FD, $5E, $00, $1D, $7B, $02, $3A, $E9, $C0, $87, $4F, $21, $69, $C0, $06, $00
.db $09, $FD, $21, $02, $00, $FD, $39, $FD, $7E, $00, $77, $23, $FD, $21, $04, $00
.db $FD, $39, $FD, $7E, $00, $77, $FD, $21, $E9, $C0, $FD, $4E, $00, $FD, $34, $00
.db $69, $C9, $2E, $FF, $C9

_LABEL_363D_16:
	ld   a, ($C0E9)
	sub  $40
	ret  nc

	ld   bc, $C029
	ld   hl, ($C0E9)
	ld   h, $00
	add  hl, bc
	ld   (hl), $D0
	ret

_LABEL_364F_17:
	ld   hl, $7F00
	rst  $8
	ld   bc, $C029
	ld   e, $40
_LABEL_3658_18:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_3658_18
	ld   hl, $7F80
	rst  $8
	ld   bc, $C069
	ld   e, $80
_LABEL_366C_19:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_366C_19
	ret

_LABEL_3678_35:
	ld   hl, $C021
	ld   (hl), $00
_LABEL_367D_36:
	ld   hl, $C021
	bit  0, (hl)
	jr   z, _LABEL_367D_36
	ret


; Data from 3685 to 36E1 (93 bytes)
.db $2A, $25, $C0, $C9, $FD, $21, $27, $C0, $FD, $7E, $00, $2F, $4F, $FD, $7E, $01
.db $2F, $47, $FD, $21, $25, $C0, $FD, $7E, $00, $A1, $6F, $FD, $7E, $01, $A0, $67
.db $C9, $3A, $25, $C0, $FD, $21, $27, $C0, $FD, $A6, $00, $6F, $3A, $26, $C0, $FD
.db $21, $27, $C0, $FD, $A6, $01, $67, $C9, $FD, $21, $25, $C0, $FD, $7E, $00, $2F
.db $4F, $FD, $7E, $01, $2F, $47, $79, $FD, $21, $27, $C0, $FD, $A6, $00, $6F, $78
.db $FD, $A6, $01, $67, $C9, $FD, $21, $23, $C0, $FD, $6E, $00, $C9

_LABEL_36E2_20:
	ld   hl, $C023
	ld   (hl), $00
	ret


; Data from 36E8 to 370F (40 bytes)
.db $21, $02, $00, $39, $7E, $32, $EA, $C0, $21, $03, $00, $39, $7E, $32, $EB, $C0
.db $C9, $21, $02, $00, $39, $4E, $F3, $79, $D3, $BF, $3E, $8A, $D3, $BF, $FB, $C9
.db $DB, $7E, $6F, $C9, $DB, $7F, $6F, $C9

_LABEL_3710_10:
	push af
	push hl
	in   a, ($BF)
	ld   ($C022), a
	rlca
	jr   nc, _LABEL_3733_11
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
	jr   _LABEL_3741_12

_LABEL_3733_11:
	push bc
	push de
	push iy
	ld   hl, ($C0EA)
	call _LABEL_3759_13
	pop  iy
	pop  de
	pop  bc
_LABEL_3741_12:
	pop  hl
	pop  af
	ei
	reti

_LABEL_3746_39:
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

_LABEL_3759_13:
	jp   (hl)


; Data from 375A to 3761 (8 bytes)
.db $00, $00, $00, $00, $04, $20, $08, $08

_LABEL_3762_4:
	ld   bc, $0008
	ld   a, b
	or   c
	jr   z, _LABEL_3771_5
	ld   de, $C0EC
	ld   hl, $375A
	ldir
_LABEL_3771_5:
	ret


.BANK 1 SLOT 1
.ORG $0000


; Data from 4000 to 7FFF (16384 bytes)
.incbin "output.sms.dat.10"

