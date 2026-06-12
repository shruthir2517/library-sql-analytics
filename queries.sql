-- Query 1: Active Loans

SELECT books.title, members.first_name, members.last_name
FROM books
INNER JOIN loans
ON books.book_id = loans.book_id
INNER JOIN members ON loans.member_id = members.member_id
WHERE loans.return_date IS null;

-- Query 2: Popularity Contest

SELECT books.title, COUNT(loans.loan_id)
FROM books
INNER JOIN loans ON books.book_id = loans.loan_id
GROUP BY books.title
ORDER BY COUNT(loans.loan_id) DESC;

-- Query 3: Genre Overview

SELECT books.genre, SUM(books.quantity)
FROM books
GROUP BY GENRE;


-- Query 4: Identifying Members with No Loans 

SELECT members.first_name
FROM members
LEFT JOIN loans
ON members.member_id = loans.member_id
WHERE loan_id IS NULL;
