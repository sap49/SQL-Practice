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
where b.isbn not in (select bs.book_isbn from book_status bs where bs.status_type = 'BORROWED'); 

-- 5 - List all customers who have been registered for at least one year and have not borrowed any books
select c.name
from customers c
where c.registered_since <= (
    select MAX(action_date) - INTERVAL '1 year'
    from book_status
)
and c.id not in (
    select customer_id
    from book_status
    where status_type = 'BORROWED'
);


-- 6 - List all customers who have borrowed more than one book
select c.name, count(*) as borrowed_books
from customers c
join book_status bs on c.id = bs.customer_id
where bs.status_type = 'BORROWED'
group by c.id, c.name
having count(*) > 1;



-- 7 - List all customers who have borrowed a book but have not returned them
select distinct c.name
from customers c
join book_status bs on c.id = bs.customer_id
where bs.status_type = 'BORROWED'
  and not exists (
    select 1
    from book_status bs2
    where bs.book_title = bs2.book_title
      and bs.book_isbn = bs2.book_isbn
      and bs2.status_type = 'AVAILABLE'
      and bs2.action_date > bs.action_date
);





