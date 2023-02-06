create or replace function reverseofnumberFunc(a in number) return number as
k number(10) := 0;
z number(10) := a;
b number(10) :=0;
begin
    while z != 0
	loop	
		k := mod(z,10);
		z := floor(z/10);
		b := k + 10*b;
	end loop;
    return b;
end reverseofnumberFunc;
/

DECLARE
n number;
f number;
begin
	n:=&n;
	f:=reverseofnumberFunc(n);
	dbms_output.put_line('Reverse : '||f);
end;
/