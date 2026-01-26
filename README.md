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
  
*Submitted by: Kalai Magal*
