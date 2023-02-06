create or replace procedure fibonnaci(n in number) is
i number(4) := 0;
a number(4) := 0;
b number(4) := 1; 
begin
	dbms_output.put_line(' '||a);
	dbms_output.put_line(' '||b);
	for i in 0 .. (n-3)
	loop
		dbms_output.put_line(' '||(a+b));
		b := a+b;
		a := b-a;
	end loop;
end fibonnaci; 
/