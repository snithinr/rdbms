create or replace trigger del_trig
before delete on reservation
for each row
begin
    insert into cancellation values(:old.pnr,:old.name,:old.source,:old.destination);
end;
/