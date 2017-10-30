       ID DIVISION.
       PROGRAM-ID. cond_expr4_class.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               CLASS TEST-MYCLASS 'C' THRU 'K'
               CLASS TEST-MYCLASS2 'c' THRU 'k' 'x' THRU 'z'.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-1 PIC 9(10)V9(5).
       01 ITEM-2 USAGE COMP-2.
       01 ITEM-3 PIC A(10).
       01 ITEM-4 PIC G(10) USAGE DISPLAY-1.
       01 ITEM-5 PIC X(6).

       01 RES-1 PIC X(3).
       01 RES-2 PIC X(3).
       01 RES-3 PIC X(3).
       01 RES-4 PIC X(3).
       01 RES-5 PIC X(3).
       01 RES-6 PIC X(3).
       01 RES-7 PIC X(3).
       01 RES-8 PIC X(3).

       PROCEDURE DIVISION.
       BEGIN.

       MOVE 99.99 TO ITEM-1.
       IF ITEM-1 IS NUMERIC THEN 
          MOVE "OK1" TO RES-1
       ELSE
          MOVE "NO1" TO RES-1
       END-IF.

       MOVE 99 TO ITEM-2.
       IF ITEM-2 IS NUMERIC THEN 
          MOVE "OK2" TO RES-2
       ELSE
          MOVE "NO2" TO RES-2
       END-IF.

       MOVE "ABcDEFG" TO ITEM-3.
       IF ITEM-3 IS ALPHABETIC THEN 
          MOVE "OK3" TO RES-3
       ELSE
          MOVE "NO3" TO RES-3
       END-IF.

       MOVE "ABCDEFG" TO ITEM-3.
       IF ITEM-3 IS ALPHABETIC-UPPER THEN 
          MOVE "OK4" TO RES-4
       ELSE
          MOVE "NO4" TO RES-4
       END-IF.

       MOVE "defgh" TO ITEM-3.
       IF ITEM-3 IS NOT ALPHABETIC-LOWER THEN 
          MOVE "NO5" TO RES-5
       ELSE
          MOVE "OK5" TO RES-5
       END-IF.

      * MOVE G"한글" TO ITEM-4.
      * IF ITEM-4 IS DBCS THEN 
          MOVE "OK6" TO RES-6.
      * ELSE
      *   MOVE "NO6" TO RES-6
      * END-IF.

       MOVE "CDEFGK" TO ITEM-5.
       IF ITEM-5 IS TEST-MYCLASS THEN 
          MOVE "OK7" TO RES-7
       ELSE
          MOVE "NO7" TO RES-7
       END-IF.

       MOVE "cdefgy" TO ITEM-5.
       IF ITEM-5 IS NOT TEST-MYCLASS2 THEN 
          MOVE "NO8" TO RES-8
       ELSE
          MOVE "OK8" TO RES-8
       END-IF.

       DISPLAY "COND2:" RES-1 RES-2 RES-3 RES-4 RES-5 RES-6 RES-7 RES-8.
       GOBACK.

