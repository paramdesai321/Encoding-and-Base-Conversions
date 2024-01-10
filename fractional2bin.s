       .data
N:     .word  34

       .text
       .globl fractional2bin
       .include "macros/syscalls.s"
       .include "macros/stack.s"

       li $a0, 23
       li $a1,2
       li $a2,23
       jal fractional2bin
       exit()

.macro pow(%result,%base,%exp)
	li %result, 1
    loop: beq %exp, $zero, done
            mul %result, %result, %base
            subi %exp, %exp, 1
        b loop
    done: nop

.end_macro



fractional2bin:              

  			   #static void fractional2bin(int fractional, 
       		   #                          int precision, 
      		               #

                                 # int max_size) {

       # a0 : fractional      # The value of N
       # a1 : precision
       # a2 : max_size
       # v0 : 0 # return value 

       # t0 : fractional
       # t1 : precision
       # t2 : max_size
       # t3 : max
       # t4 : n
       # t5 : count
       # t6 : 2
       # t7 : 10


       # t0 : N      
       # t1 : 
       # t2 :
       # t3 :
       # t4 :

       # Demarshall your input arguments
       move $t0, $a0
       move $t1, $a1
       move $t2, $a2
       li $t7,10
       # Insert your JAVA TAC code here as a comment.


       li $t3,0
	   move $t4, $t0
	    li $t5, 0  	        # 	     int max =0 ; 
							#        int n = fractional;
							#        int count=0; 
		pow($t3,$t7,$t1)		#
							#
	   						#         max = (int) Math.pow(10,precision);            // max = Math.pow(10, );
	bb:	bge	$t5,$t2,se		#        //  n = 23;               // the fractional
							#  bb:    for( ; count < max_size;  ) {
		sll $t4,$t4,1  		#          n = n * 2;
		beq	$t4,$zero,se	#          if (n == 0) break;
		blt $t4,$t3,alt
							#          if ( n >= max ) {
	cons:nop				#  cons: ;         
		print_ci('1')		#           mips.print_di(1);
		sub	$t4,$t4,$t3		#              n = n - max; 
		b fi				#  alt: ;     } else {
							#                 mips.print_di(0);
	alt:nop					#             }
		print_ci('0')		#
		b fi				#  fi: ;         count = count + 1;
	fi: nop					#             continue bb; 
		addi $t5,$t5,1		#          }
		b bb				#        se: ; 
	se:	nop		 			#        return ;
							#
							#       }
				#

       # Marshal your output arguements
       li $v0, 0
       jr $ra

