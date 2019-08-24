org $118000

;===========================================
; Doesn't fit in bank00
;===========================================
AnimatedHigh:
	STY $0E
	STA $00

.nextTile
	LDA $00 : STA $03 ; keep bpp1/2 address
	LDY $02 : STY $05 ; keep bpp1/2 address
	LDY #$0003

.continueWriting
	LDA [$00] : STA $7F9000, X
	INC $00 : INC $00 : INX #2
	LDA [$00] : STA $7F9000, X
	INC $00 : INC $00 : INX #2

	DEY : BPL .continueWriting

	LDY #$0007
.continueWriting2
	LDA [$03] : AND #$00FF : STA $BF

	LDA [$03] : XBA : AND #$00FF : ORA $BF : STA $BF 
	INC $03 : INC $03

	LDA [$00] : ORA $BF : AND #$00FF : XBA : STA $BF

	LDA [$00] : ORA $BF : STA $7F9000, X
	INC $00 : INC $00 : INX #2
	DEY : BPL .continueWriting2

	LDA $00 : BIT #$01FF : BNE ++ ; jump ahead when we hit "line wraps"
	CLC : ADC #$0200 : STA $00
++	DEC $0E : BNE .nextTile

	RTL

; Sort of like the above, except it doesn't bother converting anything
; the direct animated routine will not work here
; as there is a unique source address increase
AnimatedSprite:
	STY $0E
	STA $00

.nextTile
	LDY #$0007

.continueWriting
	LDA [$00] : STA $7F9000, X
	INC $00 : INC $00 : INX #2
	LDA [$00] : STA $7F9000, X
	INC $00 : INC $00 : INX #2

	DEY : BPL .continueWriting

	LDA $00 : BIT #$01FF : BNE ++ ; jump ahead when we hit "line wraps"
	CLC : ADC #$0200 : STA $00
++	DEC $0E : BNE .nextTile

	RTL

;===========================================
; Get item graphics indices
; Now read directly from ROM
; moved here to expand number of available
; graphics for new items
;===========================================
GetItem_offsets:
	; cauldron, 3 bombs, 10 arrows, heart container
	dw $0000, $0040, $0080, $00C0
	; mails, bow, fighter sword, cane
	dw $0100, $0400, $0420, $0440
	; hookshot, rods, hammer, powder
	dw $0460, $0480, $04A0, $04C0
	; flute, glove, book, key
	dw $1440, $0540, $0580, $05C0

	; boomerang, flippers, mirror, bomb
	dw $05E0, $0800, $0840, $0880
	; lamp, cape, compass, pearl
	dw $08C0, $0900, $0940, $0980
	; master+ sword, shovel, ether, bombos
	dw $09C0, $09E0, $0C00, $0C40
	; quake, bottle, mushroom, unused?
	dw $0C80, $0CC0, $0D40, $0000

	; fire shield, map, big key, pendant
	dw $0140, $0D80, $0DC0, $1880
	; rupees, rupees, rupees, net
	dw $1000, $1020, $1040, $1060
	; crystal, tossed bow, silvers, fairy
	dw $10A0, $1120, $10E0, $1160
	; bee, fighter shield, mirror shield, heart piece
	dw $11A0, $11E0, $1480, $1400

	; 10 bombs, small heart, small magic, single arrow
	dw $0500, $14C0, $14E0, $1500
	; 100 rupees, 50 rupees, 300 rupees, 20 rupees
	dw $1520, $1560, $15A0, $1800
	; boots
	dw $1840

pushpc
org $B08000 : incsrc "gfx_sheets.asm"
; Bank $B0 reserved for 4BPP graphics
; Bank $B1 reserved for 4BPP graphics
; Bank $B2 reserved for 4BPP graphics
; Bank $B3 reserved for 4BPP graphics
; Bank $B4 reserved for 4BPP graphics
; Bank $B5 reserved for 4BPP graphics
; Bank $B6 reserved for 4BPP graphics
; Bank $B7 reserved for 4BPP graphics
; Bank $B8 reserved for 4BPP graphics
; Bank $B9 reserved for 4BPP graphics
; Bank $BA reserved for 4BPP graphics
; Bank $BB reserved for 4BPP graphics
; Bank $BC reserved for 4BPP graphics
; Bank $BD reserved for 4BPP graphics
; Bank $BE reserved for 4BPP graphics
; Bank $BF reserved for 4BPP graphics
; Bank $C0 reserved for 4BPP graphics

; rewritten in vanilla banks
incsrc "transfer4bpp.asm"

pullpc
