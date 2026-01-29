-- TASK 9: DATA MODELING - STAR SCHEMA BUILD
-- 1. Create Dimension Tables (The "Who", "Where", "What")

CREATE TABLE Dim_Location (
    location_id INT PRIMARY KEY,
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(50),
    postal_code VARCHAR(20)
);

CREATE TABLE Dim_Product (
    product_id INT PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50)
);

CREATE TABLE Dim_Segment (
    segment_id INT PRIMARY KEY,
    segment_name VARCHAR(50)
);

CREATE TABLE Dim_ShipMode (
    ship_mode_id INT PRIMARY KEY,
    ship_mode VARCHAR(50)
);

-- 2. Create Fact Table (The "How Much")

CREATE TABLE Fact_Sales (
    sales_id INT PRIMARY KEY,
    location_id INT,
    product_id INT,
    segment_id INT,
    ship_mode_id INT,
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2),
    -- Foreign Keys linking to Dimensions
    FOREIGN KEY (location_id) REFERENCES Dim_Location(location_id),
    FOREIGN KEY (product_id) REFERENCES Dim_Product(product_id),
    FOREIGN KEY (segment_id) REFERENCES Dim_Segment(segment_id),
    FOREIGN KEY (ship_mode_id) REFERENCES Dim_ShipMode(ship_mode_id)
);

-- 3. Analytics Query Validation
-- Joining Fact Table with Product Dimension to see Sales by Category
SELECT 
    p.category, 
    SUM(f.sales) as total_revenue
FROM Fact_Sales f
JOIN Dim_Product p ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;