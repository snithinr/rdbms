create or replace function armstrongfunc(n in number,flag out number) return number is
k number(10) := 0;
z number(10) := n;
s number(10) := 0; 
begin
    flag := 0;
    while z != 0
	loop	
		k := mod(z,10);
		z := floor(z/10);
		s := power(k,3) + s;
	end loop;
	if s = n then
		flag :=1;
	end if;
    return flag;
end armstrongfunc;
/

DECLARE
f number;
n number;
begin
    n := &n;
    f := armstrongfunc(n,f);
    if f=1 then
        dbms_output.put_line('Armstrong');
    else
        dbms_output.put_line('Not Armstrong');
end if;
end;
/