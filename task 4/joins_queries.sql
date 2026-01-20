-- TASK 4: SQL INTERMEDIATE - JOINS & BUSINESS QUESTIONS
-- 1. INNER JOIN: Combine Orders with Customer Details
-- Objective: View only customers who have actually made a purchase.
SELECT 
    Customers.Customer_Name, 
    Orders.Order_ID, 
    Orders.Order_Date, 
    Orders.Total_Amount
FROM Customers
INNER JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID;

-- 2. LEFT JOIN: Find Customers with NO Orders
-- Objective: Identify "inactive" users for marketing campaigns.
SELECT 
    Customers.Customer_Name, 
    Customers.Customer_ID, 
    Orders.Order_ID
FROM Customers
LEFT JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
WHERE Orders.Order_ID IS NULL;

-- 3. Product Performance (Joining 3 Tables)
-- Objective: Calculate total revenue per product category.
SELECT 
    Products.Category, 
    SUM(Order_Items.Quantity * Products.Price) as Total_Revenue
FROM Order_Items
JOIN Products ON Order_Items.Product_ID = Products.Product_ID
GROUP BY Products.Category
ORDER BY Total_Revenue DESC;