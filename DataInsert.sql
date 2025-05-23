set search_path to icls;

INSERT INTO branches VALUES
('BL5467', '123 Main St', '5555555555'),
('CF2638', '456 Elm St', '6096664444'),
('JK5432', '789 Oak St', '1234567890'),
('RS1907', '567 Pine St', '4443259898'),
('QX7914', '890 Maple St', '8003456219');

INSERT INTO employees(id, name, position, salary, branch_no) VALUES
(1, 'John Doe', 'Manager', 60000, 'BL5467'),
(2, 'Jane Smith', 'Clerk', 45000, 'BL5467'),
(3, 'Mike Johnson', 'Librarian', 55000, 'BL5467'),
(4, 'Emily Davis', 'Assistant', 40000, 'BL5467'),
(5, 'Sarah Brown', 'Assistant', 42000, 'BL5467'),
(6, 'Michelle Ramirez', 'Assistant', 43000, 'CF2638'),
(7, 'Michael Thompson', 'Manager', 62000, 'CF2638'),
(8, 'Jessica Taylor', 'Clerk', 46000, 'CF2638'),
(9, 'Daniel Anderson', 'Librarian', 57000, 'CF2638'),
(10, 'Laura Martinez', 'Assistant', 41000, 'CF2638'),
(11, 'Christopher Lee', 'Manager', 65000, 'QX7914'),
(12, 'Stan Lee', 'Librarian', 52000, 'QX7914'),
(13, 'Stella Croft', 'Assistant', 41000, 'QX7914'),
(14, 'Hugh Jass', 'Clerk', 39000, 'QX7914'),
(15, 'Bill Hicks', 'Clerk', 38000, 'JK5432'),
(16, 'Devon James', 'Librarian', 55000, 'JK5432'),
(17, 'Kevin McCallister', 'Assistant', 41000, 'JK5432'),
(18, 'Hank Hughes', 'Manager', 60000, 'JK5432'),
(19, 'Joey Tribbiani', 'Assistant', 44000, 'BL5467'),
(20, 'Monica Geller', 'Assistant', 45000, 'RS1907'),
(21, 'Chanandler Bong', 'Manager', 70000, 'RS1907'),
(22, 'Rachel Greene', 'Clerk', 40000, 'RS1907'),
(23, 'Ross Geller', 'Librarian', 57000, 'RS1907'),
(24, 'Phoebe Buffay-Hannigan', 'Assistant', 43500, 'RS1907');

INSERT INTO customers VALUES
(1, 'Alice Johnson', '44 Monroe St', '2021-05-15'),
(2, 'Bob Smith', '464 Glenlake St', '2021-06-20'),
(3, 'Carol Davis', '60 E Poor House Ave', '2021-07-10'),
(4, 'Dave Wilson', '55 W Prarie Ln', '2021-08-05'),
(5, 'Eve Brown', '10 Northport Ln', '2021-09-25'),
(6, 'Frank Thomas', '709 Lock Maple Ave', '2021-10-15'),
(7, 'Grace Taylor', '9 Vale Ave', '2021-11-20'),
(8, 'Henry Anderson', '321 Birch St', '2021-12-10'),
(9, 'Ivy Martinez', '805 Coffee St', '2022-01-05'),
(10, 'Jack Wilson', '6555 Gainsway Ave', '2023-02-25');

INSERT INTO books VALUES
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', 'Harry Potter and the Sorcerer s Stone', 'Fantasy', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', 'A People s History of the United States', 'History', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 'Charles C. Mann', 'Vintage Books');

INSERT INTO book_status VALUES
(1, 'BORROWED', 1, '2024-02-01', 'The Catcher in the Rye', '978-0-553-29698-2', 'QX7914'),
(2, 'BORROWED', 2, '2023-05-02', 'The Da Vinci Code', '978-0-7432-4722-4', 'CF2638'),
(3, 'BORROWED', 3, '2024-01-03', '1491: New Revelations of the Americas Before Columbus', '978-0-7432-7357-1', 'JK5432'),
(4, 'BORROWED', 4, '2022-05-04', 'Sapiens: A Brief History of Humankind', '978-0-307-58837-1', 'BL5467'),
(5, 'BORROWED', 5, '2023-05-05', 'The Diary of a Young Girl', '978-0-375-41398-8', 'RS1907'),
(6, 'AVAILABLE', 1, '2024-03-06', 'The Catcher in the Rye', '978-0-553-29698-2', 'QX7914'),
(7, 'AVAILABLE', 2, '2023-06-07', 'The Da Vinci Code', '978-0-7432-4722-4', 'CF2638'),
(8, 'AVAILABLE', 5, '2023-06-08', 'The Diary of a Young Girl', '978-0-375-41398-8', 'RS1907'),
(9, 'AVAILABLE', 8, '2024-06-09', 'The Histories', '978-0-14-044930-3', 'JK5432'),
(10, 'AVAILABLE', 10, '2023-06-10', 'A Game of Thrones', '978-0-09-957807-9', 'BL5467'),
(11, 'BORROWED', 10, '2023-05-15', 'A Game of Thrones', '978-0-09-957807-9', 'BL5467'),
(12, 'AVAILABLE', 4, '2022-05-04', 'Sapiens: A Brief History of Humankind', '978-0-307-58837-1', 'BL5467'),
(13, 'BORROWED', 5, '2024-06-21', 'Guns, Germs, and Steel: The Fates of Human Societies', '978-0-393-91257-8', 'RS1907');

Select * from icls.book_status;