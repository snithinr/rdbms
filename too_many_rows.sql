DECLARE
temp varchar(20);
BEGIN
	select cust_id into temp from cust;
exception
WHEN too_many_rows THEN
	dbms_output.put_line('Error');
	dbms_output.put_line('Too many rows Selected at Once');
END;
/