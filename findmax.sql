create or replace procedure findmax(x in number,y in number,z in number) is
k number(2);
begin
	if x>y then 
		if x>z then k:=x;
		else k:=z;
		end if;
	else
		if y>z then k:=y;
		else k:=z;
		end if;
	end if;
	dbms_output.put_line('Max = '||k);
end findmax;
/ 
