--Community Library Book Loans Report
-- 3. show all library members
SELECT
   id,
   name,
   email
FROM members
ORDER BY id;
-- 4. List every book still on loan with its borrower
SELECT
    l.book_TITLE,
    m.name
FROM loans l
JOIN members m
    ON l.member_id = m.id
WHERE l.return_date IS NULL
ORDER BY l.loan_date;