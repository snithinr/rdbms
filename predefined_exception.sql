declare
temp varchar(20);
begin
select cust_id into  temp from cust;	
select cust_id into temp from cust where cust_name = 'vishal';
exception
when too_many_rows then
	dbms_output.put_line('Error');
	dbms_output.put_line('too many rows selected at once');
when no_data_found then
	dbms_output.put_line('Error');
	dbms_output.put_line('there is no name as Vishal ');
when value_error then
	dbms_output.put_line('Error');
	dbms_output.put_line('value error');
end;
/