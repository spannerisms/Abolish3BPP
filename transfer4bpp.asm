;------------------------------------------------------------------------
; Defines
;------------------------------------------------------------------------
!DMA_ADDR_1 ?= $19EA
!DMA_BANK_1 ?= $19EC
!DMA_ADDR_2 ?= $19ED
!DMA_BANK_2 ?= $19EF
!scratch_1 ?= $76
;------------------------------------------------------------------------
org $008A5C : LDA #$7F ; change animated tile DMA bank

org $008CA2 ; add new jump routines for NMI dma's based on $17
	dw SetUpSprDMA0_nmi
	dw SetUpSprDMA2_nmi
	dw SetUpSprDMA3_nmi

org $008F8E
NMI_DoSprChrDMA:
	STA $2116
.vram_set
	LDY #$80 : STY $2115
	LDA #$1801 : STA $4300
	LDA $00 : STA $4302
	LDY $02 : STY $4304
	LDA #$0800 : STA $4305

	LDY #$01 : STY $420B
	SEP #$20
	RTS

warnpc $008FC4
;------------------------------------------------------------------------
; 00D585 (5585) ?????? seems unused
;------------------------------------------------------------------------

;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D231
LoadAllItemUseGFX:
	PHB : PHK : PLB
	REP #$20
	STZ $0A : STZ $0C
	LDA #$0480 : STA $06 ; index into 4bpp buffer, keep vanilla

	SEP #$20

	LDA #$07 : JSR LoadItemUseGFX_sheet0 ; rods
	LDA #$07 : JSR LoadItemUseGFX_sheet0 ; hammer
	LDA #$03 : JSR LoadItemUseGFX_sheet0 ; bow
	LDY #$5F : LDA #$04 : JSR LoadItemUseGFX_arb_sheet ; shovel
	LDA #$03 : JSR LoadItemUseGFX_cur_sheet ; z/quavers
	LDA #$01 : JSR LoadItemUseGFX_cur_sheet ; powder
	LDA #$04 : JSR LoadItemUseGFX_sheet0 ; hookshot
	LDY #$60 : LDA #$0E : JSR LoadItemUseGFX_arb_sheet ; net
	LDA #$07 : JSR LoadItemUseGFX_cur_sheet ; canes
	LDY #$5F : LDA #$02 : JSR LoadItemUseGFX_arb_sheet ; book

	LDY #$54 : JSR SetSheetLoc_spr
	REP #$30
	LDA $00
	LDX #$1480

	PHA
	LDY #$0008 : JSR Do4BPPtoAnimated_high_sprite
	PLA : CLC : ADC #$0200
	LDY #$0008 : JSR Do4BPPtoAnimated_high_sprite

	SEP #$30
	LDY #$60 : JSR SetSheetLoc_spr
	REP #$30
	LDX #$2280
	LDA $00 : PHA

	LDY #$0003 : JSR Do4BPPtoAnimated_high_sprite
	PLA : CLC : ADC #$0200
	LDY #$0003 : JSR Do4BPPtoAnimated_high_sprite

	SEP #$30
	JSR LoadAuxAnimated

	PLB : RTL

warnpc $00D2BE
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D2BE
DecompSwordGfx_offsets:
	dw $0000, $0000, $0180, $0180, $0180

org $00D2C8
DecompSwordGfx:
	PHB : PHK : PLB
	LDY #$5E
	JSR SetSheetLoc_spr

	REP #$21
	LDA $7EF359 : AND #$00FF : ASL : TAY
	LDA $00 : ADC .offsets, Y

	REP #$10
	LDX #$0000
	PHA

	LDY #$000C : JSR Do4BPPtoAnimated_high_sprite
	PLA : CLC : ADC #$0200
	LDY #$000C : JSR Do4BPPtoAnimated_high_sprite
	SEP #$30

	PLB : RTL

warnpc $00D2FF
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D300
DecompShieldGfx_offsets:
	dw $0080, $0080, $0140, $0400

org $00D308
DecompShieldGfx:
	PHB : PHK : PLB
	LDY #$5F
	JSR SetSheetLoc_spr

	REP #$21
	LDA $7EF35A : AND #$00FF : ASL : TAY
	LDA $00 : ADC .offsets, Y

	REP #$10
	LDX #$0300
	PHA

	JSR Do4BPPtoAnimated_high_spritenovar
	PLA : CLC : ADC #$0200
	JSR Do4BPPtoAnimated_high_spritenovar
	SEP #$30

	PLB : RTL

warnpc $00D336
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D337
DecompDungAnimatedTiles:
	PHB : PHK : PLB
	JSR SetSheetLoc_bg

	REP #$30
	LDA $00
	LDY #$0030 : LDX #$1680

	JSR Do4BPPtoAnimated_direct_variable

	SEP #$30
	LDY #$5C : JSR SetSheetLoc_bg

	REP #$30
	LDA $00
	LDY #$0030 : LDX #$1C80

	JSR Do4BPPtoAnimated_direct_variable

	LDX.w #$0000

--	LDA $7FA880, X : PHA

	LDA $7FAC80, X : STA $7FA880, X
	LDA $7FAE80, X : STA $7FAC80, X
	LDA $7FAA80, X : STA $7FAE80, X

	PLA : STA $7FAA80, X

	INX #2 : CPX #$0200 : BNE --

	LDA #$3B00 : STA $0134
	SEP #$30
	PLB : RTL

warnpc $00D394
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D394
DecompOwAnimatedTiles:
	PHB : PHK : PLB
	PHY : JSR SetSheetLoc_bg

	REP #$30
	LDA $00
	LDY #$0040
	LDX #$1680

	JSR Do4BPPtoAnimated_direct_variable
	SEP #$30
	PLY : INY : JSR SetSheetLoc_bg

	REP #$30
	LDA $00
	LDY #$0020
	LDX #$1E80

	JSR Do4BPPtoAnimated_direct_variable

	LDA #$3C00 : STA $0134
	SEP #$30
	PLB : RTL

warnpc $00D3C6
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D3C6
LoadAuxAnimated:
	LDY #$0F : JSR SetSheetLoc_bg

	REP #$30
	LDA $00 : LDY #$0010 : LDX #$2340
	JSR Do4BPPtoAnimated_direct_variable

	SEP #$30
	LDY #$58 : JSR SetSheetLoc_spr
	REP #$30
	LDA $00 : LDY #$0020 : LDX #$2540
	JSR Do4BPPtoAnimated_direct_variable

	SEP #$30
	LDY #$05 : JSR SetSheetLoc_bg
	REP #$31
	LDA $00 : ADC #$0600 ; star tile buffer offset
	LDY #$0002 : LDX #$2DC0
	JSR Do4BPPtoAnimated_direct_variable

	SEP #$30
	RTS

warnpc $00D407
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D407
Tagalong_LoadGfxs_sheets: ; replace offset table with sheet table
	db $64, $66, $66 ; zelda, n/a, n/a
	db $65, $66, $65, $66 ; old man, annoying zelda, maiden, frog
	db $66, $59, $59, $59 ; smithy, sign guy, kiki, n/a
	db $58, $58, $58 ; pchest, big bomb, ms telepathy
	
Tagalong_LoadGfxs_offsets: ; also use for position into sheet (high byte)
	db $00, $00, $00 ; zelda, n/a, n/a
	db $04, $00, $00, $04 ; old man, annoying zelda, maiden, frog
	db $00, $00, $04, $00 ; smithy, sign guy, kiki, n/a
	db $00, $04, $00 ; pchest, big bomb, ms telepathy

warnpc $00D423
org $00D423
Tagalong_LoadGfxs:
	PHB : PHK : PLB
	LDY #$64
	LDA $7EF3CC : DEC : BPL ++ ; no room for 0th entry
	LDA #$01 ; so just check for -1 when decremented and use this
++	TAY : PHY
	LDA .sheets, Y : TAY

	JSR SetSheetLoc_spr
	PLY : LDA .offsets, Y
	CLC : ADC $01 : STA $01

	REP #$30
	LDA $00
	LDY #$0020
	LDX #$2940

	JSR Do4BPPtoAnimated_direct_variable
	SEP #$30
	PLB : RTL

warnpc $00D469
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D4DB
GetAnimatedSpriteTile:
--	PHB : PHK : PLB
	PHA
	STZ $00
	LDA.b #$80 : STA $01
	LDA.b #ItemGetSheets>>16 : STA $02
	BRA .copy
	NOP #2 ; so that .variable lines up
.variable
	BRA -- ; too lazy to change references to this label
.copy
	PLA
	REP #$21
	AND #$00FF : ASL : TAX

	LDA $00
	ADC.l GetItem_offsets, X ; carry will be cleared by the ASL
	BCC .norollover
	CLC : ADC #$8000 ; get to actual rom
	INC $02 ; increment bank

.norollover
	REP #$10
	LDX #$2D40
	LDY #$0002
	PHA

	JSR Do4BPPtoAnimated_high_sprite

	PLA : CLC : ADC #$0200
	LDY #$0002
	JSR Do4BPPtoAnimated_high_sprite

	SEP #$30
	PLB : RTL

;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00D21D ; y items
LoadItemUseGFX_offsets:
	dw $0000, $0160, $0100, $04C0, $0540
	dw $05A0, $0440, $0060, $0420, $05C0

org $00D537
LoadItemUseGFX:
.sheet0
	LDY #$00

.arb_sheet
	STA $0A
	STY !scratch_1
	LDA $CFF3, Y : STA $02
	LDA $D0D2, Y : STA $01
	LDA $D1B1, Y : STA $00
	BRA .transfer

.cur_sheet
	STA $0A
	LDY !scratch_1
	LDA $CFF3, Y : STA $02
	LDA $D0D2, Y : STA $01
	LDA $D1B1, Y : STA $00

.transfer
	REP #$31
	LDY $0C

	LDA $00 : ADC .offsets, Y
	LDX $06
	LDY $0A
	PHA

	JSR Do4BPPtoAnimated_high_sprite

	PLA : CLC : ADC #$0200
	LDY $0A
	JSR Do4BPPtoAnimated_high_sprite

	INC $0C : INC $0C
	STX $06
	SEP #$30
	RTS

;------------------------------------------------------------------------
org $00D5CB
Do4BPPtoAnimated_direct:
	LDY #$0008 ; nothing seems to ever use this that isn't variable
	
.variable
	STA $00
	STY $0E

.nextTile
	LDY #$0007

.write
	LDA [$00] : STA $7F9000, X : INC $00 : INC $00 : INX #2
	LDA [$00] : STA $7F9000, X : INC $00 : INC $00 : INX #2

	DEY : BPL .write

	DEC $0E : BNE .nextTile
	LDA $00
	RTS

warnpc $00D618
;------------------------------------------------------------------------
org $00D619
Do4BPPtoAnimated_high:
	BRA ++ : NOP ; 3 bytes because LDY #$00 06
.variable ; yes i have to do this dumb shit for the routines to work as intended
			; do i really though? was that for some old method with sprites?
	JSL AnimatedHigh
	LDA $00
	RTS

++	LDY #$0006
	JSL AnimatedHigh
	LDA $00
	RTS

.spritenovar
	LDY #$0006
.sprite
	JSL AnimatedSprite
	LDA $00
	RTS

warnpc $00D66E
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $028A63 : JSL LoadTransAuxGfx_sprite
org $00D66E
LoadTransAuxGfx:
	PHB : PHK : PLB
	STZ $00
	REP #$30
	LDA #$7E60 : STA $01

	LDA $0AA2 : AND #$00FF : ASL #2 : STA $0E

	SEP #$20
	LDX $0E
	LDA $DD97, X : BEQ ++
	STA $7EC2F8
++	LDA $7EC2F8
	SEP #$10 : TAY : JSR Decomp_bg_variable

	; vanilla does this dumb SEP #$10 -> REP #$10
	; It's an absolute waste of cycles
	; in fact, putting the REP before this ADC makes
	; so much more sense, because that can be used to
	; clear the carry flag at the same time
	REP #$11
	LDA $01 : ADC #$08 : STA $01
	LDX $0E : LDA $DD98, X : BEQ ++
	STA $7EC2F9
++	LDA $7EC2F9
	SEP #$10 : TAY : JSR Decomp_bg_variable

	REP #$11
	LDA $01 : ADC #$08 : STA $01
	LDX $0E : LDA $DD99, X : BEQ ++
	STA $7EC2FA
++	LDA $7EC2FA
	SEP #$10 : TAY : JSR Decomp_bg_variable

	REP #$11
	LDA $01 : ADC #$08 : STA $01
	LDX $0E : LDA $DD9A, X : BEQ ++
	STA $7EC2FB
++	LDA $7EC2FB
	SEP #$10 : TAY : JSR Decomp_bg_variable

	LDA $01 : CLC : ADC #$08 : STA $01
	BRA .continue

.sprite
	PHB : PHK : PLB
	STZ $00
	LDA #$80 : STA $01
	LDA #$7E : STA $02

.continue
	REP #$30
	LDA $0AA3 : AND #$00FF : ASL #2 : STA $0E

	SEP #$20
	LDX $0E : LDA $DB57, X : BEQ ++
	STA $7EC2FC

++	SEP #$10
	LDA $7EC2FC : TAY : JSR Decomp_spr_variable ; leaving redundant LDA for now
	REP #$11
	LDA $01 : ADC #$08 : STA $01
	LDX $0E : LDA $DB58, X : BEQ ++
	STA $7EC2FD

++	SEP #$10
	LDA $7EC2FD : TAY : JSR Decomp_spr_variable ; leaving redundant LDA for now
	REP #$11
	LDA $01 : ADC #$08 : STA $01
	LDX $0E : LDA $DB59, X : BEQ ++
	STA $7EC2FE

++	SEP #$10
	LDA $7EC2FE : TAY : JSR Decomp_spr_variable ; leaving redundant LDA for now
	REP #$11
	LDA $01 : ADC #$08 : STA $01
	LDX $0E : LDA $DB5A, X : BEQ ++
	STA $7EC2FF

++	SEP #$10
	LDA $7EC2FF : TAY : JSR Decomp_spr_variable ; leaving redundant LDA for now

	STZ $0412
	PLB : RTL

warnpc $00D788
;------------------------------------------------------------------------
; Leave routine mostly vanilla
; Just change buffer jump sizes
; various jump changes from $600->$800
; for buffer at $7E6000
;------------------------------------------------------------------------
org $00D7A1 : db #$08
org $00D7B0 : db #$08
org $00D7BF : db #$08
org $00D7CD : db #$80 ; not a typo, vanilla explicitly sets to $78
org $00D7E0 : db #$08
org $00D7EF : db #$08
org $00D7FE : db #$08

;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
; since bgs can go high or low
; these can't be done without the buffer
org $00D988 ; starting near the end of the routine
BG_vram_1:
	JSR SetSheetLoc_bg
	REP #$31
	LDA $00 : LDX #$0000
	LDY #$0040 : JSR Do4BPP_high_16bit
	PHX

	SEP #$30
	LDY $08 : JSR SetSheetLoc_bg

	REP #$31
	LDA $00 : PLX
	LDY #$0040 : JSR Do4BPP_direct_16bit

	SEP #$30
	PLB : RTL

warnpc $00D9B9
org $00D9B9
BG_vram_2:
	PHB : PHK : PLB
	LDA $00D8F1, X : STA $08
	LDA $00D8F0, X : TAY

	JSR SetSheetLoc_bg

	REP #$31
	LDA $00 : LDX #$0000
	LDY #$0040 : JSR Do4BPP_direct_16bit
	PHX

	SEP #$30
	LDY $08 : JSR SetSheetLoc_bg

	REP #$31
	LDA $00 : PLX
	LDY #$0040 : JSR Do4BPP_high_16bit

	SEP #$30
	PLB : RTL

warnpc $00D9F8
org $00D9F8
BG_vram_3:
	PHB : PHK : PLB
	LDA $7EC2F9 : TAY : JSR SetSheetLoc_bg

	REP #$31
	LDA $00 : LDX #$0000
	LDY #$0040 : JSR Do4BPP_high_16bit
	PHX

	SEP #$30
	LDA $7EC2FA : TAY : JSR SetSheetLoc_bg

	REP #$31
	LDA $00 : PLX
	LDY #$0040 : JSR Do4BPP_high_16bit

	SEP #$30
	PLB : RTL

warnpc $00DA2C
org $00DA2C
BG_vram_4:
	PHB : PHK : PLB
	LDA $00D8F3, X : STA $08
	LDA $00D8F2, X : TAY

	JSR SetSheetLoc_bg

	REP #$31
	LDA $00 : LDX #$0000
	LDY #$0040 : JSR Do4BPP_direct_16bit
	PHX

	SEP #$30
	LDY $08 : JSR SetSheetLoc_bg

	REP #$31
	LDA $00 : PLX
	LDY #$0040 : JSR  Do4BPP_direct_16bit

	SEP #$30
	PLB : RTL

warnpc $00DA63
;------------------------------------------------------------------------
; NMI_UpdateChr_Spr0/2/3 will do the heavy lifting here
; just tell it where to DMA from
;------------------------------------------------------------------------
org $00DA91
SetUpSprDMA0: ; middle of routine, since subscreen crap decided here
	PHB : PHK : PLB
	LDA $00D8F4, X : TAY
	JSR SetSheetLoc_spr_dma1
	SEP #$30
	PLB : RTL

	.nmi
		REP #$20
		LDA !DMA_ADDR_1 : STA $00
		LDY !DMA_BANK_1 : STY $02
		LDA #$4400 : JSR NMI_DoSprChrDMA
		STZ $0710 : RTS

warnpc $00DABB
org $00DABB
SetUpSprDMA2:
	PHB : PHK : PLB
	LDA $7EC2FC : TAY : JSR SetSheetLoc_spr_dma1
	LDA $7EC2FD : TAY : JSR SetSheetLoc_spr_dma2
	PLB : RTL

	.nmi
		REP #$20
		LDA !DMA_ADDR_1 : STA $00
		LDY !DMA_BANK_1 : STY $02
		LDA #$5000 : JSR NMI_DoSprChrDMA
		REP #$20
		LDA !DMA_ADDR_2 : STA $00
		LDY !DMA_BANK_2 : STY $02
		JSR NMI_DoSprChrDMA_vram_set
		STZ $0710 : RTS

warnpc $00DB1B
org $00DB1B
SetUpSprDMA3:
	PHB : PHK : PLB
	LDA $7E2CFE : TAY : JSR SetSheetLoc_spr_dma1
	LDA $7E2CFF : TAY : JSR SetSheetLoc_spr_dma2
	PLB : RTL

	.nmi
		REP #$20
		LDA !DMA_ADDR_1 : STA $00
		LDY !DMA_BANK_1 : STY $02
		LDA #$5800 : JSR NMI_DoSprChrDMA
		REP #$20
		LDA !DMA_ADDR_2 : STA $00
		LDY !DMA_BANK_2 : STY $02
		JSR NMI_DoSprChrDMA_vram_set
		STZ $0710 : RTS

warnpc $00DB57
;------------------------------------------------------------------------
org $00DF1A
PrepTransAuxGfx:
	LDA #$7E : STA $02
	REP #$31
	LDX #$0000
	LDY #$0040 : LDA #$6000
	JSR Do4BPP_high_16bit

	LDY #$00C0
	LDA $0AA2 : AND #$00FF : CMP #$0020 : BCC .low

.high
	LDY #$0080
	LDA $00
	JSR Do4BPP_high_16bit
	LDY #$0040

.low
	LDA $00
	JSR Do4BPP_direct_16bit
	SEP #$30
	RTL

warnpc $00DF4F
;------------------------------------------------------------------------
org $00DF4F
Do4BPP_high_16bit:
	STY $0C
	STA $00

.nextTile
	LDA $00 : STA $03 ; keep bpp1/2 address
	LDY $02 : STY $05 ; keep bpp1/2 address
	LDY #$0003

.continueWriting
	LDA [$00] : STA $7F0000, X : INC $00 : INC $00 : INX #2 ; store data of bpp1 and bpp2
	LDA [$00] : STA $7F0000, X : INC $00 : INC $00 : INX #2 ; store data of bpp1 and bpp2

	DEY : BPL .continueWriting

	LDY #$0007
.continueWriting2
	LDA [$03] : AND #$00FF : STA $BF

	LDA [$03] : XBA : AND #$00FF : ORA $BF : STA $BF 
	INC $03 : INC $03

	LDA [$00] : ORA $BF : AND #$00FF : XBA : STA $BF

	LDA [$00] : ORA $BF : STA $7F0000, X ; store data of 3bpp and mask 4bpp
	INC $00 : INC $00 : INX #2
	DEY : BPL .continueWriting2
	DEC $0C : BNE .nextTile

	RTS

warnpc $00DFB7
;------------------------------------------------------------------------
org $00DFB8
Do4BPP_direct_16bit:
	STY $0C
	STA $00
.nextTile
	
	LDY #$0003

.writetile
	LDA [$00] : STA $7F0000, X : INC $00 : INC $00 : INX #2
	LDA [$00] : STA $7F0000, X : INC $00 : INC $00 : INX #2

	LDA [$00] : STA $7F0000, X : INC $00 : INC $00 : INX #2
	LDA [$00] : STA $7F0000, X : INC $00 : INC $00 : INX #2

	DEY : BPL .writetile

	DEC $0C : BNE .nextTile
	LDA $00
	RTS

warnpc $00E031
;------------------------------------------------------------------------
; Rewrite to read from correct buffer location
;------------------------------------------------------------------------
org $00E031
	LDA #$7E : STA $02
	REP #$31
	LDX #$0000
	LDA #$8000
	LDY #$00C0
	JSR Do4BPP_direct_16bit

	LDY #$0040
	LDA $00
	JSR Do4BPP_direct_16bit

	SEP #$30
	RTL
warnpc $00E073

;------------------------------------------------------------------------
; InitTilesets uses offsets of $0600, but immediately writes the data
; this may not be necessary, but better safe than sorry
; Vanilla locations high byte local:
; bg : 60, 66, 6C, 72
; spr: 78, 7E, 84, 8A
;
; new: 60, 68, 70, 78
;      80, 88, 90, 98
;
; Other than that, it can probably be left alone?
;------------------------------------------------------------------------
org $00E200 : db #$80 ; sprites done first
org $00E207 : db #$88
org $00E20E : db #$90
org $00E215 : db #$98

org $00E2A2 : db #$60 ; bg tiles, being explicit even this one is unchanged
org $00E2AD : db #$68
org $00E2B8 : db #$70
org $00E2C3 : db #$78

;------------------------------------------------------------------------
; Rewrite to be more direct, no variable buffer crap
;------------------------------------------------------------------------
org $00E284
	LDA #$07
	STA $0F : LDY $0D : JSR LoadBgGfx
	DEC $0F : LDY $0C : JSR LoadBgGfx
	DEC $0F : LDY $0B : JSR LoadBgGfx
	DEC $0F : LDY $0A : JSR LoadBgGfx
	DEC $0F : LDY $09 : JSR LoadBgGfx
	DEC $0F : LDY $08 : JSR LoadBgGfx
	DEC $0F : LDY $07 : JSR LoadBgGfx
	DEC $0F : LDY $06 : JSR LoadBgGfx
	PLB : RTL

warnpc $00E2D0
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00E2D0
	PHB : PHK : PLB
	LDA #$80 : STA $2115

	LDA $CFF3 : STA $02
	LDA $D0D2 : STA $01
	LDA $D1B1 : STA $00

	REP #$20
	LDA #$4000 : STA $2116

	LDY #$3F
	JSR Do4BPPtoVRAM_direct

	REP #$20
	LDA #$7000 : STA $2116
	SEP #$20

	LDY #$6A : JSR $E33B
	LDY #$6B : JSR $E33B
	LDY #$69 : JSR $E33B

	PLB : RTL

warnpc $00E33A
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00E33B
Do4BPPtoVRAM_directcopy:
	JSR SetSheetLoc_spr
	REP #$30
	LDX #$00FF

--	LDA [$00] : STA $2118 : INC $00 : INC $00 
	LDA [$00] : STA $2118 : INC $00 : INC $00 
	LDA [$00] : STA $2118 : INC $00 : INC $00 
	LDA [$00] : STA $2118 : INC $00 : INC $00 
	DEX : BPL --

	SEP #$30
	RTS

warnpc $00E36D
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00E3D1 : -- RTL ; vanilla RTL
org $00E3FA
Graphics_LoadChrHalfSlot:
	LDX $0AAA : BEQ --

	PHB : PHK : PLB
	LDA $E3E5, X : BMI .neg
	STA $0AB1
	CPX #$01 : BNE .not1

	LDA #$0A : STA $0AB1 ; apparently redundant?
	LDA #$02 : STA $0AA9
	JSL $1BED6E
	INC $15
	BRA .loadgfx

.not1
	LDA #$02 : STA $0AA9
	JSL $1BED72
	INC $15

.neg
.loadgfx
	LDX $0AAA
	LDY #$44
	STZ $08 : STZ $09

	INC $0AAA
	LDA $0AAA : LSR : BCC .even

.odd
	STZ $0AAA
	CPX #$12 : BEQ .specific

	LDA #$04 : STA $09
	LDY #$46

	CPX #$02 : BNE .specific
	STZ $0112 ; ???

.even
.specific
	STY $0116
	LDA #$0B : STA $17
	LDY $E3D1, X : CPY #$01 : BNE ++
	LDY $0AA4

++	LDA $CFF3, Y : STA $02
	LDA $D0D2, Y : STA $01
	LDA $D1B1, Y : STA $00

	REP #$31
	LDY #$0020 : STY $0C
	LDX #$0000
	LDA $00 : ADC $08
	STA $00

.nexttile
	LDY #$0007
--	LDA [$00] : STA $7F1000, X : INC $00 : INC $00 : INX : INX
	LDA [$00] : STA $7F1000, X : INC $00 : INC $00 : INX : INX
	DEY : BPL --
	DEC $0C : BNE .nexttile

	SEP #$30
	PLB : RTL

warnpc $00E4E9
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00E4E9
LoadSelectScreenGfx: ; just rerouting decomps to write[$00] should work
org $00E500 : JSR SetSheetLoc
org $00E507 : JSR Do4BPPtoVRAM_direct
org $00E50C : JSR SetSheetLoc
org $00E513 : JSR Do4BPPtoVRAM_direct
org $00E53E : JSR SetSheetLoc

;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00E583
LoadSprGfx:
	LDA $CFF3, Y : STA $02
	LDA $D0D2, Y : STA $01
	LDA $D1B1, Y : STA $00
	REP #$20
	LDY #$3F
	JMP Do4BPPtoVRAM_direct

;------------------------------------------------------------------------
org $00E5AF
Do4BPPtoVRAM_high:
.nextTile
	LDA $00 : STA $76 ; keep bpp1/2 address
	LDX $02 : STX $78 ; keep bpp1/2 address
	LDX #$03

.continueWriting
	LDA [$00] : STA $2118 : INC $00 : INC $00 ; store data of bpp1 and bpp2
	LDA [$00] : STA $2118 : INC $00 : INC $00 ; store data of bpp1 and bpp2

	DEX : BPL .continueWriting

	LDX #$07
.continueWriting2
	LDA [$76] : AND #$00FF : STA $BF

	LDA [$76] : XBA : AND #$00FF : ORA $BF : STA $BF 
	INC $76 : INC $76

	LDA [$00] : ORA $BF : AND #$00FF : XBA : STA $BF

	LDA [$00] : ORA $BF : STA $2118 : INC $00 : INC $00 ; store data of 3bpp and mask 4bpp
	DEX : BPL .continueWriting2
	DEY : BPL .nextTile

	SEP #$20
	RTS

warnpc $00E609
;------------------------------------------------------------------------
; Rewrite to read directly from ROM
;------------------------------------------------------------------------
org $00E609
LoadBgGfx:
	JSR SetSheetLoc_bg
	REP #$20
	LDY #$3F
	LDX $0AA1 : CPX #$20 : BCC ++

	LDX $0F
	CPX #$07 : BEQ Do4BPPtoVRAM_high
	CPX #$02 : BEQ Do4BPPtoVRAM_high
	CPX #$04 : BEQ Do4BPPtoVRAM_high
	CPX #$03 : BNE Do4BPPtoVRAM_direct

--	JMP Do4BPPtoVRAM_high

++	LDX $0F : CPX #$04 : BCS --
	JMP Do4BPPtoVRAM_direct

warnpc $00E63C
;------------------------------------------------------------------------
org $00E63C
Do4BPPtoVRAM_direct:
;	REP #$20
;	TDC
;	TYA : ASL #5 : STA $4305
;	LDA $00 : STA $4302
;	LDX $02 : STX $4304
;	LDA #$1801 : STA $4300
;
;	LDX #$01 : STX $420B
;	SEP #$20
;	RTS
--	LDX.b #$03

.continueWriting
	LDA [$00] : STA $2118 : INC $00 : INC $00 
	LDA [$00] : STA $2118 : INC $00 : INC $00 

	LDA [$00] : STA $2118 : INC $00 : INC $00 
	LDA [$00] : STA $2118 : INC $00 : INC $00 
	DEX : BPL .continueWriting
	DEY : BPL --

	SEP #$20
	RTS

warnpc $00E6B6
;------------------------------------------------------------------------
; another shitty pre coded 3bpp thing
;------------------------------------------------------------------------
org $00E6B7 ; Just rewriting it for the most part
	LDY $0AA4
	LDA $CFF3, Y : STA $02
	LDA $D0D2, Y : STA $01
	LDA $D1B1, Y : STA $00

	REP #$20
	LDY #$3F
	JSR Do4BPPtoVRAM_direct

	LDA $10 : CMP #$01 : BEQ .triforce

	LDY #$06
	LDA $CFF3, Y : STA $02
	LDA $D0D2, Y : STA $01
	LDA $D1B1, Y : STA $00

	REP #$20
	LDY #$7F
	JMP Do4BPPtoVRAM_direct

.triforce
	STZ $0F
	LDY #$5E : STY $06
	LDA #$7F : STA $02
	LDX #$3F

	JSR $E583
	LDY #$5F : STY $06
	LDX #$3F
	JSR $E583
	RTS

warnpc $00E75B
;------------------------------------------------------------------------
org $00E75C
Decomp:
org $00E75C : .spr_high
org $00E766 : .spr_low
org $00E772 : .spr_variable
org $00E783 : .bglow
org $00E78B : .bg_variable_bank
org $00E78F : .bg_variable

org $00E79E
	REP #$30
	LDY #$07FE ; 2kb

--	LDA [$C8], Y : STA [$00], Y
	DEY #2 : BPL --

	SEP #$30
	RTS

; replace jumps to decomp that need to just write where a sheet is
SetSheetLoc:
.spr
	LDA $CFF3, Y : STA $02
	LDA $D0D2, Y : STA $01
	LDA $D1B1, Y : STA $00
	SEP #$30
	RTS

	..dma1
		LDA $CFF3, Y : STA !DMA_BANK_1
		LDA $D0D2, Y : STA !DMA_ADDR_1+1
		LDA $D1B1, Y : STA !DMA_ADDR_1+0
		SEP #$30
		RTS

	..dma2
		LDA $CFF3, Y : STA !DMA_BANK_2
		LDA $D0D2, Y : STA !DMA_ADDR_2+1
		LDA $D1B1, Y : STA !DMA_ADDR_2+0
		SEP #$30
		RTS

.bg
	LDA $CF80, Y : STA $02
	LDA $D05F, Y : STA $01
	LDA $D13E, Y : STA $00
	SEP #$30
	RTS

	..dma1
		LDA $CF80, Y : STA !DMA_BANK_1
		LDA $D05F, Y : STA !DMA_ADDR_1+1
		LDA $D13E, Y : STA !DMA_ADDR_1+0
		SEP #$30
		RTS

	..dma2
		LDA $CF80, Y : STA !DMA_BANK_2
		LDA $D05F, Y : STA !DMA_ADDR_2+1
		LDA $D13E, Y : STA !DMA_ADDR_2+0
		SEP #$30
		RTS

warnpc $00E852
;------------------------------------------------------------------------
; Fix animated buffer updates bank
;------------------------------------------------------------------------
org $00FDC7 : db $7F ; pegs
org $00FDD9 : db $7F ; pegs
org $029782 : db $7F ; star tiles
org $029794 : db $7F ; star tiles

