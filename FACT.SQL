create or replace procedure fact(n in number) is
i number(4) := 1;
f number(4) := 1;
begin
	for i in 1 .. n
	loop
		f := f*i;
	end loop;
	dbms_output.put_line('Factorial = '||f);
end fact;
/ 