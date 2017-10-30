       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MOVE010.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 TEXT-TEST-1.
          02 FILLER        PIC X.
          02 TXT-FLD-1     PIC X(5).
          02 TXT-FLD-2     PIC 9(5).
          02 TXT-FLD-4     PIC X(02) VALUE 'OK'.

       PROCEDURE DIVISION.

           MOVE 'KND' TO TXT-FLD-1.                                     SM2014.2
           MOVE 12345 TO TXT-FLD-2.                                     SM2014.2

           DISPLAY 'TEXT-TEST-1=(' TEXT-TEST-1 ')'.

           IF TEXT-TEST-1 IS EQUAL TO ' KND  12345OK'
               DISPLAY 'FAILURE' 
           ELSE
               DISPLAY 'SUCCESS' 
           END-IF.
