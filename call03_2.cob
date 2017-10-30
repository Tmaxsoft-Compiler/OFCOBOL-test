       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALLBYVALUE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VA PIC 9(4) USAGE DISPLAY.
       01 VB PIC 9(4) USAGE DISPLAY.
       01 VC PIC 9(4) USAGE DISPLAY.
       01 FUNC_NAME PIC X(20).

       PROCEDURE DIVISION.
       MOVE 1111 TO VA.
       MOVE 2222 TO VB.
       MOVE 0 TO VC.
       CALL "ADD_TWO" USING BY VALUE VA VB VC.
       DISPLAY "A:"VA.
       DISPLAY "B:"VB.
       DISPLAY "C:"VC.
       EXIT PROGRAM.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD_TWO.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       LINKAGE SECTION.
       01 PARM_A PIC 9(4) USAGE DISPLAY.
       01 PARM_B PIC 9(4) USAGE DISPLAY.
       01 PARM_C PIC 9(4) USAGE DISPLAY.

       PROCEDURE DIVISION USING BY REFERENCE PARM_A PARM_B PARM_C.
      * DISPLAY "A:"PARM_A.
      * DISPLAY "B:"PARM_B.
      * DISPLAY "C:"PARM_C.
      * ADD PARM_A TO PARM_B GIVING PARM_C.
       DISPLAY "CALLEE END".
       EXIT PROGRAM.
       END PROGRAM ADD_TWO.
