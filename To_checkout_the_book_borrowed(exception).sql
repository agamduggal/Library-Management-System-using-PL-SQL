ALTER TABLE Book
ADD is_checked_out NUMBER(1) DEFAULT 0;
DECLARE
b_id NUMBER;
already_checked_out EXCEPTION;
BEGIN
b_id := &b_id ;
UPDATE Book SET is_checked_out = 1 WHERE book_id = b_id;
IF SQL%ROWCOUNT = 0 THEN
RAISE already_checked_out;
END IF;
EXCEPTION
WHEN already_checked_out THEN
DBMS_OUTPUT.PUT_LINE('Error: Book is already checked out.');
END;
