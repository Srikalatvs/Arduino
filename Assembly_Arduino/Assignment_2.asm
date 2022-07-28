; ASSIGNMENT 2
.include "/home/srikala/m328Pdef.inc"

ldi r16,0b00111100  ;output
out DDRD ,r16 ;declaring  pins as output

ldi r17,0b00000000 ; w
ldi r18,0b00000000 ; x
ldi r19,0b00000001 ; y
ldi r20,0b00000001 ; z

ldi r21,0b00000001 

mov r0,r21
eor r0,r17 ; !w
mov r1,r21
eor r1,r18 ; !x
mov r2,r21
eor r2,r19 ; !y
mov r3,r21
eor r3,r20 ; !z

or r2,r3
or r1,r20
or r0,r18
or r0,r3
and r2,r1
and r2,r0

mov r16,r2
lsl r16
lsl r16
out PORTD,r16

start:
rjmp start




