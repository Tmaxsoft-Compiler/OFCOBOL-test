       IDENTIFICATION DIVISION.
       PROGRAM-ID. move_test.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VAR-1.
           03 A01  PIC 999         VALUE 111.
           03 A02  PIC 999         VALUE 222.
           03 A03  PIC 999         VALUE 333.
           03 A04          COMP-1  VALUE 444.
           03 A05          COMP-2  VALUE 555.
           03 A06  PIC 999 COMP-5  VALUE 666.
              66 RE01 RENAMES A01 THRU A03.


       PROCEDURE DIVISION.
       MOVE 987654321 TO RE01. 
      *MOVE TEMP01 TO A02.
      *MOVE TEMP02 TO A03.

       DISPLAY "[" VAR-1 "]".
       DISPLAY "[" A01 "]".
       DISPLAY "[" A02 "]".
       DISPLAY "[" A03 "]".
       DISPLAY "[" A04 "]".
       DISPLAY "[" A05 "]".
       DISPLAY "[" A06 "]".
