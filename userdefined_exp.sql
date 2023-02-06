create or replace procedure validVoter(age in number) as
invalid_age exception;
begin
	if age< 18 then
		raise invalid_age;
	else
		dbms_output.put_line('Eligible to vote');
	end if;
Exception
when invalid_age then
	raise_application_error(-20019,'Not eligible as Voter');
when others then
	raise_application_error(-20029,'Error');
end validVoter;
/