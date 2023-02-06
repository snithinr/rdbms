create or replace trigger emp_comm
before insert on emp
for each row
begin 
    if :new.deptno = 20
    then
        :new.comm := :new.sal * 0.20;
    end if;
end;
/