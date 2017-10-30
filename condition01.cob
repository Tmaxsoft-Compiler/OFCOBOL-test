       ID DIVISION.
       PROGRAM-ID. cond_expr.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-1 PIC 9(1) USAGE COMP-5.
       01 ITEM-2 PIC 9(1) USAGE COMP-5.
       01 ITEM-3 PIC 9(9).
       01 ITEM-4 PIC 9(3).
       01 ITEM-5 USAGE COMP-1.
       01 ITEM-6 USAGE COMP-2.
       01 RES-1 PIC X(3).
       01 RES-2 PIC X(3).
       01 RES-3 PIC X(3).
       01 RES-4 PIC X(3).

       PROCEDURE DIVISION.
       BEGIN.


       MOVE 2 TO ITEM-1.
       MOVE 3 TO ITEM-2.
       IF  ITEM-1 < ZERO THEN 
          MOVE "NO1" TO RES-1
       ELSE
          MOVE "OK1" TO RES-1
       END-IF.

       MOVE 99 TO ITEM-3.
       MOVE 999 TO ITEM-4.
       IF  ITEM-3 > ITEM-4 THEN 
          MOVE "NO2" TO RES-2
       ELSE
          MOVE "OK2" TO RES-2
       END-IF.

       MOVE 99.9 TO ITEM-5.
       MOVE 111.11 TO ITEM-6.
       IF  ITEM-5 > ITEM-6 THEN 
          MOVE "NO3" TO RES-3
       ELSE
          MOVE "OK3" TO RES-3
       END-IF.

       MOVE 99.9 TO ITEM-5.
       MOVE 111.11 TO ITEM-6.
       IF  NOT ITEM-5 > ITEM-6 THEN 
          MOVE "OK4" TO RES-4
       ELSE
          MOVE "NO4" TO RES-4
       END-IF.

       DISPLAY "COND1:" RES-1 RES-2 RES-3 RES-4.
       GOBACK.
