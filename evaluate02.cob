       IDENTIFICATION DIVISION.
       PROGRAM-ID. eval5.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COND_VAR PIC 9(2) USAGE COMP-5.
       01 RESULT_VAR PIC 9(1) USAGE COMP-5.

       PROCEDURE DIVISION.
       BEGIN.

       MOVE 10 TO COND_VAR.
    
       EVALUATE  TRUE 
       WHEN COND_VAR > 10  MOVE 1 TO RESULT_VAR
       WHEN COND_VAR < 10  MOVE 2 TO RESULT_VAR
       WHEN COND_VAR = 10  MOVE 3 TO RESULT_VAR
       END-EVALUATE.
       
       DISPLAY "EVAL5:" RESULT_VAR.

       GOBACK.

