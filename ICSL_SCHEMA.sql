set search_path to icls;
CREATE TABLE branches (
    branch_no VARCHAR(10),
    address VARCHAR(250) NOT NULL,
    contact_no VARCHAR(10) NOT NULL,
	PRIMARY KEY(branch_no)
);
CREATE TABLE employees (
    id INTEGER,
    name VARCHAR(250) NOT NULL,
    position VARCHAR(50) NOT NULL,
	salary INT NOT NULL,
	branch_no VARCHAR(10),
	PRIMARY KEY (id),
    FOREIGN KEY (branch_no) REFERENCES branches(branch_no)
);

CREATE TABLE customers (
    id INTEGER,
    name VARCHAR (250) NOT NULL,
    address VARCHAR(250) NOT NULL,
	registered_since TIMESTAMP NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE books (
    ISBN VARCHAR(250),
    title VARCHAR(250),
    genre VARCHAR(50) NOT NULL,
	author VARCHAR(50) NOT NULL,
	publisher VARCHAR(250) NOT NULL,
	PRIMARY KEY(ISBN,title)
);
CREATE TABLE book_status (
    id INTEGER,
    status_type VARCHAR(10),
    customer_id INTEGER NOT NULL,
	action_date TIMESTAMP NOT NULL,
	book_title VARCHAR(250),
	book_isbn VARCHAR(250),
	branch_no VARCHAR(10),
	PRIMARY KEY(id,status_type),
	FOREIGN KEY (book_title, book_isbn) REFERENCES books(title,ISBN),
	FOREIGN KEY (branch_no) REFERENCES branches(branch_no)
);
