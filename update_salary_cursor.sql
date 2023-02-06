create or replace procedure employee 
as
c_empno emp.empno%type;
c_ename emp.ename%type;
c_sal emp.sal%type;
cursor c_emp is
select empno,ename,sal from emp;
begin
open c_emp;
loop
	fetch c_emp into c_empno,c_ename,c_sal;
exit when c_emp%notfound;
if(c_sal<2000) then
	dbms_output.put_line(c_empno||'-'||c_ename||'-'||(c_sal+1500));
else
	dbms_output.put_line(c_empno||'-'||c_ename||'-'||(c_sal+500));
end if;
end loop;
dbms_output.put_line('No of rows fetched : '||(c_emp%rowcount));
close c_emp;
end;
/