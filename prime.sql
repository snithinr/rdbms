create or replace procedure prime(n in number) is
i number(4);
j number(4):=0;
begin
	for i in 2..(n-1)
	loop
		if mod(n,i) = 0 then
			j:=j+1;
		end if;
		
	end loop;
	if j>0 then
		dbms_output.put_line('Not a Prime Number');
	else
		dbms_output.put_line('Prime Number');
	end if;
end prime;
/