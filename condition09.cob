       IDENTIFICATION DIVISION.
       PROGRAM-ID. cond_expr11_condname.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-AGE PIC 9(4).
           88 INFANT VALUE 0.
           88 BABY   VALUE 1, 2.
           88 CHILD  VALUE 3 THRU 12.
           88 TEENAGER VALUE 12 THRU 19.
       01 RES-1 PIC X(3).
       01 RES-2 PIC X(3).
       01 RES-3 PIC X(3).
       01 RES-4 PIC X(3).

       PROCEDURE DIVISION.

       MOVE 0 TO ITEM-AGE.
       IF INFANT THEN 
           MOVE "OK1" TO RES-1
       ELSE
           MOVE "NO1" TO RES-1
       END-IF.

       MOVE 1 TO ITEM-AGE.
       IF BABY THEN 
           MOVE "OK2" TO RES-2
       ELSE
           MOVE "NO2" TO RES-2
       END-IF.

       MOVE 3 TO ITEM-AGE.
       IF CHILD THEN 
           MOVE "OK3" TO RES-3
       ELSE
           MOVE "NO3" TO RES-3
       END-IF.

       MOVE 19 TO ITEM-AGE.
       IF TEENAGER THEN 
           MOVE "OK4" TO RES-4
       ELSE
           MOVE "NO4" TO RES-4
       END-IF.
       
       DISPLAY "COND11:" RES-1 RES-2 RES-3 RES-4.
       GOBACK.
