# Database Design (MongoDB)

We selected **MongoDB** because it is flexible, easy to use with TypeScript and Express, and stores data in collections and documents. It fits our Library Management System and can grow in the future.

## Collections

- **Books**
  - `bookId` (Number)
  - `title` (String)
  - `author` (String)
  - `category` (String)
  - `available` (Boolean)

- **Members**
  - `memberId` (Number)
  - `name` (String)
  - `email` (String)
  - `phone` (String)

- **BorrowRecords**
  - `borrowId` (Number)
  - `memberId` (Number)
  - `bookId` (Number)
  - `borrowDate` (Date)
  - `returnDate` (Date)

- **JuiceReports**
  - `idjuice` (Number)
  - `reportName` (String)
  - `reportDate` (Date)
  - `description` (String)

## Relationships (ERD summary)

- One **Member** can have many **BorrowRecords**.
- One **Book** can appear in many **BorrowRecords**.
- **BorrowRecords** connects Members and Books.
- **JuiceReports** is a separate reporting collection.

## ERD / Diagram

(Later: export your ERD as `erd-diagram.png` and put it in `docs/`, then reference it here.)