       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALLBYVALUE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GR.
          03 VA PIC 9(4) OCCURS 2 TIMES.
          03 VB PIC 9(4) .
          03 VC PIC 9(4) .

       PROCEDURE DIVISION.
       MOVE 11112222 TO GR.
       MOVE 5555 TO VB.
       MOVE 0 TO VC.
       CALL "ADD_TWO" USING BY REFERENCE GR.
       DISPLAY "A:"VA(1).
       DISPLAY "A:"VA(2).
       DISPLAY "B:"VB.
       DISPLAY "C:"VC.
       EXIT PROGRAM.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD_TWO.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       LINKAGE SECTION.
       01 GR_SUB.
          03 PARM_A PIC 9(4) OCCURS 2 TIMES.
          03 PARM_B PIC 9(4).
          03 PARM_C PIC 9(4).

       PROCEDURE DIVISION USING BY REFERENCE GR_SUB.
       DISPLAY "A:"PARM_A(1).
       DISPLAY "A:"PARM_A(2).
       DISPLAY "B:"PARM_B.
       DISPLAY "C:"PARM_C.
       ADD PARM_A TO PARM_B GIVING PARM_C.
       DISPLAY "CALLEE END".
       EXIT PROGRAM.
       END PROGRAM ADD_TWO.
