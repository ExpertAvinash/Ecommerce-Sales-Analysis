# 📊 E-Commerce Sales Analysis Project

## 🚀 Project Overview

This project focuses on analyzing an E-commerce dataset to uncover key business insights related to sales, profitability, customer behavior, and regional performance.
The analysis is performed using **Python (Pandas, Matplotlib)** and **SQL (Relational Database Design & Queries)**.

---

## 🎯 Objectives

* Analyze sales and profit performance across regions and categories
* Identify loss-making products and root causes
* Understand customer contribution and behavior
* Evaluate the impact of discount strategies on profitability
* Provide data-driven business recommendations

---

## 🧱 Project Structure

```
├── data
│   ├── raw                # Original dataset
│   ├── processed          # Cleaned & transformed datasets
│
├── sql
│   ├── table_creation.sql     # SQL schema (normalized tables)
│   ├── superstore_analysis.sql # Analysis queries
│
├── notebook
│   ├── data_creation.ipynb     # Data preprocessing & transformation
│   ├── superstore_analysis.ipynb # EDA & insights
```

---

## 🔄 Workflow (ETL Pipeline)

1. **Extract**

   * Raw dataset loaded into Python

2. **Transform**

   * Data cleaning (missing values, duplicates, formatting)
   * Feature engineering (profit margin, delivery days)
   * Dataset normalization into multiple tables

3. **Load**

   * Exported processed data into CSV
   * Loaded into SQL tables

4. **Analyze**

   * Performed SQL queries for business insights
   * Conducted exploratory data analysis using Python

---

## 🗄️ Database Design

The dataset was normalized into the following tables:

* **Customers** → customer details
* **Products** → product information
* **Locations** → geographical data
* **Shipping** → shipping details
* **Orders (Fact Table)** → transactional data

This structure improves query efficiency and reduces redundancy.

---

## 📊 Key Insights

* 🌍 **Central region** generates the highest sales but not the highest profitability
* 📦 **Furniture category** is the primary loss-making segment
* ❌ **Tables and Bookcases** contribute significantly to losses
* 💸 High discounts (~45%) are strongly associated with losses
* 👤 Top 10% customers contribute ~31% of total revenue
* ⚠️ Losses are driven by pricing strategy rather than customer behavior

---

## 💼 Business Recommendations

* Reduce excessive discounting in loss-making categories
* Optimize pricing strategy for Furniture products
* Implement region-specific pricing strategies
* Focus on high-margin product categories
* Introduce controls on high-discount transactions
* Retain high-value customers through loyalty programs

---

## 🛠️ Tech Stack

* **Python** → Pandas, Matplotlib
* **SQL** → Data modeling, joins, aggregation
* **Jupyter Notebook** → Analysis & visualization
* **GitHub** → Version control & project showcase

---

## 📌 Key Learnings

* Data cleaning and preprocessing are critical for accurate analysis
* Business insights are more important than just visualizations
* Normalized database design improves SQL performance
* Discount strategies can significantly impact profitability

---

## 🔥 Final Conclusion

> The analysis reveals that the business faces a **pricing and discount optimization problem rather than a demand issue**.

---

## 📬 Contact

If you found this project useful or have feedback, feel free to connect!

---
