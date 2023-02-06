declare
customer cust%rowtype;
begin
	select * into customer from cust where cust_id = 106;
	dbms_output.put_line('cust_id : '||customer.cust_id);
	dbms_output.put_line('cust_name : '||customer.cust_name);
end;
/