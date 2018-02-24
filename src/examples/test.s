
; Setup tiles
lda #<tiles
sta $FE00
lda #>tiles
sta $FE01

; Setup sprite
lda #<sprites
sta $FE02
lda #>sprites
sta $FE03

; Setup palette
lda #<palette
sta $FE04
lda #>palette
sta $FE05

; Setup nametable
lda #<nametable
sta $FE06
lda #>nametable
sta $FE07


; start
txa
sta nametable,y
iny
tya
bne done
inx
done:
rts

hello:
	.asciiz "Hello world"

tiles:
	.incbin "hackman_tiles.bin"

sprites:
.repeat 64
	.byte $00, $01, $44, $80
.endrepeat

palette:
 .include "palette.inc"

nametable:
 .byte $31, $50, $51, $52, $53, $54, $55, $56, $00
