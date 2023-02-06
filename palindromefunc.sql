create or replace function palindromefunc(n in number,flag out number) return number is
k number(10) := 0;
z number(10) := n;
s number(10) := 0; 
begin
    flag := 0;
    while z != 0
	loop	
		k := mod(z,10);
		z := floor(z/10);
		s := k + 10*s;
	end loop;
	if s = n then
		flag :=1;
	end if;
    return flag;
end palindromefunc;
/

DECLARE
f number;
n number;
begin
    n := &n;
    f := palindromefunc(n,f);
    if f=1 then
        dbms_output.put_line('palindrome');
    else
        dbms_output.put_line('Not palindrome');
end if;
end;
/