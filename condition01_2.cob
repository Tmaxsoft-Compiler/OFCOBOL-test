       ID DIVISION.
       PROGRAM-ID. cond_expr2_alphanum.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-1 PIC X(10).
       01 ITEM-2 PIC X(10).
       01 ITEM-3 PIC X(3).
       01 ITEM-4 PIC X(3).
       01 ITEM-5 PIC X(3).
       01 ITEM-6 PIC X(3).

       PROCEDURE DIVISION.
       BEGIN.

       MOVE 12345 TO ITEM-1.
       MOVE "1234A" TO ITEM-2.

       IF ITEM-1 > ZERO THEN 
          MOVE "OK1" TO ITEM-3 
       ELSE
          MOVE "NO1" TO ITEM-3
       END-IF.

       IF ITEM-1 = ITEM-2 THEN 
          MOVE "NO2" TO ITEM-4 
       ELSE
          MOVE "OK2" TO ITEM-4
       END-IF.

      * default collating sequence is EBCDIC (5 > A).
       IF ITEM-1 > ITEM-2 THEN 
          MOVE "OK3" TO ITEM-5 
       ELSE
          MOVE "NO3" TO ITEM-5
       END-IF.

       IF "aBcdE1234$#`" NOT = "aBcdE1234$#`" THEN 
          MOVE "NO4" TO ITEM-6 
       ELSE
          MOVE "OK4" TO ITEM-6
       END-IF.

       DISPLAY "COND2:" ITEM-3 ITEM-4 ITEM-5 ITEM-6.
       GOBACK.

