-- Name: sereen Alkhawaja
-- ID: 202220596
-- Q3 SQL Window Functions


--A. Find the cumulative total sum for qty
-- (Assuming table name is demand)

SELECT
    day,
    qty,
    SUM(qty) OVER (ORDER BY day) AS cumQty
FROM demand;


-- B. Extract the two worst performing days of each product in terms of number of qty sold
-- (Assuming table name is Product_Sales)
WITH RankedSales AS (
    SELECT
        product,
        day,
        qty,
        RANK() OVER (PARTITION BY product ORDER BY qty ASC) AS RN
    FROM Product_Sales
)
SELECT
    product,
    day,
    qty,
    RN
FROM RankedSales

WHERE RN <= 2
ORDER BY product, RN;