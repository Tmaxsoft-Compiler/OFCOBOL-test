       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARITH07.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM1 PIC 9 USAGE COMP-5.
       PROCEDURE DIVISION.
       MOVE 653 TO ITEM1.
       DISPLAY ITEM1.
       COMPUTE ITEM1 = 1.000 * 65532.000 * 1.
       DISPLAY ITEM1.
