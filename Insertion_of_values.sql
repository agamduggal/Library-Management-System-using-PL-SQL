INSERT into Book VALUES (1, 101, 'Ruskin Bond', 'Matilda', 'Third', 'London Express"); 
INSERT into Book VALUES (2, 101, 'Ruskin Bond', 'Matilda', 'Fifth', 'London Express");
INSERT into Book VALUES (3, 102, 'J.K. Rowling', 'Harry Porter', 'First', 'Euro Times");
INSERT into Book VALUES (4, 103, 'Stephenie Meyer', 'Twilight', 'Ninth', 'Carryway");
--------------------------------------------------------------------------------------------------------
INSERT into Book Copies VALUES (1, 5, 'new', 1);
INSERT into Book Copies VALUES (2, 4, 'used', 2);
INSERT into Book Copies VALUES (3, 2, 'used", 3);
INSERT into Book Copies VALUES (4, 3, 'new', 4);
--------------------------------------------------------------------------------------------------------
INSERT into Member VALUES (3035, 'Agam', 'a thapar.edu', 7888725690, 'Bathinda', 'Punjab');
INSERT into Member VALUES (3037, 'Swapnil', 's_thapar.edu, 7804867392, 'Bathinda', 'Punjab'); 
INSERT into Member VALUES (3041, 'Adiraj', 'ad_thapar.edu', 9456382876, 'Patiala', 'Punjab');
INSERT into Member VALUES (3828, 'Radhika', 'r_thapar.edu', 9886254566, 'Meerut', 'Haryana');
--------------------------------------------------------------------------------------------------------
INSERT into Borrows VALUES (10, '30-Jan-2024', '01-Mar-2024', '01-Mar-2024', 3035, 1);
INSERT into Borrows VALUES (11, '30-Mar-2024', '30-April-2024', '01-May-2024', 3037, 2);
INSERT into Borrows VALUES (12, '28-Feb-2024', '28-Mar-2024', '31-Mar-2024', 3041, 3); 
INSERT into Borrows VALUES (13, '03-Jan-2024', '03-Feb-2024', '04-Feb-2024', 3828, 4);
--------------------------------------------------------------------------------------------------------
INSERT into GD_Room_Book VALUES (1, '02-feb-2024, 11:20:23', 5, '02-feb-2024', 3035); 
INSERT into GD Room Book VALUES (2, '03-mar-2024, 12:20:23', 4, '03-maг-2024', 3037);
INSERT into GD_Room_Book VALUES (2, '01-jan-2024, 10:20:23', 3, '01-jan-2024', 3041);
INSERT into GD Room Book VALUES (4, 02-feb-2024, 09:20:23, 7, '02-feb-2024', 3828);