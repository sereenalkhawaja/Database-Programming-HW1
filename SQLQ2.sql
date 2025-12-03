
-- Name: sereen Alkhawaja
-- ID: 202220596
-- Q2 SQL Queries for Bank Database


-- A)
SELECT ID
FROM depositor 
EXCEPT
SELECT ID
FROM borrower;



-- B)

SELECT c2.ID
FROM customer c1
JOIN customer c2
    ON c1.customer_street = c2.customer_street
   AND c1.customer_city = c2.customer_city
WHERE c1.ID = '12345'
  AND c2.ID <> '12345';   



-- C) 

SELECT DISTINCT b.branch_name
FROM branch b
JOIN account a
    ON b.branch_name = a.branch_name
JOIN depositor d
    ON a.account_number = d.account_number
JOIN customer c
    ON d.ID = c.ID
WHERE c.customer_city = 'Harrison';