declare
c_id cust.cust_id%type;
c_name cust.cust_name%type;
cursor c_customer is
select cust_id,cust_name from cust;
begin
	open c_customer;
	loop
		fetch c_customer into c_id,c_name;
		dbms_output.put_line(c_id||' '||c_name);
	exit when c_customer%notfound;
end loop;
close c_customer;
end;
/