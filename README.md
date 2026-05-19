# 📚 SQL Project on Library Database Analysis

## 📌 Project Overview

This project focuses on designing and analyzing a **Library Management Database** using SQL. The project demonstrates practical knowledge of database concepts including table creation, relationships, joins, aggregations, subqueries, views, and analytical SQL queries.

The project simulates a real-world library database system to manage:

* Books
* Authors
* Publishers
* Borrowers
* Library Branches
* Book Loans
* Book Copies

The analysis helps in understanding library operations, borrower activities, book availability, and branch-wise management.

---

# 🎯 Project Objectives

* Design a relational database for library management
* Create normalized tables with relationships
* Perform SQL queries for business insights
* Analyze borrowing patterns and book availability
* Practice advanced SQL concepts using real-world scenarios

---

# 🛠️ Technologies Used

| Technology         | Purpose                 |
| ------------------ | ----------------------- |
| SQL                | Database Query Language |
| MySQL / SQL Server | Database Management     |
| CSV Files          | Data Source             |
| PDF & PPT          | Project Documentation   |

---

# 📂 Project Structure

```bash
├── sql project on library database analysis sanjay 479.sql
├── books.csv
├── authors.csv
├── borrower.csv
├── publisher.csv
├── library branch.csv
├── book loans.csv
├── book copies.csv
├── Library Database Analysis file.pdf
├── SQL Library database Analysis project Sanjay 479.pptx
└── README.md
```

---

# 🗂️ Database Tables

The project contains the following relational tables:

| Table Name     | Description                   |
| -------------- | ----------------------------- |
| Books          | Stores book details           |
| Authors        | Stores author information     |
| Publisher      | Publisher details             |
| Borrower       | Borrower/member information   |
| Library Branch | Branch information            |
| Book Loans     | Borrowing transaction records |
| Book Copies    | Copies available in branches  |

---

# 🔗 Database Relationships

The database is designed using relational concepts:

* One-to-Many Relationships
* Primary Keys
* Foreign Keys
* Entity Relationships
* Normalized Data Structure

These relationships ensure data consistency and integrity.

---

# 🔍 SQL Concepts Covered

This project demonstrates:

## ✅ Basic SQL

* SELECT Statements
* WHERE Conditions
* ORDER BY
* GROUP BY
* HAVING Clause

## ✅ Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Multiple Table Joins

## ✅ Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()

---

# 📊 Analysis Performed

The project includes analysis such as:

* Most borrowed books
* Branch-wise book availability
* Borrower activity analysis
* Publisher-wise book count
* Loan tracking and due analysis
* Book copy distribution across branches

---

# 💡 Key Insights

* Certain books have higher borrowing frequency
* Some library branches maintain more copies than others
* Borrower activity varies significantly across branches
* SQL joins help combine multiple tables for deeper analysis

---

---

# 📈 Sample SQL Queries

## Find Total Books

```sql
SELECT COUNT(*) AS Total_Books
FROM Books;
```

## Branch-wise Book Copies

```sql
SELECT Branch_id, SUM(No_of_copies) AS Total_Copies
FROM Book_Copies
GROUP BY Branch_id;
```

## Most Active Borrowers

```sql
SELECT Card_no, COUNT(*) AS Total_Borrowed
FROM Book_Loans
GROUP BY Card_no
ORDER BY Total_Borrowed DESC;
```

---

# 📚 Learning Outcomes

Through this project, I gained hands-on experience in:

* Database Design
* Relational Database Concepts
* SQL Query Writing
* Data Analysis using SQL
* Joins and Subqueries
* Business Insight Generation

---

# Description:
• Created a relational database schema for a library management system using SQL
• Wrote complex SQL queries using Joins, Group By, subqueries, and aggregations to analyze the records across 7 Tables
• Identified inactive borrowers (0 loans) and high-engagement users (>5 books issued) to improve user engagement strategies
• Spotted insights on branch performance, book availability, and author-wise distribution, improving decision-making

---

# Challenges:
● Defining correct table relationships and ensuring accurate use of foreign keys.
● Maintaining data consistency with cascading updates and deletes.
● Writing complex joins for Analysis 
● Preventing duplicate entries (values)

---

# 👨‍💻 Author

**Sanjay**
Aspiring Data Analyst | SQL | Python | Power BI | Data Analytics

---
<img width="1239" height="636" alt="Screenshot 2026-04-18 221133" src="https://github.com/user-attachments/assets/b99eadc4-132d-478b-83aa-f1104af0d53b" />
---
<img width="1241" height="625" alt="Screenshot 2026-04-20 135447" src="https://github.com/user-attachments/assets/ccbf3c49-a361-4b22-8dbf-097a869f2a24" />
---
<img width="1258" height="576" alt="Screenshot 2026-04-20 135526" src="https://github.com/user-attachments/assets/30348ada-a283-47a2-af4d-6b50ecffed13" />
---
<img width="1261" height="565" alt="Screenshot 2026-04-20 135543" src="https://github.com/user-attachments/assets/00148bb4-c7fd-4007-a83e-c0d2730e98d6" />
---
<img width="1263" height="605" alt="Screenshot 2026-04-20 135559" src="https://github.com/user-attachments/assets/2b3f81fb-4444-4dd6-b54d-71ee5c42420e" />
---
<img width="1256" height="582" alt="Screenshot 2026-04-20 135610" src="https://github.com/user-attachments/assets/e750a73e-6137-4d04-bf00-5e099cbb8ca7" />
---
<img width="1257" height="635" alt="Screenshot 2026-04-20 135621" src="https://github.com/user-attachments/assets/cb400228-8e9c-4543-9142-c1b67b6268b4" />
---
<img width="1261" height="632" alt="Screenshot 2026-04-20 135633" src="https://github.com/user-attachments/assets/fe2450e7-7481-490a-8c05-0ca48bbeacac" />
---







