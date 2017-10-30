       IDENTIFICATION DIVISION.
       PROGRAM-ID. move_test.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VAR-1.
           03 A01  PIC 999         VALUE 111.
           03 A02  PIC 999 COMP-3  VALUE 222.
           03 A03  PIC 999 COMP    VALUE 333.
           03 A04          COMP-1  VALUE 444.
           03 A05          COMP-2  VALUE 555.
           03 A06  PIC 999 COMP-5  VALUE 666.
     *
        01 VAR-2 REDEFINES VAR-1.
           03 A01  PIC 999         .
           03 A02  PIC 999 COMP-3  .
           03 A03  PIC 999 COMP    .
           03 A04          COMP-1  .
           03 A05          COMP-2  .
           03 A06  PIC 999 COMP-5  .

        01 VAR-3.
           03 TM01 PIC 999         VALUE 123.
           03 TM02 PIC 999 COMP-3  VALUE 234.
           03 TM03 PIC 999 COMP    VALUE 345.
           03 TM04         COMP-1  VALUE 456.
           03 TM05         COMP-2  VALUE 567.
           03 TM06 PIC 999 COMP-5  VALUE 678.
     *
       PROCEDURE DIVISION.
       MOVE VAR-3 TO VAR-1.
       DISPLAY "[" VAR-2 "]".
       DISPLAY "[" A01 OF VAR-2 "]".
       DISPLAY "[" A02 OF VAR-2 "]".
       DISPLAY "[" A03 OF VAR-2 "]".
       DISPLAY "[" A04 OF VAR-2 "]".
       DISPLAY "[" A05 OF VAR-2 "]".
       DISPLAY "[" A06 OF VAR-2 "]".
