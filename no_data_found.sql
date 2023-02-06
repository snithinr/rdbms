DECLARE
temp varchar(20);
BEGIN
	select cust_id into temp from cust where cust_name = 'Dev';
exception
WHEN no_data_found THEN
	dbms_output.put_line('Error');
	dbms_output.put_line('There is no name as Dev in cust table');
END;
/