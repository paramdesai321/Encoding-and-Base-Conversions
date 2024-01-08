class whole2bin{
   static MIPS_OS_Interface mips = new MIPS_OS_Interface();

   static void whole2bin(int number) {


 init: ;
   int n  = number;     
      int count = 0;
      int d =3 ; 
      int rem = 0; 


loop1:         for(; number!=0;){


            body:;

               rem = number % 2 ;
               number = number/2; 
               mips.push(rem);
               //mips.print_c(' ');
          next: ;     count++;

           //mips.print_c('\n');
               continue loop1;

 }      

 done1: ;

 loop2: for(;count >0;){


   body2: ; 

         d = mips.pop();
         mips.print_d(d);

         count --;

       //  mips.print_c('\n');
    next: ;     continue loop2 ; 



 }
 done2:;
        

      

   }         



 public static void main(String[] args){
     // This method has been written as a driver to test
     // your strlen.  You do NOT need to modify this method
     // Focus your attention to the `strlen` method.

     int arg_0;

     arg_0  = Integer.parseInt(args[0]);
     whole2bin(arg_0);
     return;
  }
}