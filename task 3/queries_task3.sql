-- TASK 3: SQL BASICS - FILTERING, SORTING, AGGREGATIONS
-- Dataset: Superstore Sales

-- 1. Inspect the dataset (First 10 rows)
SELECT * FROM superstore LIMIT 10;

-- 2. Filtering & Sorting (Hint 4)
-- Find the top 10 highest sales in the 'Technology' category.
SELECT Category, Sub_Category, Sales 
FROM superstore 
WHERE Category = 'Technology' 
ORDER BY Sales DESC 
LIMIT 10;

-- 3. Aggregations (Hint 5)
-- Create a summary report showing Total Orders, Total Sales, and Average Profit by Region.
SELECT 
    Region, 
    COUNT(*) as Total_Orders, 
    SUM(Sales) as Total_Sales, 
    AVG(Profit) as Avg_Profit 
FROM superstore 
GROUP BY Region;

-- 4. HAVING Clause (Hint 6)
-- Show only Sub-Categories that have generated more than $100,000 in total sales.
SELECT 
    Sub_Category, 
    SUM(Sales) as Total_Sales 
FROM superstore 
GROUP BY Sub_Category 
HAVING SUM(Sales) > 100000 
ORDER BY Total_Sales DESC;

-- 5. Pattern Search (Hint 7)
-- Find all orders shipped to cities starting with 'S' (e.g., Seattle, San Francisco).
SELECT * FROM superstore 
WHERE City LIKE 'S%' 
LIMIT 5;