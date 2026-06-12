# Library Management & Data Analytics System

A relational database project built in MySQL to manage library operations, track book loans, and analyze borrowing patterns.

## 📊 Database Architecture
The database consists of three tables:
- `books`: Tracks library inventory, genres, and stock quantities.
- `members`: Contains library membership details.
- `loans`: A junction table managing transactions, checkout dates, and returns.

## 🚀 Key Insights & Analytics Solved
All queries used to generate the insights below can be found in the accompanying [queries.sql](./queries.sql) file.

### 1. Tracking Active Loans
* **Objective:** Identify all books currently checked out of the library, along with the borrower's name.
* **Database Concepts:** Handled using an `INNER JOIN` across three tables and filtered for active status.

#### Output Result:
![Active Loans Output](images/active_loans.png)

---

### 2. Book Popularity Contest
* **Objective:** Rank the library's catalog by how frequently each title has been borrowed.
* **Database Concepts:** Utilized `COUNT()` aggregation and grouped records to sort titles in descending order.

#### Output Result:
![Popularity Output](images/popularity.png)

---

### 3. Inventory Volume by Genre
* **Objective:** Calculate the total number of physical books owned by the library, broken down by genre.
* **Database Concepts:** Applied the `SUM()` function to consolidate physical stock levels.

#### Output Result:
![Genre Output](images/genre_total.png)

---

### 4. Identifying Inactive Members
* **Objective:** Locate members who have signed up but have not yet borrowed any books.
* **Database Concepts:** Solved using a `LEFT JOIN` and tracking unmatched records where the transaction layer contains missing (`NULL`) values.

#### Output Result:
![Inactive Members Output](images/inactive_members.png)

## 🛠️ How to Run
1. Run the scripts inside `schema.sql` to build the database and populate it with sample data.
2. Run the queries inside `queries.sql` to view the analytical results.
