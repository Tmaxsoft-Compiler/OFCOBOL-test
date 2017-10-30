       IDENTIFICATION DIVISION.
       PROGRAM-ID. inspect1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VAR-2 PIC X(30).
       01 VAR-3 PIC X(10).
       01 DELIMA PIC X.
       01 DELIMB PIC X.
       01 DELIMC PIC X.
       01 COUNTR PIC 9(4) USAGE COMP-5.

       PROCEDURE DIVISION.
       MOVE 'ABCDAACDGBAGJAELCAKJEALKJS' TO VAR-2.
       MOVE 0 TO COUNTR.
       MOVE "0" TO DELIMA.
       MOVE "A" TO DELIMB.
       MOVE "Z" TO DELIMC.

       INSPECT VAR-2
       CONVERTING DELIMB TO DELIMA
       AFTER INITIAL DELIMC.
       DISPLAY 'INSPECT/TALLY:('COUNTR ')'VAR-2.