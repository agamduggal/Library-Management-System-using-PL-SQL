CREATE SEQUENCE borrows_sequence
 START WITH 14
 INCREMENT BY 1;

CREATE OR REPLACE PROCEDURE add_borrow (
  p_m_id IN NUMBER,
  p_i_id IN NUMBER,
  p_due_date IN DATE
)
IS
  -- Check if the member and book exist
  v_m_id NUMBER;
  v_i_id NUMBER;
  v_copies_available NUMBER;

  -- Check if the borrow is valid
  v_borrow_valid NUMBER(1) := 1;

BEGIN
  -- Check if the member exists
  SELECT m.m_id
  INTO v_m_id
  FROM Member m
  WHERE m.m_id = p_m_id;

  -- Check if the book exists
  SELECT b.item_id
  INTO v_i_id
  FROM Book b
  WHERE b.item_id = p_i_id;

  -- Check if there are any copies available
  SELECT bc.copy_no
  INTO v_copies_available
  FROM Book_Copies bc
  WHERE bc.item_id = p_i_id
  AND bc.copy_no > 0;

  -- Check if the borrow is valid
  IF v_copies_available = 0 THEN
    v_borrow_valid := 0;
  END IF;

  -- Insert the borrow record
  IF v_borrow_valid = 1 THEN
    INSERT INTO Borrows (b_id, issue_date, due_date, return_date, m_id, i_id)
    VALUES (borrows_sequence.nextval, SYSDATE, SYSDATE+14, NULL, p_m_id, p_i_id);

    -- Decrease the number of available copies
    UPDATE Book_Copies
    SET copy_no = copy_no - 1
    WHERE item_id = p_i_id
    AND copy_no > 0;
   
 
  END IF;

  -- Raise an exception if the borrow is not valid
  IF v_borrow_valid = 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'There are no available copies of this book.');
  END IF;

EXCEPTION
  -- Handle the case when the member or book does not exist
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20002, 'The member or book does not exist.');

  -- Handle the case when the borrow is not valid
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001, 'An error occurred while borrowing the book.');

END add_borrow;

execute add_borrow(3035, 2, SYSDATE);
select * from Borrows;

-------------------------------------------------------------------------------------------

