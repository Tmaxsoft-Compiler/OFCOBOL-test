       IDENTIFICATION DIVISION.
       PROGRAM-ID. string2.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SUBSTR1 PIC X(10).
       01 SUBSTR2 PIC X(10).
       01 SUBSTR3 PIC X(10).
       01 CONCAT  PIC X(18).
       01 DELIM   PIC X(1).
       01 POS     PIC 9(3).

       PROCEDURE DIVISION.
       MOVE "abcde*ghij" TO SUBSTR1.
       MOVE "abcde*ghij" TO SUBSTR2.
       MOVE "xxxxx*xxxx" TO SUBSTR3.
       MOVE "*" TO DELIM.
       MOVE 4 TO POS.
       STRING
         SUBSTR1 SUBSTR2 DELIMITED BY "*"
         INTO CONCAT WITH POINTER POS.
       DISPLAY "STRING :"CONCAT" POS :" POS.
