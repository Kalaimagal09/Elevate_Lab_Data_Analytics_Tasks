-- SETUP: Create a table with Dates for Window Functions
CREATE TABLE superstore_dates (
    Region TEXT,
    Sub_Category TEXT,
    Order_Date TEXT,
    Sales INT
);

-- Insert sample data (Jan, Feb, Mar, Apr 2023)
INSERT INTO superstore_dates VALUES 
('Central', 'Chairs', '2023-01-10', 5000),
('Central', 'Phones', '2023-01-15', 3000),
('Central', 'Binders', '2023-01-20', 1500),
('West', 'Chairs', '2023-02-05', 8000),
('West', 'Phones', '2023-02-10', 7000),
('West', 'Tables', '2023-02-25', 6000),
('East', 'Phones', '2023-03-01', 10000),
('East', 'Chairs', '2023-03-15', 9000),
('East', 'Storage', '2023-03-20', 5000),
('South', 'Phones', '2023-04-05', 4000),
('South', 'Machines', '2023-04-10', 3500);



SELECT 
    Region, 
    Sub_Category, 
    Sales,
    RANK() OVER(PARTITION BY Region ORDER BY Sales DESC) as Rank_Num
FROM superstore_dates;


SELECT 
    Order_Date, 
    Sales,
    SUM(Sales) OVER (ORDER BY Order_Date) as Running_Total
FROM superstore_dates;


SELECT 
    Order_Date,
    Sales,
    LAG(Sales, 1) OVER (ORDER BY Order_Date) as Previous_Sale,
    (Sales - LAG(Sales, 1) OVER (ORDER BY Order_Date)) as Difference
FROM superstore_dates;


WITH Ranked_Data AS (
    SELECT 
        Region, 
        Sub_Category, 
        Sales,
        RANK() OVER(PARTITION BY Region ORDER BY Sales DESC) as Rank_Num
    FROM superstore_dates
)
SELECT * FROM Ranked_Data WHERE Rank_Num <= 3;