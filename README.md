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

*Submitted by: Kalai Magal*
