# API Plan and Routes

The backend will use **TypeScript** and **Express.js**. The architecture is based on routes, controllers, models, and server files. MongoDB stores data in the `Books`, `Members`, `BorrowRecords`, and `JuiceReports` collections.

## Books Routes

- `GET /books` – display all books
- `GET /books/:id` – display one book
- `POST /books` – add a new book
- `PUT /books/:id` – update a book
- `DELETE /books/:id` – delete a book

## Members Routes

- `GET /members` – display all members
- `GET /members/:id` – display one member
- `POST /members` – add a new member
- `PUT /members/:id` – update a member
- `DELETE /members/:id` – delete a member

## BorrowRecords Routes

- `GET /borrowrecords` – display all borrow records
- `GET /borrowrecords/:id` – display one borrow record
- `POST /borrowrecords` – add a new borrow record
- `PUT /borrowrecords/:id` – update a borrow record
- `DELETE /borrowrecords/:id` – delete a borrow record

## JuiceReport Routes

- `GET /juicereport` – display all reports
- `GET /juicereport/:idjuice` – display one report
- `POST /juicereport` – add a new report
- `PUT /juicereport/:idjuice` – update a report
- `DELETE /juicereport/:idjuice` – delete a report