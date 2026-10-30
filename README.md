# Superstore Sales Analysis

## Project Overview

This project is an end-to-end sales analysis using the Superstore dataset.

The main goal of this project is to analyze sales performance, profitability, customer orders, product performance, and regional sales.

This project uses Microsoft Excel, PostgreSQL, and Microsoft Power BI to explore data, find business insights, and create recommendations based on the analysis results.

## Tools & Technologies

- **Microsoft Excel** – Data exploration and analysis
- **PostgreSQL** – Data querying and analysis using SQL
- **Microsoft Power BI** – Data visualization and interactive dashboard

## Dataset

This project uses the Superstore Sales Dataset from Kaggle.

- **Source:** [Superstore Sales Dataset – Kaggle](https://www.kaggle.com/datasets/himanshuuike/superstore-sales-dataset)
- **License:** CC0 1.0 Universal (as listed on the dataset page)
- **Format:** CSV

The raw dataset is not included in this repository. Please download it from the original source before reproducing the analysis.

## Project Workflow

### 1. Excel Analysis

- Explore and understand the dataset.
- Analyze sales and profit performance.
- Review important data patterns and trends.

### 2. SQL Analysis

Use PostgreSQL to analyze the dataset through SQL queries, including:

- Basic data exploration and aggregation.
- Sales and profit analysis by category and region.
- Top and lowest-performing products.
- Profitability analysis.
- Customer analysis.
- Data joining using INNER JOIN and LEFT JOIN.
- Sales analysis based on discount.

### 3. Power BI Dashboard

Create an interactive dashboard using Power BI.

The dashboard includes:

- Data preparation using Power Query.
- Data analysis using DAX measures.
- KPI cards to display key business metrics.
- Interactive filters to explore sales performance.
- Charts to compare sales trends, categories, and regions.
- A product performance table.

## Dashboard Preview

![Superstore Sales Dashboard](images/dashboard-preview.png)

## Key Performance Indicators (KPIs)

The dashboard includes the following KPIs:

- **Total Sales**
- **Total Profit**
- **Total Orders**
- **Average Order Value (AOV)**
- **Total Quantity**

## Key Business Insights

### 1. Sales Performance

Sales decreased by 4.26% in 2024 compared to 2023. However, sales increased by 29.80% in 2025 and continued to grow by 21.44% in 2026 compared to 2025.

The highest annual sales during the analyzed period occurred in 2026, with total sales of **$745,574.44**.

This shows that sales performance did not always increase every year. The decline in 2024 needs further analysis to understand the factors related to the decrease in sales.

### 2. Category Performance

Technology had the highest total sales, with **$839,893.35**, while Furniture had the lowest total sales, with **$754,747.94**.

The sales difference between these two categories was **$85,145.41**.

This shows that Technology performed better in total sales than Furniture. Further analysis is needed to understand the factors behind Technology's performance and identify opportunities to improve Furniture sales.

### 3. Regional Performance

The West region had the highest total sales, with **$739,813.71**, followed by:

- East: **$691,828.25**
- Central: **$503,170.66**
- South: **$391,721.90**

The South region had the lowest total sales among all regions.

This shows a difference in sales performance across regions. The West region can be used as a comparison to understand the factors that support higher sales performance.

### 4. Product Performance

Products with higher average discounts do not always generate the largest losses.

For example, Eureka Disposable had an average discount of **80%** and a total profit of **-$4.47**. Meanwhile, Brother MFC had a lower average discount of **70%**, but generated a larger loss of **-$319.19**.

This indicates that discount percentage alone may not explain product losses. Other factors, such as sales and quantity sold, also need to be analyzed.

### 5. Profitability Analysis

High sales do not always result in high profit.

Canon image had the highest total sales of **$35,699.90** and also generated the highest total profit of **$15,679.96**.

However, Martin Yale had the second-highest total sales of **$11,825.91**, but generated a loss of **-$1,232.56**.

This shows that high sales do not always guarantee positive profit. Further analysis of quantity sold and discount levels is needed to understand the factors behind the loss.

## Business Recommendations

Based on the business insights, the following recommendations can be considered:

### 1. Improve Sales Performance

Analyze sales trends in 2024 by reviewing quantity sold, product discounts, and product performance.

This can help identify factors related to the sales decrease compared to 2023.

### 2. Improve Category Performance

Study the sales strategy and performance of the Technology category, including sales, quantity, discounts, and regional distribution.

Use these findings to identify opportunities to improve Furniture sales while maintaining the performance of Technology.

### 3. Improve Regional Performance

Use the West region as a reference to evaluate sales, quantity, discounts, categories, and sub-categories.

These findings can help identify opportunities to improve sales performance in the South, Central, and East regions.

### 4. Evaluate Product Discounts

Analyze product sales, quantity sold, and profit together with average discount levels.

This can help provide a better understanding of why some products generate larger losses than others.

### 5. Improve Product Profitability

Review quantity sold and discount levels for products with high sales but negative profit, such as Martin Yale.

This analysis can help identify opportunities to improve profitability without focusing only on increasing sales.

## Repository Structure

```text
superstore-sales-analysis/
│
├── README.md
│
├── excel/
│   └── 01_Superstore_Excel_Analysis.xlsx
│
├── sql/
│   └── 02_Superstore_SQL_Analysis.sql
│
├── power-bi/
│   └── 03_Superstore_Dashboard.pbix
│
└── images/
    └── dashboard-preview.png
```

## Project Objective

This project demonstrates practical skills in data analysis, SQL querying, data visualization, and business intelligence.

It also demonstrates the ability to analyze business performance, identify patterns in data, and provide recommendations based on analytical findings.
