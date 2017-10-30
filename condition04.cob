       ID DIVISION.
       PROGRAM-ID. condition04.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-1 PIC S9(4).
       01 ITEM-2 PIC 9(4).
       01 ITEM-3 USAGE COMP-1.
       01 RES-1 PIC X(3).
       01 RES-2 PIC X(3).
       01 RES-3 PIC X(3).
       01 RES-4 PIC X(3).
       01 RES-5 PIC X(3).

       PROCEDURE DIVISION.
       BEGIN.

       MOVE 0 TO ITEM-1.
       IF ITEM-1 IS NOT ZERO THEN 
          MOVE "NO1" TO RES-1
       ELSE
          MOVE "OK1" TO RES-1
       END-IF.

       MOVE 777 TO ITEM-1.
       IF ITEM-1 IS NOT POSITIVE THEN 
          MOVE "NO2" TO RES-2
       ELSE
          MOVE "OK2" TO RES-2
       END-IF.

       MOVE -777 TO ITEM-1.
       IF ITEM-1 IS NOT NEGATIVE THEN 
          MOVE "NO3" TO RES-3
       ELSE
          MOVE "OK3" TO RES-3
       END-IF.

       MOVE 777 TO ITEM-2.
       IF ITEM-2 IS NOT POSITIVE THEN 
          MOVE "NO4" TO RES-4
       ELSE
          MOVE "OK4" TO RES-4
       END-IF.

       MOVE 0.0 TO ITEM-3.
       IF ITEM-3 IS NOT ZERO THEN 
          MOVE "NO5" TO RES-5
       ELSE
          MOVE "OK5" TO RES-5
       END-IF.

       DISPLAY "CONDITION04:" RES-1 RES-2 RES-3 RES-4 RES-5.

       GOBACK.

