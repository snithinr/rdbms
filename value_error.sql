DECLARE
a number;
b number;
c number;
begin
	b :=&b;
	a := &a;
	if a=0 then
		raise value_error;
	else
		c := b/a;
		dbms_output.put_line('C = '||c);
	end if;
exception
when value_error then
	dbms_output.put_line('Error');
	dbms_output.put_line('number cannot be divided by zero');
end;
/