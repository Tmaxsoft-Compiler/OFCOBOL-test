       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCEPT03.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ALPNMR PIC X(20).
       01 NUM    usage comp-2.
       PROCEDURE DIVISION.

      ***************************************
      *ACCEPT FROM DAY : 14352.             *
      ***************************************
       ACCEPT ALPNMR FROM DAY .
       DISPLAY 'MSG = ' ALPNMR.

