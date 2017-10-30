       IDENTIFICATION DIVISION.
       PROGRAM-ID. rede-test.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 VAR-1.
           03 A01  PIC 999         VALUE 111.
           03 A02  PIC 999 COMP-3  VALUE 222.
           03 A03  PIC 999 COMP    VALUE 333.
           03 A04          COMP-1  VALUE 444.
           03 A05          COMP-2  VALUE 555.
           03 A06  PIC 999 COMP-5  VALUE 666.
        01 VAR-2 REDEFINES VAR-1.
           03 A01  PIC 999         .
           03 A02  PIC 999 COMP-3  .
           03 A03  PIC 999 COMP    .
           03 A04          COMP-1  .
           03 A05          COMP-2  .
           03 A06  PIC 999 COMP-5  .

       PROCEDURE DIVISION.
       DISPLAY "[" VAR-1 "]".
       DISPLAY "[" VAR-2 "]".
       DISPLAY "[" A01 OF VAR-2 "]".
       DISPLAY "[" A02 OF VAR-2 "]".
       DISPLAY "[" A03 OF VAR-2 "]".   
       DISPLAY "[" A04 OF VAR-2 "]".
       DISPLAY "[" A05 OF VAR-2 "]".
       DISPLAY "[" A06 OF VAR-2 "]".
