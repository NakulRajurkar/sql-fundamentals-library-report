--Create library members table
--Create library loans table

-- The library database: two empty tables.
-- Dropping first means this script can be run again to start over.
DROP TABLE IF EXISTS loans;
DROP TABLE IF EXISTS members;

CREATE TABLE members (
    id    INTEGER PRIMARY KEY,
    name  TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE loans (
    id          INTEGER PRIMARY KEY,
    member_id   INTEGER NOT NULL REFERENCES members (id),
    book_title  TEXT NOT NULL,
    loan_date   TEXT NOT NULL,
    return_date TEXT
);
INSERT INTO members (id, name, email) VALUES
    (1, 'Alice Smith', 'alice@example.com'),
    (2, 'Bob Jones', 'bob@example.com'),
    (3, 'Carol White', 'carol@example.com');
INSERT INTO loans (id, member_id, book_title, loan_date, return_date) VALUES
    (1, 1, 'The Great Gatsby','2025-04-01',NULL),
    (2,2, '1984', '2025-03-15', '2025-03-30');
    