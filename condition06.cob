       ID DIVISION.
       PROGRAM-ID. cond_expr6_comb.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-1 PIC S9(4).
       01 ITEM-2 PIC S9(4).
       01 RES-1 PIC X(3).
       01 RES-2 PIC X(3).
       01 RES-3 PIC X(3).

       PROCEDURE DIVISION.
       BEGIN.

       MOVE 0 TO ITEM-1.
       MOVE 7 TO ITEM-2.
       IF ITEM-1 IS NOT ZERO AND ITEM-2 > 3 THEN
          MOVE "NO1" TO RES-1
       ELSE
          MOVE "OK1" TO RES-1
       END-IF.

       IF ITEM-1 IS NOT NUMERIC OR ITEM-2 > (ITEM-1 + 3) THEN
          MOVE "OK2" TO RES-2
       ELSE
          MOVE "NO2" TO RES-2
       END-IF.

       IF NOT (ITEM-1 IS NOT ZERO AND ITEM-2 > 1 + 1 OR ITEM-2 > 9) THEN
          MOVE "OK3" TO RES-3
       ELSE
          MOVE "NO3" TO RES-3
       END-IF.

       DISPLAY "COND6:" RES-1 RES-2 RES-3.

       GOBACK.

