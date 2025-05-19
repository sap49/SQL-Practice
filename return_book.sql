create or replace procedure return_book(
    p_customer_id integer,       -- Customer ID
    p_book_isbn varchar,          -- Book ISBN
    p_book_title varchar          -- Book Title
)
language plpgsql
as $$
declare
    v_latest_borrow_date timestamp;
begin
    set search_path to icls;

    -- Check if the customer exists
    if not exists (select 1 from customers where id = p_customer_id) then
        raise exception 'Customer with ID % not found.', p_customer_id;
    end if;

    -- Find the most recent BORROWED record for this customer
    select max(action_date) into v_latest_borrow_date
    from book_status
    where book_isbn = p_book_isbn
      and book_title = p_book_title
      and status_type = 'BORROWED'
      and customer_id = p_customer_id;
      
    -- Check if a valid record exists
    if v_latest_borrow_date is null then
        raise exception 'Book with ISBN % and Title "%" has not been borrowed by Customer ID % or is already returned.', p_book_isbn, p_book_title, p_customer_id;
    end if;

    -- Update the status of the book to AVAILABLE
    update book_status
    set status_type = 'AVAILABLE', action_date = current_timestamp
    where book_isbn = p_book_isbn
      and book_title = p_book_title
      and customer_id = p_customer_id
      and action_date = v_latest_borrow_date;

    -- Ensure that one record is updated
    if not found then
        raise exception 'Failed to update book status. No matching record found.';
    end if;

exception
    when others then
        -- Handling any other exception (for example, if any constraint fails)
        raise exception 'An error occurred while returning the book: %', sqlerrm;
end;
$$;