; ASSIGNMENT 1
.include "/home/srikala/m328Pdef.inc"

ldi r16,0b00111100  ;output
out DDRD ,r16 ;declaring  pins as output

ldi r17,0b00000001 ; x
ldi r18,0b00000001 ; y
ldi r19,0b00000001 ; z

ldi r20,0b00000001

mov r0,r20
eor r0,r17 ;!x
mov r1,r20
eor r1,r18 ;!y
mov r2,r20
eor r2,r19 ;!z
and r0,r18
or r2,r0
mov r16,r2
lsl r16
lsl r16
out PORTD,r16

start:
rjmp start
