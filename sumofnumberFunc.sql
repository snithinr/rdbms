create or replace function sumofnumberFunc(n in number)
return number as
begin
	return (n*(n+1)/2);
end sumofnumberFunc;
/
declare
n number;
s number;
begin
	n := &n;
	s := sumofnumberFunc(n);
	dbms_output.put_line('Sum : '||s);
end;
/