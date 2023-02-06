create or replace procedure grade(marks in number) is
grade varchar(2);
begin
	if (marks>90) then 
		grade := 'S';
	else if (marks>80) then 
		grade := 'A+';
	else if marks>70 then 
		grade := 'A';
	else if marks>60 then 
		grade := 'B+';
	else if marks>50 then 
		grade := 'B';
	else if marks>40 then 
		grade := 'C';
	else if marks<=40 then 
		grade := 'F';
	else 
		grade := 'Ab';
	end if;
	end if;
	end if;
	end if;
	end if;
	end if;
	end if;
	dbms_output.put_line('grade = '||grade);
end grade;
/
	