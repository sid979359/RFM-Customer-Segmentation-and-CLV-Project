# RFM Customer Segmentation and CLV Project

## Project Overview
This project analyzes an e-commerce dataset to segment customers using **RFM (Recency, Frequency, Monetary) analysis** and estimate **Customer Lifetime Value (CLV)**. The objective is to identify high-value customers and provide insights to support data-driven business decisions.

## Tools Used
- **Python** – Data preprocessing and analysis  
- **SQL (MySQL)** – Data cleaning, joins, and transformations  
- **Power BI** – Dashboard creation and visualization  
- **CSV / Excel** – Data storage

## Dataset
The dataset includes the following tables:

- **customers** – Customer information  
- **orders** – Order details  
- **order_items** – Products purchased in each order  
- **products** – Product information  

These datasets were processed and combined to create a **final dataset used for RFM analysis**.

## Analysis Steps
1. Data preprocessing using **Python**
2. Data cleaning and validation
3. Referential integrity checks between tables
4. Joining customer, orders, order items, and product data
5. Creating aggregated metrics for each customer
6. Calculating **Recency, Frequency, and Monetary values**
7. Generating **RFM scores and customer segments**
8. Estimating **Customer Lifetime Value (CLV)**

## Dashboard Insights
The Power BI dashboard provides insights such as:

- Distribution of customers across RFM segments  
- Revenue contribution by different customer groups  
- Identification of high-value customers  
- Detection of customers at risk of churn  

## Project Structure

data/  
customers_big.csv  
orders_big.csv  
order_items_big.csv  
products_big.csv  
final_dataset.csv  

sql/  
customer.sql  
orders.sql  
order_items.sql  
products.sql  
referential check.sql  

dashboard/  
Customer Segmentation & CLV.pbix  
dashboard.png  

## Key Insights
- High-value customers contribute a large share of revenue  
- Loyal customers have higher purchase frequency  
- Some customer segments show risk of churn and require targeted retention strategies

## Conclusion
This project demonstrates how **Python, SQL, and Power BI can be used together for customer analytics**, helping businesses better understand customer behavior and improve marketing strategies.
