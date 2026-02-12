# Elevate_Lab_Data_Analytics_Tasks
---

# 📊 Task 1: Excel Data Cleaning & Formatting

**Internship:** Elevate Labs | **Domain:** Data Analytics

**Dataset:** Netflix Movies and TV Shows

## 📝 Overview

This project involves cleaning and standardizing a raw "messy" dataset containing Netflix titles. The goal was to transform raw data into a structured format ready for analysis using **Microsoft Excel / WPS Spreadsheets**.

## 🛠 Tools Used

* **WPS Office Spreadsheets** (Excel alternative)
* **Techniques:** Conditional Formatting, Text-to-Columns, Filter/Sort, Formulas (`TRIM`, `PROPER`).

## 🧹 Cleaning Process

1. **Handling Missing Values:**
* Identified null values in `Director`, `Cast`, and `Country` columns.
* Imputed missing entries with the placeholder `"Unknown"`.


2. **Date Standardization:**
* Converted the `date_added` column from text format (e.g., "September 25, 2021") to a standard Date format (`YYYY-MM-DD`).


3. **Text Formatting:**
* Used the `=TRIM()` function to remove inconsistent whitespace from the `type` column.


4. **Deduplication:**
* Verified and removed duplicate records based on the unique `show_id`.


5. **Documentation:**
* Added a `Data_Quality_Notes` column to document changes for future auditability.



## VC Files Included

* `Raw_Data.xlsx` - The original raw dataset.
* `Cleaned_dataset.xlsx` - The final processed Excel workbook with formulas removed.
* `cleaned_dataset.csv` - The export-ready CSV file for further analysis.

---

# 📈 Task 2: Excel Analysis – Pivot Tables & Dashboarding

**Internship:** Elevate Labs | **Domain:** Data Analytics

**Dataset:** Sample Superstore Sales

## 📝 Overview

This project focuses on transforming raw sales data into actionable business insights using **Pivot Tables** and **Charts**. The goal was to analyze sales performance across different regions and categories using the "Sample Superstore" dataset.

## 🛠 Tools Used

* **WPS Office Spreadsheets** (Excel alternative)
* **Techniques:** Pivot Tables, Calculated Columns, Conditional Formatting, Slicers, Data Visualization.

## 📊 Analysis Process

1. **Data Preparation:**
* Performed a data quality check and removed **17 duplicate records** to ensure accuracy.
* Created a calculated column **`Profit Margin`** using the formula `(Profit / Sales)` to measure efficiency.


2. **Pivot Table Analysis:**
* **Category Analysis:** Summarized Total Sales by Category and sorted them to identify the top revenue drivers (Technology).
* **Regional Heatmap:** Created a matrix of **Sales by Region & Segment** and applied *Conditional Formatting (Color Scales)* to highlight top-performing markets.


3. **Interactive Dashboard:**
* Added **Slicers** for Region and Category to make the report interactive.
* Visualize data using Bar/Column charts for easy comparison.



## 💡 Key Insights

* **Top Category:** **Technology** is the highest-grossing category (~$836k Sales).
* **Best Market:** The **West Region** (Consumer Segment) is the top-performing demographic.
* **Profitability Alert:** While **Furniture** generates high sales, it suffers from the lowest profit margins (~3.9%), indicating a need for pricing strategy adjustments.

## 📂 Files Included

* `Pivot_Report.xlsx` - The Excel workbook containing the raw data, calculated columns, and interactive Pivot Tables.
* `Pivot_Report.pdf` - A PDF export of the final dashboard/report.
* `Insights.docx` - A document summarizing the key business findings derived from the analysis.

---

# 🗄️ Task 3: SQL Basics - Filtering & Aggregation
**Internship:** Elevate Labs | **Domain:** Data Analytics
**Dataset:** Superstore Sales (CSV)

## 📝 Overview
This task focuses on using **SQL (Structured Query Language)** to query, filter, and summarize sales data. The goal was to extract meaningful business insights, such as top-selling categories and regional performance summaries.

## 🛠️ Tools Used
* **Database Engine:** SQLite / MySQL
* **Key Commands:** `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `LIKE`.

## 🔍 Queries & Insights
1.  **Top Tech Sales:**
    * *Query:* Filtered for `Category = 'Technology'` and sorted by `Sales DESC`.
    * *Insight:* Identified high-ticket technology items driving revenue.
2.  **Regional Summary:**
    * *Query:* Grouped data by `Region` to calculate `COUNT(*)` (Orders) and `SUM(Sales)`.
    * *Insight:* The **West** region has the highest number of orders (3,203) and total sales ($725k).
3.  **High-Volume Categories:**
    * *Query:* Used `HAVING SUM(Sales) > 100000` to filter out low-performing sub-categories.
    * *Insight:* Focuses analysis on major revenue drivers like Phones and Chairs.

## 📂 Files Included
* `queries_task3.sql` - The complete SQL script with comments.
* `sales_summary.csv` - Exported result of the regional performance query.

---
  
# 🔗 Task 4: SQL Intermediate – Joins & Business Logic
**Internship:** Elevate Labs | **Domain:** Data Analytics  
**Dataset:** E-Commerce Data (Simulated Relational Schema)

## 📝 Overview
This task focuses on **Relational Database Management**, specifically mastering **SQL Joins** (`INNER` and `LEFT`) to link multiple datasets. Since the raw data was provided as a flat file, I engineered a **normalized database schema** (creating `Customers`, `Orders`, and `Products` tables) to accurately simulate a real-world business environment and perform complex queries.

## 🛠 Tools Used
* **SQL Engine:** SQLite Online / MySQL
* **Key Concepts:** Database Normalization, Primary/Foreign Keys, INNER JOIN, LEFT JOIN, Aggregations.

## 📂 Database Schema (Simulation)
To enable relational queries, I structured the data into three linked tables:
1.  **Customers:** (`Customer_ID`, `Name`, `Region`)
2.  **Orders:** (`Order_ID`, `Customer_ID`, `Date`, `Amount`)
3.  **Products:** (`Product_ID`, `Category`, `Price`)

## 🔍 Queries & Analysis
1.  **Order Validation (INNER JOIN):**
    * *Query:* Linked `Customers` table with `Orders` to view detailed transaction history for active buyers.
    * *Goal:* Verify which customers have successfully completed purchases.

2.  **Churn Identification (LEFT JOIN):**
    * *Query:* Performed a `LEFT JOIN` to find customers present in the directory but missing from the `Orders` table (`Order_ID IS NULL`).
    * *Result:* Identified inactive users (e.g., "Evan Wright") for targeted marketing/re-engagement.

3.  **Product Performance:**
    * *Query:* Joined `Order_Items` with `Products` to calculate total revenue per category.
    * *Insight:* "Technology" proved to be the highest revenue-generating category.

## 📂 Files Included
* `joins_queries.sql` – The complete SQL script including the table creation (setup) and the solution queries.
* `joined_output.csv` – The final merged dataset showing Customer-Order details.
* `insights.txt` – A summary of the business findings (Inactive customers & Top categories).

---

# 🐍 Task 5: Python Basics – Data Cleaning with Pandas
**Internship:** Elevate Labs | **Domain:** Data Analytics  
**Dataset:** Sample Superstore (CSV)

## 📝 Overview
This project involves moving from manual Excel analysis to **Python-based automation**. Using **Google Colab** and the **Pandas** library, I built a data cleaning pipeline to process raw sales data, handle missing values, and engineer new features for deeper analysis.

## 🛠 Tools Used
* **IDE:** Google Colab (Jupyter Notebook Environment)
* **Language:** Python 3.x
* **Libraries:** `pandas`, `numpy`
* **Techniques:** Data Manipulation, Type Casting, Feature Engineering, Error Handling.

## ⚙️ Cleaning Process (Step-by-Step)
1.  **Environment Setup:**
    * Imported `pandas` and loaded the `SampleSuperstore.csv` dataset.
    * Used `df.info()` and `df.shape` to inspect the raw data structure.

2.  **Column Standardization (Key Fix):**
    * **Issue:** The raw CSV contained inconsistent column names (e.g., `Postal Code` vs `postal_code` vs `Ship Mode`), leading to `KeyError`.
    * **Solution:** Applied string manipulation to standardize all headers to lowercase with underscores (e.g., `postal_code`, `ship_mode`).

3.  **Data Cleaning:**
    * **Duplicates:** Identified and removed duplicate rows using `df.drop_duplicates()`.
    * **Missing Values:** Imputed missing values in the `postal_code` column with `'0'` to ensure data integrity.
    * **Type Conversion:** Converted `postal_code` from float/numeric to **string (object)**, as zip codes are categorical identifiers.

4.  **Feature Engineering:**
    * Created **`profit_margin`**: Calculated as `Profit / Sales` to analyze deal efficiency.
    * Created **`price_per_unit`**: Calculated as `Sales / Quantity`.

5.  **Export:**
    * Saved the final, clean dataframe as `cleaned_data.csv`.

## 📓 Key Observations
* **Automation:** Python scripts allow for reproducible cleaning, saving hours compared to manual Excel work.
* **Data Types:** A critical step was identifying that "Postal Code" was being read as a number. Converting it to text prevents mathematical errors.
* **Data Integrity:** Removing duplicates was essential to avoid inflating the total sales figures in the final report.

## 📂 Files Included
* `Task5_Cleaning.ipynb` - The Jupyter Notebook with all Python code and markdown notes.
* `cleaned_data.csv` - The processed dataset, ready for visualization.
* `SampleSuperstore.csv` - The raw input file.

---

# 📊 Task 6: Data Visualization with Python (Matplotlib)
**Internship:** Elevate Labs | **Domain:** Data Analytics  
**Dataset:** Sample Superstore

## 📝 Overview
The final task of the internship focuses on **Visual Storytelling**. Using the **Matplotlib** library in Python, I transformed the cleaned dataset into meaningful charts to uncover patterns in sales, profit, and product performance.

## 🛠 Tools Used
* **Environment:** Google Colab
* **Libraries:** `pandas`, `matplotlib.pyplot`
* **Charts Created:** Bar Chart, Line Chart, Histogram, Scatter Plot.

## 📈 Visual Insights
1.  **Bar Chart (Top Products):** Identified that **Phones** and **Chairs** are the primary revenue drivers.
2.  **Line Chart (Trend):** Showed a steep drop-off in sales after the top 5 sub-categories, indicating reliance on a few key products (Pareto Principle).
3.  **Scatter Plot (Sales vs Profit):** Revealed a weak correlation between high sales and high profit. Several large orders resulted in losses, suggesting a need to review the **Discount Strategy**.
4.  **Histogram:** Confirmed that most orders yield a small profit ($0–$50), visualizing the company's high-volume, low-margin business model.

## 📂 Files Included
* `Task6_Visualization.ipynb` - The source code for all charts.
* `charts_output.pdf` - Snapshot of the generated visualizations.

---

# 📊 Task 7: Interactive Dashboard (Power BI)
**Internship:** Elevate Labs | **Domain:** Data Analytics
**Tools:** Power BI Desktop

## 📝 Overview
This final capstone project involved building an interactive **Business Intelligence Dashboard** to visualize key performance indicators (KPIs) for the Superstore dataset.

## 🚀 Key Features
* **KPI Cards:** Displaying Total Sales ($2.30M), Profit ($286K), and Margin (12.5%).
* **Interactive Slicers:** Allows filtering by Region and Segment to analyze specific markets.
* **DAX Measures:** Custom calculations created for dynamic reporting.

## 💡 Insights
* **Technology** is the best-selling category.
* **West** is the top-performing region.
* **Furniture** has the lowest profit margins despite high sales volume.

## 📂 Files Included
* `Dashboard_Screenshot.pdf` - A snapshot of the final Power BI report.
* `Insights.txt` - Summary of business findings.

---

# 📉 Task 8: Advanced SQL – Window Functions
**Internship:** Elevate Labs | **Domain:** Data Analytics  
**Dataset:** Superstore Sales (Enriched with Synthetic Dates)

## 📝 Overview
This task focuses on **Advanced SQL Analytics**, specifically mastering **Window Functions** to perform complex calculations across rows without collapsing them (unlike standard `GROUP BY` aggregations). Since the original dataset lacked time-series data, I engineered a training table with dates to demonstrate **Running Totals** and **Month-over-Month (MoM) Growth**.

## 🛠 Tools Used
* **SQL Engine:** SQLite Online / PostgreSQL
* **Key Functions:** `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LAG()`, `OVER()`, `PARTITION BY`.

## 📂 Database Schema (Setup)
To enable time-series analysis, I created a custom table `superstore_dates` with the following structure:
* `Order_Date` (YYYY-MM-DD)
* `Region` (Central, East, South, West)
* `Sub_Category` (Phones, Chairs, etc.)
* `Sales` (Numeric Amount)

## 🔍 Queries & Analysis
1.  **Regional Ranking (PARTITION BY):**
    * *Query:* Used `RANK() OVER(PARTITION BY Region ORDER BY Sales DESC)` to identify the top-performing products within *each* specific region.
    * *Insight:* **Phones** and **Chairs** consistently rank #1 or #2 across all geographic regions.

2.  **Running Total (Cumulative Sum):**
    * *Query:* Calculated a rolling sum of sales using `SUM(Sales) OVER (ORDER BY Order_Date)`.
    * *Business Value:* Allows stakeholders to visualize the trajectory of revenue accumulation throughout the quarter.

3.  **Month-over-Month Growth (LAG):**
    * *Query:* Used `LAG(Sales, 1)` to retrieve the previous month's sales and compare it with the current month.
    * *Insight:* Detected a **10.6% drop** in sales between March and April, highlighting a seasonal dip.

4.  **Top 3 Performers (CTE Filtering):**
    * *Query:* Wrapped the ranking logic in a **Common Table Expression (CTE)** to filter results and show only the top 3 sub-categories per region.

## 📂 Files Included
* `task8_window.sql` – The complete SQL script containing the setup code and all 4 analytical queries.
* `ranked_customers.csv` – Exported output showing product rankings by region.
* `mom_growth.csv` – Exported output showing the calculated month-over-month growth percentages.
* `insights_task8.txt` – Summary of the business findings derived from the window functions.

---

# 🌟 Task 9: SQL Data Modeling – Building a Star Schema
**Internship:** Elevate Labs | **Domain:** Data Analytics  
**Dataset:** Superstore Sales (Flat CSV transformed into Relational Model)

## 📝 Overview
This task focuses on **Data Warehousing & Modeling**. Starting with a denormalized "flat file" (CSV), I architected a **Star Schema** to optimize the data for analytical querying. This involved splitting the data into a central **Fact Table** (quantitative data) and surrounding **Dimension Tables** (descriptive attributes), establishing relationships via Primary and Foreign Keys.

## 🛠 Tools Used
* **SQL Engine:** SQLite Online / PostgreSQL
* **Modeling Tool:** [dbdiagram.io](https://dbdiagram.io/) (for Entity-Relationship Diagram)
* **Key Concepts:** Database Normalization, Primary Keys (PK), Foreign Keys (FK), Star Schema, Fact vs. Dimension tables.

## 🏗 Database Architecture (Star Schema)
I transformed the single Excel sheet into a relational model with **1 Fact Table** and **4 Dimension Tables**:

### 📊 Fact Table
* **`Fact_Sales`**: Contains the metrics and foreign keys.
    * *Metrics:* Sales, Quantity, Discount, Profit.
    * *Keys:* `location_id`, `product_id`, `segment_id`, `ship_mode_id`.

### 🧩 Dimension Tables
1.  **`Dim_Location`**: Country, City, State, Region, Postal Code.
2.  **`Dim_Product`**: Category, Sub-Category.
3.  **`Dim_Segment`**: Consumer, Corporate, Home Office.
4.  **`Dim_ShipMode`**: Standard Class, Second Class, etc.

## 🔍 Steps & Analysis
1.  **Normalization:** Extracted distinct attributes from the raw data to create lookup (Dimension) tables, assigning unique IDs (Primary Keys) to each.
2.  **Schema Construction:** Built the tables using `CREATE TABLE` and established relationships using `FOREIGN KEY` constraints.
3.  **Validation:** Wrote complex `JOIN` queries to verify that the Star Schema produces the same analytical results as the original flat file (e.g., *Total Revenue by Category*).

## 📂 Files Included
* **`task9_star_schema.sql`** – The complete SQL script to create the tables, define keys, and run validation queries.
* **`star_schema_diagram.txt`** – The code used to generate the visual diagram in dbdiagram.io.
* **`analysis_outputs.csv`** – The analytical results obtained by joining the new Fact and Dimension tables.

---

# 🔎 Task 10: Python EDA & Outlier Detection
**Internship:** Elevate Labs | **Domain:** Data Analytics  
**Dataset:** Sample Superstore (Sales & Profit Focus)

## 📝 Overview
This task focused on **Exploratory Data Analysis (EDA)**, the critical process of understanding data before modeling. Using **Pandas** and **Seaborn**, I analyzed the statistical properties of the data, visualized distributions, and handled anomalies (outliers) to prepare a clean dataset.

## 🛠 Tools & Techniques
* **Libraries:** `pandas`, `numpy`, `matplotlib`, `seaborn`
* **Statistical Methods:** IQR (Interquartile Range), Skewness check, Correlation Analysis.
* **Data Cleaning:** Outlier Capping (Winsorization).

## 📊 Key Steps
1.  **Data Profiling:** Checked for missing values and data types (`.info()`, `.isnull()`).
2.  **Visualization:**
    * **Histograms:** Revealed that Sales data is heavily right-skewed (non-normal distribution).
    * **Boxplots:** Visually confirmed the presence of extreme high-value outliers.
3.  **Outlier Handling:**
    * Calculated IQR limits.
    * Flagged outliers in a new column `is_outlier`.
    * Applied **Capping** to limit extreme values without removing records.
4.  **Correlation Analysis:**
    * Generated a Heatmap to show relationships.
    * Found that **Discount** negatively impacts **Profit** (Correlation: -0.22).

## 📂 Files Included
* `task10_eda.ipynb` – The Jupyter Notebook with all analysis code.
* `cleaned_dataset.csv` – The processed dataset with capped outliers.
* `eda_findings.txt` – Summary of statistical insights.

---

# 🧪 Task 11: A/B Testing & Hypothesis Testing in Python
**Internship:** Elevate Labs | **Domain:** Data Analytics  
**Project:** Marketing Campaign Analysis (Control vs. Test)

## 📝 Overview
This task involved conducting a statistical **A/B Test** to evaluate the performance of a new marketing ad campaign. Using Python, I generated a dataset, calculated key metrics (Conversion Rate), and performed a **Chi-Square Hypothesis Test** to determine statistical significance.

## 🛠 Tools & Statistical Methods
* **Libraries:** `pandas`, `numpy`, `scipy.stats`, `seaborn`
* **Test Used:** **Chi-Square Test of Independence** (to compare categorical conversion rates).
* **Metrics:** P-Value, Confidence Intervals (95%), Conversion Rate.

## 🔬 Experiment Details
* **Control Group (A):** Shown the standard "Old Ad".
* **Test Group (B):** Shown the "New Ad".
* **Sample Size:** 2,000 users (1,000 per group).
* **Significance Level ($\alpha$):** 0.05 (5%).

## 📊 Findings
1.  **Conversion Rates:**
    * Group A (Control): **9.8%**
    * Group B (Test): **13.5%**
2.  **Statistical Result:**
    * **P-Value:** `0.012` (Example)
    * **Conclusion:** Since P-Value < 0.05, we **Reject the Null Hypothesis**.
3.  **Business Recommendation:** The New Ad shows a statistically significant improvement. It is recommended to roll out the New Ad to 100% of users to maximize revenue.

## 📂 Files Included
* `task11_abtest.ipynb` – Python notebook containing data generation and statistical testing.
* `ab_test_summary.csv` – Aggregated performance metrics for both groups.
* `final_recommendation.txt` – The formal decision report.

---

# 🔄 Task 12: Data Transformation with Power Query
**Internship:** Elevate Labs | **Domain:** Data Analytics
**Tool:** Power BI Desktop (Power Query Editor)

## 📝 Overview
Data "wrangling" is often 80% of an analyst's job. In this task, I imported raw sales data into **Power BI** and used **Power Query (M Language)** to clean, shape, and enrich the dataset before visualization. This ensures accuracy and performance in the final dashboard.

## ⚙️ Transformations Applied (ETL Process)
1.  **Data Typing:** Corrected `Postal Code` to text and `Sales` to fixed decimal currency.
2.  **Column Management:** Removed low-value columns (`Row ID`) to optimize model size.
3.  **Text Parsing:** Split `Product ID` to isolate manufacturing codes.
4.  **Conditional Logic:** Created a `Profit Status` segmentation column to flag "Loss Makers" vs "High Profit" orders automatically.
5.  **Calculated Columns:** Engineered `Price Per Unit` to normalize sales data.

## 📊 Visuals Created
* **Profitability Segmentation:** Pie chart showing the ratio of profitable vs. loss-making orders.
* **Unit Price Analysis:** Geographic map showing average unit pricing by state.

## 📂 Files Included
* `task12_transform.pbix` – The Power BI file containing the data model and applied steps.
* `dashboard_export.pdf` – A snapshot of the visuals created from the transformed data.
* `transformation_notes.txt` – Detailed log of the cleaning steps.

---

# 📊 Task 13: Executive KPI Dashboard (Power BI)
**Internship:** Elevate Labs | **Domain:** Data Analytics
**Tool:** Power BI Desktop

## 📝 Overview
The final capstone project focuses on **Data Storytelling**. I built an interactive Executive Dashboard to visualize the sales performance of the Superstore dataset. The report moves from high-level KPIs to granular product details, enabling data-driven decision-making.

## 🏗 Dashboard Structure
* **Headline KPIs:** Immediate view of Total Sales ($2.3M), Profit ($286K), and Margin (12.5%).
* **Trend Analysis:** Time-series line chart to track seasonal sales spikes.
* **Geographic Insights:** Map visualization highlighting strong markets (California/New York) vs. underperforming states.
* **Product Drivers:** Bar charts and Top 10 tables identifying best-selling inventory.

## 🧠 Key Insights
* **Top Category:** Technology (High Volume + High Margin).
* **Problem Area:** Furniture (High Volume but Low Margin).
* **Top Region:** West (Led by California).

## 📂 Files Included
* `dashboard.pbix` – The interactive Power BI file.
* `dashboard_export.pdf` – A static snapshot of the final report.
* `insights_task13.txt` – A summary of business recommendations.

---

# ⚙️ Task 14: ETL Pipeline (Python & SQLite)
**Internship:** Elevate Labs | **Domain:** Data Analytics / Data Engineering  
**Project:** Superstore Data Warehouse Pipeline

## 📝 Overview
This project simulates a real-world **ETL (Extract, Transform, Load)** pipeline. Using Python, I ingested raw sales data, performed data cleaning and normalization, and loaded the structured data into a **SQLite database** to support downstream analytics.

## 🔄 The Pipeline Steps
### 1. Extract (E)
* **Source:** Loaded `SampleSuperstore.csv` (Flat File).
* **Validation:** Verified row counts and checked for file integrity.

### 2. Transform (T)
* **Cleaning:** * Standardized column headers (snake_case).
    * Removed 34 duplicate rows.
    * Imputed missing `postal_code` values.
* **Feature Engineering:**
    * Calculated `profit_margin`.
    * Created `is_high_value` flag for orders > $500.
* **Normalization:** Split the dataset into 3 relational tables:
    * `dim_customers` (Unique Customer profiles)
    * `dim_products` (Product catalog)
    * `fact_orders` (Transactional data)

### 3. Load (L)
* **Target:** Stored final tables in a lightweight relational database (`superstore_dw.sqlite`).
* **Backup:** Exported processed CSVs to a `data/processed/` directory.

## 📂 Files Included
* `task14_etl.ipynb` – The Python script executing the pipeline.
* `superstore_dw.sqlite` – The final database file ready for SQL queries.
* `dim_customers.csv` / `fact_orders.csv` – Processed flat files.

---

# 🎯 Task 15: Customer Segmentation (RFM Analysis)
**Internship:** Elevate Labs | **Domain:** Data Science / Marketing Analytics
**Method:** RFM (Recency, Frequency, Monetary)

## 📝 Overview
To optimize marketing spend, I performed **Customer Segmentation** using the RFM technique. By analyzing customer transaction history, I grouped users into behavioral cohorts (e.g., "Champions", "At Risk") to enable targeted personalization.

## 🛠 Analysis Steps
1.  **Data Preprocessing:** Cleaned invoice data and handled cancellations.
2.  **RFM Calculation:**
    * **Recency:** Days since last purchase.
    * **Frequency:** Total number of transactions.
    * **Monetary:** Total revenue generated.
3.  **Scoring:** Assigned quartiles (1-4) to each metric.
4.  **Segmentation:** Mapped RFM scores to segments using business logic.

## 📊 Key Findings
* **Champions:** 22% of users drive 45% of revenue.
* **At Risk:** A significant portion of customers haven't purchased in 90+ days, requiring immediate re-engagement.

## 📂 Files Included
* `task15_rfm.ipynb` – Python notebook with full analysis code.
* `rfm_segments.csv` – Final dataset with Customer IDs and assigned segments.
* `segment_actions.txt` – Strategic recommendations for each group.

---
*Submitted by: Kalai Magal*
