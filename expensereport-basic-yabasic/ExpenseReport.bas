10 DINNER = 0: BREAKFAST = 1: CARRENTAL = 2
20 DIM TYPE(4): DIM AMOUNT(4)
30 TYPE(0) = DINNER: AMOUNT(0) = 5000
40 TYPE(1) = DINNER: AMOUNT(1) = 5001
50 TYPE(2) = BREAKFAST: AMOUNT(2) = 1000
60 TYPE(3) = BREAKFAST: AMOUNT(3) = 1001
70 TYPE(4) = CARRENTAL: AMOUNT(4) = 4
80 GOSUB 100
90 EXIT
100 REM PRINTREPORT
110 MEALEXPENSES = 0: TOTAL = 0
120 PRINT "Expenses: ", DATE$()
130 FOR I = 0 TO 4
140 IF TYPE(I) = 0 OR TYPE(I) = 1 THEN MEALEXPENSES = MEALEXPENSES + AMOUNT(I): END IF
150 NAME$ = ""
160 IF TYPE(I) = 0 THEN NAME$ = "Dinner": END IF
170 IF TYPE(I) = 1 THEN NAME$ = "Breakfast": END IF
180 IF TYPE(I) = 2 THEN NAME$ = "Car Rental": END IF
190 IF TYPE(I) = 0 AND AMOUNT(I) > 5000 THEN GOTO 230: END IF
200 IF TYPE(I) = 1 AND AMOUNT(I) > 1000 THEN GOTO 230: END IF
210 MARKER$ = " "
220 GOTO 240
230 MARKER$ = "X"
240 PRINT NAME$, "\t", AMOUNT(I), "\t", MARKER$
250 TOTAL = TOTAL + AMOUNT(I)
260 NEXT I
270 PRINT "Meal expenses: ", MEALEXPENSES
280 PRINT "Total expenses: ", TOTAL
290 RETURN