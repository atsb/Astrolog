      **********************************************************
      *                                                          
      *  ASTRONOMY LOGGING SOFTWARE
      *
      *  MODULE NAME: ASTROLOG.COB
      *
      *  DESCRIPTIVE
      *         NAME: LOG NAMES, DATES, LOCATIONS OF VIEWING OBJECTS
      *
      *  FUNCTION:
      *  THIS MODULE IS USED FOR COMPILING THE MAIN PROGRAM
      *
      *  LOGIC:
      *     (1) SET-TEXT FOR USER-INPUT
      *     (2) WRITE-TO-FILE USER-INPUT
      *     (3) END-PROGRAM
      *
      *  DATE
      * DD-MMM-YYYY MODIFICATION DESCRIPTION
      * ----------- ------------------------
      * 20-OCT-2020 CREATION OF SOFTWARE
      **********************************************************
      **********************************************************
      * IDENTIFICATION DIVISION
      **********************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.     ASTROLOG20.
       AUTHOR.         ATSB
       DATE-WRITTEN.   20/10/2020.
      **********************************************************
      * ENVIRONMENT DIVISION
      **********************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.    IBM-PC.
       OBJECT-COMPUTER.    IBM-PC.
	   INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ASTROLOGFILE ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.
      **********************************************************
      * DATA DIVISION
      **********************************************************
       DATA DIVISION.
	   FILE SECTION.
       FD ASTROLOGFILE
           LABEL RECORDS ARE STANDARD
           VALUE OF FILE-ID IS "ASTROLOG.LOG".
       01 OUTFILE-RECORD PIC X(80).
       WORKING-STORAGE SECTION.
       01 OBJECTVAL        PIC X(30).
       01 DATETIMEYRVAL    PIC 9(8).
       01 CONSTVAL         PIC X(50).
       01 COMPASSVAL       PIC X(15).
       01 LOCATIONVAL      PIC X(50).
      **********************************************************
      * PROCEDURE DIVISION
      **********************************************************
       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY '-----------------------------------'
           DISPLAY '        ASTRONOMY LOGGING'
           DISPLAY '-----------------------------------'
           DISPLAY 'ENTER AN OBJECT:'
           ACCEPT OBJECTVAL
           DISPLAY 'ENTER THE DATE/TIME/YEAR:'
           ACCEPT DATETIMEYRVAL
           DISPLAY 'ENTER THE CONSTELLATION:'
           ACCEPT CONSTVAL
           DISPLAY 'ENTER THE COMPASS DIRECTION:'
           ACCEPT COMPASSVAL
           DISPLAY 'ENTER THE LOCATION:'
           ACCEPT LOCATIONVAL
			   
           OPEN OUTPUT ASTROLOGFILE.
           WRITE OUTFILE-RECORD FROM OBJECTVAL.
           WRITE OUTFILE-RECORD FROM DATETIMEYRVAL.
           WRITE OUTFILE-RECORD FROM CONSTVAL.
           WRITE OUTFILE-RECORD FROM COMPASSVAL.
           WRITE OUTFILE-RECORD FROM LOCATIONVAL.
           CLOSE ASTROLOGFILE.

       PROGRAM-DONE.
           STOP RUN.
