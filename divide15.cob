       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVIDE01.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-01 PIC 999V9.
       01 ITEM-02 PIC 999V9.
       PROCEDURE DIVISION.
       MOVE 999.8 TO ITEM-01.
       DIVIDE ITEM-01 BY 9 GIVING ITEM-01 ROUNDED REMAINDER ITEM-02.
       DISPLAY ITEM-01.
       DISPLAY ITEM-02.
