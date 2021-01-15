#---------------------------------------------------------------------
#  int decode(const char *inp, int inbytes, char *outp, int outbytes)
#---------------------------------------------------------------------
        .globl  decode
decode:
        # TODO
addi sp, sp, -128
beq a1, x0, L1

sw a3, 120(sp)
sw a1, 112(sp)
sw a2, 108(sp)
sw a0, 104(sp)
lw a5, 0(a0)
sll a4, a5,24
srl  a3, a5, 8
sll a3, a3,24
srl a3, a3, 8
add a4, a3, a4
sll a3, a5, 8
srl a3, a3, 24
sll a3, a3, 8
add a4, a3, a4
srl a3, a5, 24
add a5, a3,a4
add a4, x0, x0
sw a5, 0(sp)


Loop:
   add a3, x0,32
   bge a4, a3, outside
     sll  a1, a5, a4

    srli a1, a1, 28
    addi a4, a4, 4

    add a0, x0, x0
    beq a1, a0, XX0
    addi a0, x0, 1
    beq a1, a0, XX1
    addi a0, x0, 2
    beq a1, a0, XX2
    addi a0, x0,3
    beq a1, a0, XX3
    addi a0, x0, 4
    beq a1, a0, XX4
    addi a0, x0, 5
    beq a1, a0, XX5
    addi a0, x0, 6
    beq a1, a0, XX6
    addi a0, x0, 7
    beq a1, a0, XX7
    addi a0, x0, 8
    beq a1, a0, XX8
    addi a0, x0, 9
    beq a1, a0, XX9
    addi a0, x0, 10
    beq a1, a0, XX10
    addi a0, x0, 11
    beq a1, a0, XX11
    addi a0, x0, 12
    beq a1, a0, XX12
    addi a0, x0, 13
    beq a1, a0, XX13
    addi a0, x0, 14
    beq a1, a0, XX14
    addi a0, x0, 15
    beq a1, a0, XX15

XX0:
        lw a1, 72(sp)
        addi a1, a1, 16
        sw a1, 72(sp)
        j Loop
                      
XX1:
       lw a1, 72(sp)
       addi a1, a1, 1
       sw a1, 72(sp)
       j Loop
XX2:
      lw a1, 64(sp)
      addi a1, a1, 16
      sw a1, 64(sp)
       j Loop
XX3:
     lw a1, 64(sp)
     addi a1, a1, 1
     sw a1, 64(sp)
      j Loop
XX4:
     lw a1, 56(sp)
     addi a1, a1, 16
     sw a1, 56(sp)
      j Loop
XX5:
     lw a1, 56(sp)
     addi a1, a1, 1
     sw a1, 56(sp)
      j Loop
XX6:
     lw a1, 48(sp)
     addi a1, a1, 16
     sw a1, 48(sp)
      j Loop
XX7:
     lw a1, 48(sp)
     addi a1, a1, 1
     sw a1, 48(sp)
      j Loop
XX8:
    lw a1, 40(sp)
     addi a1, a1, 16
     sw a1, 40(sp)
     j Loop
XX9:
     lw a1, 40(sp)
     addi a1, a1, 1
     sw a1, 40(sp)
     j Loop
XX10:
     lw a1, 32(sp)
     addi a1, a1, 16
     sw a1, 32(sp)
     j Loop
XX11:
      lw a1, 32(sp)
      addi a1, a1, 1
       sw a1, 32(sp)
       j Loop
XX12:
      lw a1, 24(sp)
      addi a1, a1, 16
      sw a1, 24(sp)
      j Loop
XX13:
      lw a1, 24(sp)
      addi a1, a1,1
      sw a1, 24(sp)
      j Loop
XX14:
      lw a1, 16(sp)
      addi a1, a1, 16
      sw a1, 16(sp)
      j Loop
XX15:
      lw a1, 16(sp)
      addi a1, a1, 1
      sw a1, 16(sp)
      j Loop

outside:

       add a1, x0, x0
       lw a4, 72(sp)


       beq a4, x0, adding1

        add a3, x0, 16
        beq a4, a3, adding1

point1:
        lw a4, 64(sp)

        beq a4, x0, adding2

        add a3, x0, 16
        beq a4, a3, adding3

        add a3, x0, 1
        beq a4, a3, adding4
point2:
        lw a4, 56(sp)
        beq a4, x0, adding5
        add a3, x0,16
        beq a4, a3, adding6
        add a3, x0,1
        beq a4, a3, adding7
point3:
        lw a4, 48(sp)

        beq a4, x0, adding8
        add a3, x0,16
        beq a4, a3, adding9
        add a3, x0, 1
        beq a4, a3, adding10
point4:
       lw a4, 40(sp)

       beq a4, x0, adding11
       add a3, x0,16
       beq a4, a3, adding12
       add a3, x0, 1
       beq a4, a3, adding13
point5:lw a4, 32(sp)

       beq a4, x0, adding14
       add a3, x0, 16
       beq a4, a3, adding15
       add a3, x0, 1
       beq a4, a3, adding16
point6:
       lw a4, 24(sp)

       beq a4, x0, adding17
       add a3, x0,16
       beq a4, a3, adding18
       add a3, x0, 1
       beq a4, a3, adding19
point7:
      lw a4, 16(sp)

       beq a4, x0, adding20
       add a3, x0, 16
       beq a4, a3, adding21
       add a3, x0, 1
       beq a4, a3, adding22
       beq x0,x0, finish

adding1:
      addi a1, x0, 1
      j point1
adding2:
       sll a1, a1,8
       addi a1, a1, 35
       j point2
adding3:
      sll a1, a1,4
      addi a1, a1, 3
      j point2
adding4:
      sll a1, a1, 4
      addi a1, a1, 2
      j point2
adding5:
      sll a1, a1, 8
      addi a1, a1, 69
      j point3
adding6:
       sll a1, a1, 4
       addi a1, a1, 5
       j point3
adding7:
      sll a1, a1, 4
      addi a1, a1, 4
       j point3
adding8:
       sll a1, a1, 8
       addi a1, a1, 103
       j point4
adding9:
       sll a1, a1, 4
       addi a1, a1, 7
      j point4
adding10:
       sll a1, a1, 4
       addi a1, a1, 6
       j point4
adding11:
       sll a1, a1, 8
       addi a1, a1, 137
        j point5
adding12:
       sll a1, a1, 4
       addi a1, a1, 9
       j point5
adding13:
       sll a1, a1, 4
       addi a1, a1, 8
       j point5
adding14:
       sll a1, a1, 8
       addi a1, a1, 171
       j point6
adding15:
        sll a1, a1, 4
        addi a1, a1, 11
       j point6
adding16:
        sll a1, a1, 4
        addi a1, a1, 10
        j point6
adding17:
       sll a1, a1, 8
       addi a1, a1, 205
        j point7
adding18:
       sll a1, a1, 4
       addi a1, a1, 13
       j point7
adding19:
       sll a1, a1, 4
       addi a1, a1, 12
       j point7
adding20:
       sll a1, a1, 8
       addi a1, a1, 239
       j finish
adding21:
       sll a1, a1, 4
       addi a1, a1, 15
       j finish
adding22:
       sll a1, a1, 4
       addi a1, a1, 14
      j finish



finish:

    sw x0, 20(sp)
     sw x0, 24(sp)
     sw a1,4(sp)

     lw a1, 112(sp)
     addi a1, a1, -8

     lw a0, 104(sp)
     lw a4, 4(a0)
     addi a0, a0, 4
     sw a0, 104(sp)


     sw a1, 112(sp)
     bgt a1, x0, keepgoing
     addi a1, a1, 4
     add a1, a1, a1
     add a1, a1, a1
     add a1, a1, a1

     addi a1,a1, -4
     andi a5, a4, 0xf0
     srli a5, a5, 4
     sw a5, 76(sp)

     sub a1, a1,a5
     slli a0, a1,4
     add a1, x0, x0
     j asusual
keepgoing:

     add a1, x0, x0
     addi a0, x0, 448

asusual:
     sll a5, a4, 24
     sll a3, a4,16
     srl a3, a3,24
     sll a3, a3, 16
     add a5, a5, a3
     srl a3, a4, 16
     sll a3, a3,24
     srl a3, a3, 16
     add a5, a3, a5
     srl a3, a4, 24
     add a5, a3, a5
      srli a4, a5, 28
    sw a4, 76(sp)
     slli a5,a5,4


returning:

     srli a4, a5, 31
     beq a4, x0, threebit
     srli a4, a5, 30
     addi a4, a4, -2
     beq a4, x0, fourbit
     addi a4, a4, 2
     addi a4, a4, -3
     beq a4, x0, fivebit
     addi a4, a4, 3


threebit:
       addi a0, a0, -48
       blt a0, x0, something1

threereturn:
       srli a4, a5, 29
       slli a5,a5, 3
       beq a4, x0, first
       add a4, a4, -1
       beq a4, x0, second
       add a4, a4,1
       addi a4, a4, -2
       beq a4, x0, third
       addi a4, a4, 2
       addi a4, a4,-3
       beq a4, x0, fourth
       addi a4,a4,3
       j first
something1:
      addi a0, a0, 48
      lw a3, 112(sp)
      bgt a3, x0, next
    
      j paddingpart
fourbit:
         addi a0, a0, -64

         blt a0, x0, something2

fourreturn:
         srli a4, a5, 28

         slli a5, a5, 4
         addi a4, a4, -8

         beq a4, x0, fifth
         addi a4, a4,-1
         beq a4, x0, sixth
         addi a4, a4, -1
         beq a4, x0, seventh
         addi a4 , a4, -1
         beq a4, x0, eighth
         j first
something2:
        addi a0, a0, 64
        lw a3, 112(sp)
        bgt a3, x0, next
      
        j paddingpart

fivebit:

         addi a0, a0, -80

         blt a0, x0, something3

fivereturn:
         srli a4, a5, 27
         slli a5, a5, 5

         addi a4, a4, -24
         beq a4, x0, ninth
         addi a4, a4, -1
         beq a4, x0, tenth
         addi a4, a4, -1
         beq a4, x0, eleven
         addi a4, a4, -1
         beq a4, x0, twelve
         addi a4, a4, -1
         beq a4, x0, thirteen
          addi a4, a4, -1
         beq a4, x0, fourteen
         addi a4, a4, -1
         beq a4, x0, fifteen
         addi a4, a4, -1
         beq a4, x0, sixteen
         j first
 something3:
          addi a0, a0, 80
          lw a3, 112(sp)
          bgt a3, x0, next
          srli a3, a0, 4
          bgt a3, x0, fivereturn
          j paddingpart




next:
      lw a4, 20(sp)

      beq a4, x0, loadnext

      j nottotal
loadnext:

      lw a3, 104(sp)
      lw a2, 4(a3)

      addi a3, a3, 4
      sw a3, 104(sp)


      sll a4, a2, 24
      sll a3, a2, 16
      srl a3, a3, 24
      sll a3, a3,16
      add a4, a4, a3
      srl a3, a2,16
      sll a3, a3, 24
      srl a3, a3, 16
      add a4, a3, a4
      srl a3, a2,24
      add a2, a3, a4
       sw a2, 28(sp)
       srli a4, a0, 4
      srl a3, a2, a4
      add a5, a5, a3


    lw a3, 112(sp)
    addi a3, a3, -4
    ble a3, x0, paddingbit
     beq a4, x0, wholly
    j here

paddingbit:
      addi a3, a3, 4
      add a3, a3, a3
      add a3, a3, a3
      add a3, a3, a3
      lw a2,76(sp)


     sub a3, a3, a2
    sw a3, 84(sp)
     addi a4, a4, -32

     sub a4, x0, a4
      sw a4, 80(sp)

     bge a4, a3, wholly
     sub a4, a3, a4

     j here

wholly:
     lw a3, 112(sp)
     ble a3, x0, here
     addi a3, a3,- 4
      sw a3, 112(sp)
     add a4, x0, x0

here:
      sw a4, 20(sp)
     lw a2, 28(sp)
      addi a4, a4, -32
      sub a4, x0, a4
      sll a2, a2, a4
      sw a2, 28(sp)



    lw a2, 112(sp)
 andi a0, a0, 0x0f
     addi a0, a0, 512
    ble a2, x0, specialcare
    j returning

specialcare:
    lw a4, 80(sp)
    lw a3, 84(sp)
   sub a4,a4, a3
    slli a4, a4, 4
    sub a0, a0, a4

   j returning



 nottotal:

      srli a3, a0, 4

      addi a3, a3, -32
      sub a3, x0, a3

      lw a4, 20(sp)



      lw a2, 28(sp)



     ble a4, a3, ifcase

      sub  a4 ,a4, a3
      sw a4, 20(sp)
      addi a3, a3, -32
      sub a3, x0, a3

      srl a4, a2, a3
      add a5, a4, a5
      addi a3, a3, -32
      sub a3, x0, a3

      sll a2, a2, a3
      andi a3, a0, 0x0f
      sw a2, 28(sp)
       addi a0, a3, 512


      j returning
ifcase:



      srl a3, a0, 4

      slli a2, a4, 4
      add a0, a0, a2



     lw a2, 28(sp)



      srl a4, a2, a3

      add a5, a5, a4


  lw a2, 112(sp)
  addi a2, a2, -4
  sw a2, 112(sp)


      add a4, x0, x0
     sw x0, 20(sp)
ble a2, x0, returning
      j loadnext






first:

      slli a1, a1, 4
      lw a3, 0(sp)
      srl a3, a3, 28
      add a1, a1, a3
      addi a0, a0, 1
      andi a3, a0, 0x0f
      addi a3, a3, -8
      beq a3, x0, goto
      j returning
second:

      slli a1, a1, 4
      lw a3, 0(sp)
      srl a3, a3, 24
      andi a3, a3, 0x0f
      add a1, a1, a3

      addi a0, a0, 1
      andi a3, a0, 0x0f
      addi a3, a3, -8
      beq a3, x0, goto
      j returning
third:

      slli a1, a1, 4
      lw a3, 0(sp)
      srl a3, a3, 20
      andi a3, a3, 0x0f
      add a1, a1, a3


      addi a0,a0,1
      andi a3, a0, 0x0f
      addi a3, a3, -8
      beq a3, x0, goto
      j returning
fourth:

      slli a1, a1, 4
      lw a3, 0(sp)
      srl a3, a3, 16
      andi a3, a3, 0x0f
     add a1, a1, a3

     addi a0, a0, 1

     andi a3, a0,0x0f

     addi a3, a3, -8

     beq a3, x0, goto
     j returning

fifth:

    slli a1, a1,4
    lw a3, 0(sp)
    srli a3, a3, 12
    andi a3, a3, 0x0f
    add a1, a1, a3

    addi a0, a0, 1
    andi a3, a0, 0x0f

    addi a3, a3, -8
    beq a3, x0, goto
    j returning

sixth:

     slli a1, a1, 4
     lw a3, 0(sp)
     srl a3, a3, 8
     andi a3, a3, 0x0f
     add a1, a1, a3

     addi a0, a0, 1
     andi a3, a0, 0x0f
     addi a3, a3, -8
     beq a3, x0, goto
     j returning
seventh:

     slli a1, a1, 4
      lw a3, 0(sp)
      srl a3, a3, 4
      andi a3, a3, 0x0f
      add a1, a1, a3

     addi a0, a0, 1
     andi a3, a0, 0x0f
     addi a3, a3, -8
     beq a3, x0, goto
     j returning
eighth:

      slli a1, a1, 4
      lw a3, 0(sp)
     andi a3, a3, 0x0f
      add a1, a1, a3

     addi a0, a0, 1
     andi a3, a0, 0x0f
     addi a3, a3, -8
     beq a3, x0, goto
     j returning
ninth:

     slli a1, a1, 4
     lw a3, 4(sp)
     srli a3, a3, 28
     add a1, a1, a3

     addi a0, a0, 1

     andi a3, a0, 0x0f
     addi a3, a3, -8
     beq a3, x0, goto
      j returning
tenth:

     slli a1, a1, 4
     lw a3, 4(sp)
     srli a3, a3, 24
     andi a3, a3, 0x0f
     add a1, a1, a3

     addi a0, a0, 1
     andi a3, a0, 0x0f
     addi a3, a3, -8
     beq a3, x0, goto
     j returning
eleven:
      slli a1, a1, 4
      lw a3, 4(sp)
      srli a3, a3, 20
      andi a3, a3, 0x0f
      add a1, a1, a3

      addi a0, a0, 1
      andi a3, a0, 0x0f
      addi a3, a3, -8
      beq a3, x0, goto
      j returning
twelve:
 slli a1, a1, 4
      lw a3, 4(sp)
      srli a3, a3, 16
      andi a3, a3, 0x0f
      add a1, a1, a3

      addi a0, a0, 1
      andi a3, a0, 0x0f
      addi a3, a3, -8
      beq a3, x0, goto
      j returning
thirteen:

      slli a1, a1, 4
      lw a3, 4(sp)
      srli a3, a3, 12
      andi a3, a3, 0x0f
      add a1, a1, a3

      addi a0, a0, 1
      andi a3, a0, 0x0f
      addi a3, a3, -8
      beq a3, x0, goto
      j returning
fourteen:

       slli a1, a1, 4
       lw a3, 4(sp)
       srli a3, a3, 8
       andi a3, a3, 0x0f
       add a1, a1, a3

       addi a0, a0, 1
       andi a3, a0, 0x0f
       addi a3, a3, -8
       beq a3, x0, goto
       j returning

fifteen:
       slli a1, a1, 4
       lw a3, 4(sp)
       srli a3, a3, 4
       andi a3, a3, 0x0f
       add a1, a1, a3

       addi a0, a0, 1
       andi a3, a0, 0x0f
       addi a3, a3,-8
        beq a3, x0, goto
       j returning
sixteen:

       slli a1, a1, 4
       lw a3, 4(sp)
       andi a3, a3, 0x0f
       add a1, a1, a3

       addi a0, a0, 1
       andi a3, a0, 0x0f
       addi a3, a3, -8
       beq a3, x0, goto
       j returning


goto:


     addi a0, a0, -8

     lw a2, 112(sp)

     ble a2, x0, paddingpart

again:


     andi a3, a1, 0x0ff
     slli a3, a3, 24
     srli a4, a1, 8
     andi a4, a4, 0xff
     slli a4, a4, 16
     add a3, a3, a4
     srli a4, a1,16
     andi a4, a4, 0xff
     slli a4, a4, 8
     add a3, a3, a4
     srli a4, a1, 24
     add a4, a3, a4

      lw a3, 120(sp)
      addi a3, a3, -4
      ble a3, x0, noway
     sw a3, 120(sp)


    lw a2, 108(sp)
     sw a4, 0(a2)

    addi a2, a2, 4
    sw a2, 108(sp)
    add a1, x0,x0
    lw a2, 60(sp)
    addi a2, a2, 4
    sw a2, 60(sp)
    lw a2, 112(sp)



    lw a2, 112(sp)
    ble a2, x0, adj
    j returning


noway:
      addi a0, x0, -1
      j retu
paddingpart:


       andi a3, a0, 0x0f

      beq a3, x0, nopadding


       addi a3, a3, -8
       sub a3, x0, a3
       srli a2, a3, 1
       sw a2, 44(sp)
       add a3, a3, a3
       add a3, a3, a3
       sll a1, a1, a3

       j again

nopadding:
       sw x0, 44(sp)
       j again


L1:
    add a0, x0, x0
    j retu
adj:
      srli a3, a0, 4

      bgt a3, x0, returning
     lw a2, 60(sp)

     lw a3, 44(sp)

     sub a0, a2, a3


retu:
     addi sp, sp, 128
      jalr x0, 0(ra)
                      