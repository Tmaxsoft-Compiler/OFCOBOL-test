       IDENTIFICATION DIVISION.
       PROGRAM-ID. eval.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COND_VAR PIC 9(1).
       01 RESULT_VAR PIC 9(1).

       PROCEDURE DIVISION.
       BEGIN.
       MOVE 3 TO COND_VAR.
    
       EVALUATE COND_VAR 
       WHEN 1 
          DISPLAY "EVAL10 : NO"
       WHEN 2 
       WHEN 3 
          DISPLAY "EVAL10 : OK"
       WHEN 4 
          DISPLAY "EVAL10 : NO"
       WHEN OTHER 
          DISPLAY "EVAL10 : NO"
       END-EVALUATE.
       

