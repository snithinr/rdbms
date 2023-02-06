create or replace function rootsFunc(a in number,b in number,c in number,r2 out number)
return number as
r1 number;
begin
    r1 := ((-b + power((b*b - 4*a*c),0.5))/(2*a));
    r2 := ((-b - power((b*b - 4*a*c),0.5))/(2*a));
    return r1;
end rootsFunc;
/

DECLARE
a,b,c,r1,r2 number;
begin
    a := &a;
    b := &b;
    c := &c;
    r1 := rootsFunc(a,b,c,r2);
    dbms_output.put_line('root1 = '||r1);
    dbms_output.put_line('root2 = '||r2);
end;
/