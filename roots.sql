CREATE OR REPLACE PROCEDURE ROOTS(A IN NUMBER,B IN  NUMBER,C IN NUMBER)
AS
D NUMBER(4);
R1 NUMBER(4);
R2 NUMBER(40);
BEGIN
       D := (B*B)-(4*A*C);
       IF D>0 THEN
           R1 := (-B+SQRT(D))/(2*A);
           R2 := (-B-SQRT(D))/(2*A);
           DBMS_OUTPUT.PUT_LINE('ROOTS ARE REAL AND DISTINCT'||R1|| R2 );
       ELSE D=0 THEN
           R1 := (-B)/(2*A);
           R2 := (-B)/(2*A);
           DBMS_OUTPUT.PUT_LINE('ROOTS ARE REAL AND REAL'||R1|| R2 );
       ELSE
           DBMS_OUTPUT.PUT_LINE('ROOTS ARE IMAGINARY');
       END IF;
END ROOTS;
/    