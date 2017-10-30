       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST_SAMPLE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  7-DIMENSION-TBL.  
        02  GRP-7-1-ENTRY             OCCURS 18 INDEXED BY IX-1. 
         03  ENTRY-7-1               PIC X(2).             
       77  L1-HOLD                     PIC XX.             
       77  N1                           PIC 99.           
       PROCEDURE DIVISION.

       MOVE    ALL "ABCDEFGHIJKLMNOPQRSTUVWXYZ" TO 7-DIMENSION-TBL. 
       MOVE   "UV" TO L1-HOLD.                                      
       SET     IX-1 TO 1. 
       MOVE    1 TO N1 
       SEARCH  GRP-7-1-ENTRY VARYING N1                         
       AT END  DISPLAY "NOT FOUND SEARCH6"                  
       WHEN    ENTRY-7-1 (N1) =  L1-HOLD                   
       DISPLAY "OK SEARCH6".                            

