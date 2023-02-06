create or replace function sumFunc(a in number,b in number,c out number)
return number as
begin
    c := a+b;
    return c;
end sumFunc;
/
DECLARE
a number;
b number;
s number;
begin
    a := &a;
    b := &b;
    s := sumFunc(a,b,s);
    dbms_output.put_line('Sum = '||s);
end;
/