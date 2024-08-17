Table Creation of Book:

Create table Book (
 item_id number primary key,
 book_id number,
 title varchar(200),
 edition varchar(20),
 author varchar(50),
 publisher varchar(200)
);
-----------------------------------
Table Creation of Member:

Create table Member (
 m_id number primary key,
 name varchar(20),
 email varchar(20),
 phone_no number,
 m_city varchar(10),
 m_state varchar(10)
);
-----------------------------------
Table Creation of Borrows:

Create table Borrows (
 b_id number primary key, 
 Issue_date date, 
 Due_date date, 
 Return_date date, 
 m_id number references Member(m_id),
 i_id number references Book(item_id)
);
--------------------------------------
Table Creation of GD_Room_Book:

Create table GD_Room_Book (
GD_no number,
Time_to_book timestamp,
No_of_members number,
Date_of_booking date,
m_id number references Member(m_id),
primary key(GD_no, Time_to_book)
);
---------------------------------------
Table Creation of Book_Copies:

Create table Book_Copies (
 copy_id number primary key, 
 copy_no number, 
 condition varchar(20),
 item_id number references Book(item_id)
);