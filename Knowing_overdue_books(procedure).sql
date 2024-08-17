create procedure overdue_books
IS
begin
 for o in (select title
 from borrows inner join book on borrows.i_id = book.item_id
 where borrows.due_date < sysdate() )
 LOOP
 dbms_output.put_line(o.title);
 end loop;
End;

execute overdue_books;