       IDENTIFICATION DIVISION.
       PROGRAM-ID. p_test.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 binary1 pic ppp999 USAGE COMP.
       01 pack1 pic PPP999 USAGE PACKED-DECIMAL.
       01 disdis pic PPP999.

       01 binary2 pic 999PPP USAGE COMP.
       01 pack2 pic 999PPP USAGE PACKED-DECIMAL.
       01 disdis2 pic 999PPP.

       01 pack3 pic 9999999PPPPP USAGE COMP-3.

       01 binary3 pic PPPPP9999999 USAGE COMP-4.
       01 pack4 pic 9999999999PPPPP USAGE PACKED-DECIMAL.
       01 pack5 pic PPPPP9999999999 USAGE PACKED-DECIMAL.
       
       01 binary4 pic 99PP USAGE BINARY.
       01 comp501 pic 99PP USAGE COMP-5.
       01 binary5 pic 99PP USAGE COMP-4.
       01 binary6 pic PP99 USAGE COMP.
       01 binary7 pic 99V99 USAGE COMP.
       01 disdis11 pic 99V99.
       01 disdis12 pic 9999.

       01 binary8 pic S99V99 USAGE BINARY.
       01 comp502 pic S99V99 USAGE COMP-5.
       01 binary9 pic S99V99 USAGE COMP-4.
       01 binary0 pic S99V99 USAGE COMP.

       PROCEDURE DIVISION.       
       move 1234 to binary7.
       display "binary 99v99 " binary7.
       move 1234 to binary4.           
       move 1234 to comp501.        
       move 1234 to binary5.        
       move 0.1234 to binary6.
       display "binary 99pp " binary4.
       display "length of binary 99pp "length of binary4.
       display "comp5 99pp " comp501.
       display "binary 99pp " binary5.
       display "binary pp99 " binary6.
      


       move +12.34 to binary8.
       display "binary S99v99 " binary8.
       move +12.34 to comp502.
       display "comp5 S99v99 " comp502.
       move +12.34 to binary9.
       display "binary S99V99 " binary9.
       move +12.34 to binary0.
       display "binary S99V99 " binary0.
      
       move 0.34567890123 to binary1.
       display "binary1 ppp999 " binary1.
       display "binary ppp999 length " length of binary1.
      
       move 0.345678 to pack1.
       display "pack ppp999 " pack1.
       display "length of pack ppp999 " length of pack1.
      
       move 0.345678 to disdis.
       display "display ppp999 " disdis.
       display "length of display ppp999 " length of disdis.
      
       move 123456 to binary2.
       display "binary 999ppp " binary2.
       display "length of binary 999ppp " length of binary2.
       move 123456 to pack2.
       display "pack 999ppp " pack2.
       display "length of packed 999ppp " length of pack2.
      
       move 123456 to disdis2.
       display "display 999ppp " disdis2.
       display "length of display 999ppp " length of disdis2.
      
       display "----".
       move 0.123456 to binary3.
       display "binary ppppp9999999 " binary3.
       display "length of packed 9999999ppppp " length of pack3.
       display "length of binary ppppp9999999 " length of binary3.
       display "length of packed 9999999999ppppp " length of pack4.
       display "length of packed ppppp9999999999 " length of pack5.

       exit program.

