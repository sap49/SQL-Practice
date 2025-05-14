set search_path to icls;

-- 1 - List all the library staff in descending order based on their salaries
Select * 
from employees
Order by salary desc;

-- 2 - Display the total INTEGER of books by genre
select genre, count(genre) 
from books
group by genre;

-- 3 - Retrieve the title and genre of available books
select b.genre, b.title
from books b
join book_status bs on b.title = bs.book_title and
	b.ISBN = bs.book_isbn
where bs.status_type = 'AVAILABLE';

-- 4 - List all books that have never been borrowed
select b.*
from books b
where b.isbn not in 
	(select bs.book_isbn from book_status bs where bs.status_type = 'AVAILABLE'); 

-- 5 - List all customers who have been registered for at least one year and have not borrowed any books
select c.name
from customers c
where c.registered_since 
Having max(2023) - min(2020) + 1 = count(2020) 
   and min(purchase) > 10


-- 6 - List all customers who have borrowed more than one book


-- 7 - List all customers who have borrowed a book but have not returned them



