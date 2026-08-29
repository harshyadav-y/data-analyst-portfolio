# 📊 E-Commerce & Retail Sales Analysis

An end-to-end data analytics project combining **Python (Pandas)**, **SQL**, **Power BI**, and **Excel** to analyze transactional sales data, customer behavior, and pricing strategies.

---

## 📌 Project Overview
This project processes raw e-commerce sales datasets across product hierarchies and customer transactions to identify key revenue drivers, assess discount impact, and evaluate customer loyalty performance.

### Key Objectives:
* Analyze net revenue, order volumes, and average transaction values.
* Segment performance across product categories and sub-categories.
* Evaluate customer contribution based on **Loyalty Member Status**.
* Measure the business impact of pricing and discount strategies.

---

## 🛠️ Tools & Technologies
| Tool / Language | Purpose & Application |
| :--- | :--- |
| **Python (Jupyter)** | Exploratory Data Analysis (EDA), data cleaning, data type conversion, and distribution analysis (`Pandas`, `Matplotlib`). |
| **SQL Server** | Complex data querying, multi-table joins (`INNER JOIN`), aggregation, CTEs, and ranking using window functions (`RANK()`). |
| **Power BI** | Interactive dashboard development, data modeling, DAX measures, KPI cards, and dynamic slicers. |
| **Microsoft Excel** | Initial data inspection, formula validation (`VLOOKUP`, `SUMIF`), and quick summaries using Pivot Tables. |

---

## 📂 Project Structure
```text
├── retail_analysis_project.ipynb         # Python notebook for EDA & Data Preprocessing
├── sql analysis.sql                       # Queries for data aggregation & ranking
├── power bi dashboard.pbix                # Dynamic Power BI dashboard file
├── excel_analysis.xlsx                    # Data validation & Pivot Table summaries
├── E_Commerce_Data_Analysis_Presentation  # Project summary slides (PPTX)
└── README.md                              # Documentation

Analytical Workflow & Insights
1. Data Cleaning & Python EDA
Handled missing values and verified data types across transaction timestamps and numeric columns.

Examined customer segmentation to analyze spending habits between member and non-member accounts.

2. SQL Querying & Business Logic
Joined relational tables (Product_Details, Product_Sales, Product_Hierarchy) to build an analysis-ready structure.

Utilized CTEs and Window Functions (RANK() OVER) to identify top-performing SKUs by net revenue within each product category.

3. Power BI Dashboard Development
Designed interactive KPI cards tracking Net Revenue, Average Order Value (AOV), and Average Price.

Implemented DAX measures to calculate discount impact percentages across different customer tiers.

💡 Key Findings
Loyalty Members Contribution: Loyalty members generate over 60% of total revenue, making member conversion a primary revenue driver.

Discount Sensitivity: High discount rates on lower-margin Skews reduced overall profitability without significantly driving unit volume.

Category Balance: Revenue distribution across Men's and Women's product lines remains balanced, though Men's products carry a higher average unit price.

🚀 Recommendations
Targeted Loyalty Conversion: Implement a post-checkout incentive to convert non-member buyers into loyalty members.

Discount Optimisation: Restructure promotional discounts to protect margins on low-priced items while offering tiered rewards on high-value orders.

Cross-Selling Opportunities: Bundle complementary items from different product hierarchies based on member purchase frequency.

👨‍💻 Author
Harsh Yadav
Give this repository a ⭐ on GitHub.
