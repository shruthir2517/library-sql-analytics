CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    published_year INT,
    quantity INT DEFAULT 1
);

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    join_date DATE NOT NULL
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- Inserting Sample Data

INSERT INTO books (title, author, genre, published_year, quantity) VALUES
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 3),
('1984', 'George Orwell', 'Dystopian', 1949, 2),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 4),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, 1),
('Dune', 'Frank Herbert', 'Sci-Fi', 1965, 2);

INSERT INTO members (first_name, last_name, join_date) VALUES
('Alice', 'Smith', '2025-01-15'),
('Bob', 'Johnson', '2025-03-22'),
('Charlie', 'Brown', '2026-02-10'),
('Diana', 'Prince', '2026-05-01');

INSERT INTO loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2026-05-10', '2026-05-24'),
(2, 2, '2026-05-12', NULL), -- NULL means it hasn't been returned yet
(3, 1, '2026-05-15', '2026-05-29'),
(1, 3, '2026-06-01', NULL),
(5, 4, '2026-06-02', '2026-06-09');


commit;
