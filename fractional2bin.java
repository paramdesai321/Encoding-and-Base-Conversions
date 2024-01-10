
     class fractional2bin {
       static MIPS_OS_Interface mips = new MIPS_OS_Interface();
     
       static void fractional2bin(int fractional, 
                                  int precision, 
                                  int max_size) {

        int max ; 
        int n = fractional;
        int count=0; 


       max = (int) Math.pow(10,precision);            // max = Math.pow(10, );
        //  n = 23;               // the fractional
  bb:       for( ; count < max_size;  ) {
             n = n * 2;
             if (n == 0) break;
             if ( n >= max ) {
  cons: ;         
                 mips.print_di(1);
                 n = n - max; 
  alt: ;     } else {
                 mips.print_di(0);
             }

  fi: ;         count = count + 1;
             continue bb; 
          }
        se: ; 
        return ;

       }
     
       public static void main(String[] args){
         final int mantissa_size = 23;  
         // This is the number of bits in a binary32 mantissa
      
        int  arg_0 = Integer.parseInt(args[0]);
       char  arg_1 = args[1].charAt(0);
       int  arg_2 = Integer.parseInt(args[2]);
       int  precision = args[2].length();
      
         //dec2bin(arg_0);
        // mips.print_c(arg_1);
         fractional2bin(arg_2, precision, mantissa_size);
         mips.print_c('\n');
         return;
       } 
     }