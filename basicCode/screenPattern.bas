1 LET a=16384 : REM Start of screen RAM
2 POKE a , BIN 10101010 : IF INKEY$ = "" THEN PAUSE 4e4
3 IF INKEY$ = "n" THEN PRINT AT 0 , 0 ; a
4 LET a=a+1 : IF a = 22528 THEN STOP
5 GO TO 2
