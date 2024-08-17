create function calculate_fine (d_issuedate IN date, cal_date IN date, n_fineperday IN number)
 RETURN NUMBER IS
 n_fine number := 0;
 n_days number:= 0;
BEGIN
 n_days := cal_date-d_issuedate;
 if(n_days>0)
 then
 n_fine := n_days*n_fineperday;
 return n_fine;
 end if;
 return 0;
END;


alter table add borrows add fine number;
update borrows set fine=(select calculate_fine(due_date, return_date,1) from dual)where return_date is not null;
select * from borrows;