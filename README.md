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

*Submitted by: Kalai Magal*
