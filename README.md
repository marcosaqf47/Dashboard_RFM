# 🎯 Customer Segmentation Analysis - RFM Model

![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square)
![Power BI](https://img.shields.io/badge/Power%20BI-Desktop-yellow?style=flat-square)
![RFM Model](https://img.shields.io/badge/Model-RFM-blue?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

> **Customer Segmentation Analysis using the RFM Model (Recency, Frequency, Monetary) in Microsoft Power BI Desktop**

---

## 📊 Overview

This project implements an **interactive dashboard** for customer segmentation based on the **RFM model**, enabling the identification of behavioral patterns and guiding strategies for retention, upsell, and reactivation.

**Developed in:** Microsoft Power BI Desktop  
**Creation Date:** November 1st, 2026  
**Version:** 1.0  
**Status:** ✅ Ready for Presentation

---

## 🎯 Objective

Segment the customer base into 4 strategic groups (Champions, VIP Customers, Loyal, At Risk) to guide marketing and sales actions based on purchase behavior.

---

## 📈 Key Metrics

| Metric | Value | Description |
|--------|-------|-----------|
| **Total Customers** | 4,000 | Total number of customers analyzed |
| **Total Revenue** | R$ 8.91M | Total revenue generated |
| **Avg Recency** | 92.54 days | Average days since last purchase |
| **Avg Frequency** | 91.72 | Average number of purchases per customer |

---

## 🔍 Customer Segments

### 🏆 Champions (Red #FF6B6B)
- **Quantity:** 4 customers
- **Recency:** 2 days (very recent)
- **Frequency:** 5,807 purchases (very high)
- **Monetary Value:** R$ 70,925 (very high)
- **Action:** Priority retention, exclusive VIP Program

### 💎 VIP Customers (Gold #FFD93D)
- **Quantity:** 6 customers
- **Recency:** 7.67 days (recent)
- **Frequency:** 826.83 purchases (high)
- **Monetary Value:** R$ 190,863 (very high)
- **Action:** Exclusive benefits, personalized service

### 💚 Loyal (Green #6BCB77)
- **Quantity:** 3,248 customers (74.87% of base)
- **Recency:** 41.34 days (moderate)
- **Frequency:** 104.58 purchases (moderate)
- **Monetary Value:** R$ 2,091 (moderate)
- **Action:** Cross-sell, upsell, loyalty programs

### ⚠️ At Risk (Blue #4D96FF)
- **Quantity:** 1,080 customers (24.9% of base)
- **Recency:** 247.31 days (very high - inactive)
- **Frequency:** 27.79 purchases (low)
- **Monetary Value:** R$ 637 (low)
- **Action:** Reactivation campaigns, special offers

---

## 📊 Dashboard Components

### 1️⃣ KPI Cards (Top)
Display the 4 main metrics with professional formatting:
- Values in compact scale (K, M)
- Soft shadows for depth
- Clear gray borders

### 2️⃣ Pie Chart
**Customer Distribution by Segment (%)**
- Percentage distribution of customers by segment
- Labels with values and percentages
- Interactive legend

### 3️⃣ Bar Chart
**Revenue by Segment**
- Total revenue per segment in millions
- External labels for easy reading
- Y-axis in millions scale

### 4️⃣ Scatter Plot
**RFM Analysis (Recency vs Frequency)**
- X-axis: Recency (days)
- Y-axis: Frequency (purchases)
- Bubble size: Proportional to Monetary value
- Identifies behavioral clusters

### 5️⃣ Characteristics Table
**Segment Characteristics**
- Statistical summary per segment
- Corporate blue header
- Alternating rows for readability

### 6️⃣ Interactive Filters
- **Segment:** Selection by segment
- **Recency:** Slider for day range
- **Monetary:** Slider for value range
- Automatic cross-filtering across all charts

---

## 🎨 Color Palette

| Segment | Hex Code | Usage |
|---------|----------|-------|
| Champions | `#FF6B6B` | Coral Red |
| VIP Customers | `#FFD93D` | Gold Yellow |
| Loyal | `#6BCB77` | Emerald Green |
| At Risk | `#4D96FF` | Vivid Blue |
| Titles | `#2C3E50` | Dark Gray |
| Table Header | `#0066CC` | Corporate Blue |
| Borders | `#E0E0E0` | Light Gray |

---

## 🚀 How to Use

### Prerequisites
- ✅ Microsoft Power BI Desktop (version 2024 or later)
- ✅ `Dashboard_RFM.pbix` file
- ✅ `customers_segmented.csv` file

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/marcosaqf47/Dashboard_RFM
   cd Dashboard_RFM
