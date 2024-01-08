       .data
N:     .word  34

       .text
       .globl whole2bin
       .include "macros/syscalls.s"
       .include "macros/stack.s"

       lw $a0, N
       jal whole2bin
       exit()

.macro mod($dst, %src1, %src2)
        div %src1, %src2
        mfhi $dst      
.end_macro
whole2bin:              # int dec2bin(int N);

       # a0 : number       # The value of number
       # v0 : 0       # The return value, which is zero

       # t0 : N      
       # t1 : count
       # t2 : d
       # t3 : n
       # t4 : rem
       # t4 : 2

       # Demarshall your input arguments
       move $t0, $a0

       # Insert your JAVA TAC code here as a comment.
                                                 #
  init:                                          #       init: ;
   li $t1, 0  
   li $t2, 3                                     #   int n  = number;     
   move $t3, $t0                                 #      int count = 0;
   li $t4, 0                                     #      int d =3 ; 
   li $t5, 2                                              #      int rem = 0; 
                                                 #
                                                                                        #
  loop0:                                         #loop0:         for(; number!=0;){
           beq $t3, $zero, pool0                  #
            
            addi $t1, $t1, 1
            mod $t4,$t3,$t5
            #div $t3, $t5
            #mfhi $t4   #high has the modulus(rem)

            div $t3,$t3, $t5
            #mflo $t3   # low has the divide
                                                  #
            push($t4)                             #            body:;
            b loop0                               #
                                                     #               rem = number % 2 ;
 pool0: nop                                                   #               number = number/2; 
                                                      #               mips.push(rem);
 loop1: ble $t1, $zero, enod                                                    #               //mips.print_c(' ');
        pop($t2)                                             #          next: ;     count++;
        print_d($t2)
        subi $t1, $t1, 1                                              #
      b loop1                                               #           //mips.print_c('\n');
                                                     #               continue loop1;
                                                     #
                                                     # }      
 enod:  nop                                                   #
           print_ci('\n')                                          # pool0 ;
                                                     #
                                                     # loop1: for(;count >0;){
                                                     #
                                                     #
                                                     #   body2: ; 
                                                     #
                                                     #         d = mips.pop();
                                                     #         mips.print_d(d);
                                                     #
                                                     #         count --;
                                                     #
                                                     #         mips.print_c('\n');
                                                     #    next: ;     continue loop2 ; 
                                                     #
                                                     #
                                                     #
                                                     # }
                                                     # done1:;
                                                     #        
                                                     #
                                                     #
                                                     #

       # Marshal your output arguements
       move $v0, $t1
       jr $ra

