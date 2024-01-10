       .data
N:     .word  34

       .text
       .globl dec2bin
       .include "macros/syscalls.s"

       lw $a0, N
       jal dec2bin
       exit()


dec2bin:              # int dec2bin(int N);

       # a0 : N       # The value of N
       # v0 : 0       # The return value, which is zero

       # t0 : N      
       # t1 : 
       # t2 :
       # t3 :
       # t4 :

       # Demarshall your input arguments
       move $t0, $a0

       # Insert your JAVA TAC code here as a comment.




       # Marshal your output arguements
       move $v0, $t1
       jr $ra

