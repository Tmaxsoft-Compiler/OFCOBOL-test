       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBTRACT01.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GR1.
        02 ITEM-01 PIC 9999.
       01 GR2.
        02 ITEM-02 PIC 9999.
       PROCEDURE DIVISION.
       MOVE 1234 TO ITEM-01.
       MOVE 2345 TO ITEM-02.
       SUBTRACT ITEM-01 FROM ITEM-02.
       DISPLAY ITEM-02.