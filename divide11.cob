       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVIDE01.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-01 PIC 999V9.
       01 ITEM-02 PIC 999V9.
       PROCEDURE DIVISION.
       DIVIDE 5 INTO 555.9 GIVING ITEM-01 REMAINDER ITEM-02
       ON SIZE ERROR DISPLAY "NO:" ITEM-01 "REMAIN" ITEM-02
       NOT ON SIZE ERROR DISPLAY "OK:" ITEM-01 "REMAIN" ITEM-02.

