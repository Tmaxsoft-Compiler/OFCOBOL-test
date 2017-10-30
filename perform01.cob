       ID DIVISION.
       PROGRAM-ID. perform1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COND_VAR2 PIC 9(1) USAGE COMP-5.

       PROCEDURE DIVISION.
       BEGIN.

       MOVE 1 TO COND_VAR2.
       PERFORM Mysection1 THRU Mysection3.
       Mysection1.
       MOVE 2 TO COND_VAR2.
       Mysection2.
       MOVE 4 TO COND_VAR2.
       Mysection3.
       MOVE 6 TO COND_VAR2.
       Mysection4.
        MOVE 8 TO COND_VAR2.
       DISPLAY "PERFORM01 : "COND_VAR2.
       GOBACK.

