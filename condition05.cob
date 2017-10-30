       IDENTIFICATION DIVISION.
       PROGRAM-ID. cond_expr12_switch.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES. 
       UPSI-1 IS U1 ON STATUS IS SWITCH-ON OFF STATUS IS SWITCH-OFF.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 RES-1 PIC X(3).
       01 RES-2 PIC X(3).

       PROCEDURE DIVISION.

       IF SWITCH-ON THEN 
           MOVE "NO1" TO RES-1
       ELSE
           MOVE "OK1" TO RES-1
       END-IF.

       IF SWITCH-OFF THEN 
           MOVE "OK2" TO RES-2
       ELSE
           MOVE "NO2" TO RES-2
       END-IF.
       
       DISPLAY "COND12:" RES-1 RES-2.
       GOBACK.
