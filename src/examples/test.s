
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


sta $00
ldx #00
again:
lda hello,x
beq done
inx
jmp again
done:
lda #48
ror
sta someplace
rts


hello:
	.asciiz "Hello world"

tiles:
.repeat 896
	.incbin "sprite.bin"
.endrepeat

sprites:
.repeat 64
	.byte $00, $01, $44, $80
.endrepeat

someplace:
	.byte $00
