       IDENTIFICATION DIVISION.
       PROGRAM-ID. searchall.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GD.
         02 ARRAY_VAL OCCURS 10 TIMES
                    ASCENDING VAL_K
                    INDEXED BY IDX-1.
           03 VAL_K PIC 9(4) USAGE COMP-5.
           03 VAL_D PIC 9(10).
       01 IND-VAR PIC 99 USAGE COMP-5.
       01 VAL_S PIC 9(4).
       PROCEDURE DIVISION.
       MOVE 1 TO VAL_K(1).
       MOVE 2 TO VAL_K(2).
       MOVE 3 TO VAL_K(3).
       MOVE 4 TO VAL_K(4).
       MOVE 5 TO VAL_K(5).
       MOVE 6 TO VAL_K(6).
       MOVE 7 TO VAL_K(7).
       MOVE 8 TO VAL_K(8).
       MOVE 9 TO VAL_K(9).
       MOVE 7 TO VAL_S.


       SEARCH ALL ARRAY_VAL
         AT END DISPLAY "NOT FOUND"
       WHEN VAL_S = VAL_K(IDX-1) 
         DISPLAY "FOUND" VAL_K(IDX-1)
       END-SEARCH.


