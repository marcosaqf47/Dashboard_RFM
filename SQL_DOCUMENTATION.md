# 📊 SQL Queries - RFM Analysis Documentation

## Overview
This file contains the SQL queries used to calculate and segment customers 
using the RFM model (Recency, Frequency, Monetary Value) based on real data.

## Data Structure

### Table: customers_segmented
- **CustomerID:** Unique customer identifier
- **Recency:** Days since last purchase
- **Frequency:** Total number of purchases
- **Monetary:** Total amount spent
- **Segment:** RFM Segment (Champions, VIP, Loyal, At Risk)
- **Cluster:** Cluster number

### Table: online_retail
- **InvoiceNo:** Invoice number
- **StockCode:** Product code
- **Description:** Product description
- **Quantity:** Quantity purchased
- **InvoiceDate:** Transaction date
- **UnitPrice:** Unit price
- **CustomerID:** Customer ID
- **Country:** Purchase country

## Available Queries

### Query 1: RFM Metrics (Basic Analysis)
**Objective:** Validate RFM data and calculate individual average ticket

**Output:**
- CustomerID, Recency, Frequency, Monetary
- ticket_medio (Monetary / Frequency)
- classificacao_valor (High/Medium/Low)

**Usage:** Individual customer analysis

---

### Query 2: RFM Segmentation (Distribution)
**Objective:** View customer distribution by segment

**Output:**
- Segment, total_clientes, percentual
- recencia_media, frequencia_media, monetary_medio
- monetary_minimo, monetary_maximo

**SQL Techniques:**
- GROUP BY for aggregation
- COUNT(*) for counting
- Scalar subquery for percentage

**Usage:** Strategic segment overview

---

### Query 3: Monthly Revenue & Growth (Temporal Analysis)
**Objective:** Track monthly revenue and MoM growth

**Output:**
- mes, receita_mes, clientes_ativos, total_invoices
- receita_mes_anterior, crescimento_percentual
- receita_acumulada

**SQL Techniques:**
- CTE (WITH) for modularization
- STRFTIME() for date normalization
- LAG() for accessing previous value
- SUM() OVER for running total

**Usage:** Identify trends and seasonality

---

### Query 4: Customer Behavior by Segment (Detailed Analysis)
**Objective:** Detailed analysis of purchase patterns by segment

**Output:**
- Segment, total_clientes
- recencia_media, frequencia_media, monetary_medio
- invoices_medio, gasto_medio, produtos_unicos_medio
- quantidade_media_geral, preco_medio_geral

**SQL Techniques:**
- LEFT JOIN for table relationship
- CTE for intermediate calculations
- GROUP BY for segment aggregation

**Usage:** Retention and upsell strategies

---

## 🔧 How to Use

### Prerequisites
- SQLite, SQL Server, PostgreSQL or similar
- Tables: customers_segmented and online_retail
- Historical data (minimum 6 months)

### Execute Queries
1. Copy the desired query
2. Paste in your SQL editor (DBeaver, SQL Server Management Studio, etc.)
3. Adjust table/column names if necessary
4. Execute

### Integration with Power BI
1. Import CSVs into Power BI
2. Use Power Query to recreate these analyses
3. Document queries as reference

---

## 💡 Key Insights

- **Top 20% of customers (Champions)** generate **45%+ of revenue**
- **At Risk segment** represents **35% of the base**
- **Reactivation opportunity:** 1,400+ customers
- **MoM Growth:** Variation from -8% to +27%

---

## 🚀 Next Steps

1. Execute Query 1 to validate data
2. Use Query 2 to understand distribution
3. Monitor Query 3 for trends
4. Use Query 4 for retention strategies

---

**Last updated:** November 2026
