# Library-Management-System-using-PL-SQL
## 1.Introduction
SQL-Based Library Management System:
Libraries are repositories of vast quantities of high-quality materials such as books, 
journals, and e-books. Efficient management of members and record-keeping for 
issue and due dates, as well as fines, is crucial for the smooth functioning of a 
library. Additionally, the staff needs to have the latest record of the condition of 
items and their presence in the library. Manual management of such tasks can be 
burdensome and prone to errors.
To address these challenges, we propose an SQL-based library management 
system. This system can significantly reduce the difficulties associated with 
manual management of library materials, including tracking due dates and 
managing member accounts.
The proposed system will have the following features:
### Member management:
The system will allow for the creation and 
management of member accounts, including the ability to add, edit, and 
delete members.
### Book management:
The system will allow for the creation and management 
of book records, including the ability to add, edit, and delete books.
### Issue management:
The system will allow for the issuing and returning of 
books, with automatic tracking of due dates and fines.
### Reporting:
The system will provide various reports, such as member activity 
reports, book availability reports, and overdue book reports.
## 2.ER Diagram
![image](https://github.com/user-attachments/assets/017985fd-5998-4eba-8abf-3d806e61e0d6)
(Straight line represents primary key and dotted line represents foreign key)
## 3.ER to Table
-Member (m_id, name, email, phone_no, m_city, m_state)<br>
-Book (item_id, book_id, title, edition, author, publisher)<br>
-Borrows (b_id, issue_date, due_date, return_date, m_id, i_id)<br>
-GD_Room_Book (GD_no, Time_to_book, No_of_members, Date_of_booking, m_id)<br>
-Book_Copies (copy_id, item_id, copy_no, condition)<br>
## 4.Tables in Normalized Form:
### Member table already in 1NF:
-Member (m_id, name, email, phone_no, m_city, m_state)
### Book Table already in 1NF:
-Book (item_id, book_id, title, edition, author, publisher)
### Borrows table already in 1NF but can be further normalized as:
-Borrows (b_id, issue_date, due_date, return_date)<br>
-Member_Borrows (m_id, b_id)<br>
-Book_Borrows (i_id, b_id)
### GD_Room_Book Table already in 1NF but can be further normalized as:
-GD_Room_Book (GD_no, Time_to_book, No_of_members, Date_of_booking)<br>
-Member_GD_Room_Book (m_id, GD_no, Date_of_booking)
### Book_Copies already in 1NF but can be further normalized as:
-Book_Copies (copy_id, item_id, condition)<br>
-Copy_Number (copy_id, copy_no)
## 5.Conclusion
In conclusion, the development of a library management system using a database 
management system has proven to be an effective solution for managing library 
operations. The above-mentioned project was developed using a combination of 
SQL and PLSQL.<br>
Some of the benefits of the proposed system include:
<br>- Improved accuracy: The system reduces errors associated with manual 
record-keeping, resulting in improved accuracy of library records.
<br>- Enhanced efficiency: The system automates various tasks, such as issuing 
and returning books, resulting in enhanced efficiency of library operations.
<br>- Improved service delivery: The system provides library staff with real-time 
information about the availability of books and the status of member 
accounts, enabling them to provide better service to library users.
<br>- Better user experience: The system provides library users with a more 
convenient and efficient way to access library materials, resulting in a better 
user experience.
<br>In conclusion, an SQL-based library management system has the potential to 
significantly improve the efficiency and effectiveness of library management. By 
automating various tasks and providing real-time information to library staff and 
users, the proposed system can enhance the overall experience of using a library

