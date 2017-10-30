       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE44.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GR1.
         02 AA PIC XXXX VALUE "abcd".
       01 GR2.
         02 BB PIC 9999 VALUE 1234.
       01 GR3.
         02 CC PIC 9999 VALUE 1234.

       PROCEDURE DIVISION.
      * group to elem
        MOVE GR1 TO BB.
        DISPLAY GR2.
       
      * elem to group
        MOVE CC TO GR1.
        DISPLAY GR1.

      * gourp to gorup
        MOVE GR2 TO GR3.
        DISPLAY GR3.
