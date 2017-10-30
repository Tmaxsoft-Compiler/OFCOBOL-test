       IDENTIFICATION DIVISION.
       PROGRAM-ID. set3.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-AGE PIC 9(4).
           88 INFANT VALUE 0.
           88 BABY   VALUE 1, 2.
       01 RES-1 PIC X(3).

       PROCEDURE DIVISION.

       SET INFANT TO TRUE.
       IF INFANT THEN
           MOVE "OK1" TO RES-1
       ELSE
           MOVE "NO1" TO RES-1
       END-IF.

       DISPLAY "SET3:"RES-1.
