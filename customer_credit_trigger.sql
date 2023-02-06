create or replace trigger customer_credit_trigger
before update of credit_limit on cust
declare
    day_of_month number;
begin
    day_of_month := extract(DAY from sysdate);
    if day_of_month > 23 and day_of_month < 31
    then
        raise_application_error(-20100,'Cannot Update Customer Credit from 28th to 31st');
    end if;
end;
/