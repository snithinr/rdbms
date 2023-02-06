create or replace procedure naturel(n in number) as
i number(4) := 1;
begin
	while(i<=n)
	loop
		dbms_output.put_line(i);
		i:=i+1;
	end loop;
end naturel;
/