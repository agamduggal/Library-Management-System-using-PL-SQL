DECLARE
id borrows.i_id%type;
nam member.name%type;
CURSOR c2 is select borrows.i_id, member.name from borrows join 
member on borrows.m_id=member.m_id;
BEGIN
DBMS_output.put_line('ID:'||' Name');
DBMS_output.put_line('----------');
open c2;
loop
fetch c2 into id,nam;
exit when c2%NOTFOUND;
DBMS_output.put_line(id||' '||nam);
end loop;
close c2;
end;
