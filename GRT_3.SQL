CREATE OR REPLACE PROCEDURE GRT_3(A IN NUMBER,B IN NUMBER,C IN NUMBER)AS
BEGIN
       IF A>B THEN
          IF A>C THEN
               DBMS_OUTPUT.PUT_LINE(A|| 'IS GREATER');
          ELSE
               DBMS_OUTPUT.PUT_LINE(C|| 'IS GREATER');
          END IF;
       ELSE
          IF B>C THEN
               DBMS_OUTPUT.PUT_LINE(B|| 'IS GREATER');
          ELSE
               DBMS_OUTPUT.PUT_LINE(C|| 'IS GREATER');
          END IF;
       END IF;
END GRT_3;
/