--Q1 TOTAL SALES AMOUNT FOR EACH CATEGORY

SELECT 
    pd.category_name,
    SUM(ps.qty * pp.price) AS total_sales
FROM Product_Sales ps
INNER JOIN Product_Pricing pp 
    ON ps.prod_id = pp.product_id
INNER JOIN Product_Details pd 
    ON ps.prod_id = pd.product_id
GROUP BY pd.category_name



--Q2 the best-selling product based on total quantity sold

SELECT TOP 1
    pd.product_name,
    SUM(ps.qty) AS total_qty
FROM Product_Sales ps
INNER JOIN Product_Details pd 
    ON PS.prod_id = pd.product_id
GROUP BY pd.product_name
ORDER BY total_qty DESC


--Q3 the product category that contributed the highest percentage to total sales

SELECT TOP 1
    pd.category_name,
    SUM(ps.qty * pp.price) AS category_sales,
    (SUM(ps.qty * pp.price) * 100.0 /
        (SELECT SUM(ps2.qty * pp2.price)
         FROM Product_Sales ps2
         INNER JOIN Product_Pricing pp2 
            ON ps2.prod_id = pp2.product_id)
    ) AS percentage_contribution
FROM Product_Sales ps
INNER JOIN Product_Pricing pp 
    ON ps.prod_id = pp.product_id
INNER JOIN Product_Details pd 
    ON ps.prod_id = pd.product_id
GROUP BY pd.category_name
ORDER BY percentage_contribution DESC

--Q4 the most sold product (by quantity) for each category

WITH RankedProducts AS (
    SELECT 
        pd.category_name,
        pd.product_name,
        SUM(ps.qty) AS total_qty,
        RANK() OVER (
            PARTITION BY pd.category_name
            ORDER BY SUM(ps.qty) DESC
        ) AS rank_in_category
    FROM Product_Sales ps
    INNER JOIN Product_Details pd 
        ON ps.prod_id = pd.product_id
    GROUP BY pd.category_name, pd.product_name
)
SELECT *
FROM RankedProducts
WHERE rank_in_category = 1


--Q5 the third and fourth most popular product categories based on total sales

WITH CategoryRank AS (
    SELECT 
        pd.category_name,
        SUM(ps.qty * pp.price) AS total_sales,
        RANK() OVER (
            ORDER BY SUM(ps.qty * pp.price) DESC
        ) AS rank_category
    FROM Product_Sales ps
    INNER JOIN Product_Pricing pp 
        ON ps.prod_id = pp.product_id
    INNER JOIN Product_Details pd 
        ON ps.prod_id = pd.product_id
    GROUP BY pd.category_name
)
SELECT *
FROM CategoryRank
WHERE rank_category IN (3, 4)


