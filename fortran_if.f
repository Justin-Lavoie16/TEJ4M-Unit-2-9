      PROGRAM ARITHIF
      INTEGER N
      N = -5
      
      IF (N) 10, 20, 30
10    PRINT *, 'Negative'
      GOTO 40
20    PRINT *, 'Zero'
      GOTO 40
30    PRINT *, 'Positive'
40    CONTINUE
      END
