# Customer Analytics | Business Intelligence & Strategic Insights

**An End-to-End Restaurant Analytics Portfolio Project**

**Tech Stack:** PostgreSQL · SQL · Power BI · DAX · Data Modeling · RFM Analysis

## 1. Project Overview

This project demonstrates an end-to-end business intelligence workflow designed to support data-driven decision-making in the restaurant industry.

Using PostgreSQL for data preparation and analytical modeling, and Power BI for visualization and performance monitoring, the project examines five interconnected business areas:

- Executive and sales performance
- Product and category performance
- Customer behavior and retention
- RFM-based customer segmentation
- Pricing and competitive intelligence

The primary objective is to move beyond descriptive dashboards and translate analytical findings into practical business recommendations.

**Analysis Period:** January–December 2025

## 2. Business Problem

Restaurant operators must manage multiple challenges simultaneously: revenue growth, customer retention, product profitability, pricing decisions, sales channel performance, and competitive positioning.

Without an integrated analytical framework, these decisions can become fragmented.

This project addresses the central business question:

**How can a restaurant use operational, customer, pricing, and competitor data to improve commercial performance and make more informed strategic decisions?**

## 3. Executive Performance Snapshot

| Key Performance Indicator | Result |
|---|---:|
| Total Revenue | ₺15.82M |
| Completed Orders | 31,191 |
| Unique Customers | 4,932 |
| December Active Customers | 1,874 |
| December Revenue Growth (MoM) | +9.1% |
| December Order Growth (MoM) | +7.5% |
| December Active Customer Growth (MoM) | +5.3% |

*Annual totals and latest-month performance indicators are presented separately to maintain a consistent interpretation of reporting periods.*

## 4. Analytical Framework

### Executive Overview

Evaluates overall commercial performance through revenue, orders, business targets, sales platforms, and product categories.

**Business decision:** Identify growth drivers and prioritize commercial improvement opportunities.

### Product & Category Analysis

Examines category revenue contribution, product demand, order volume, and product pricing relative to an inflation-adjusted benchmark.

**Business decision:** Support product portfolio optimization and evidence-based pricing reviews.

### Customer Analysis

Investigates active customers, new and returning customers, purchase frequency, revenue per customer, and geographic distribution.

**Business decision:** Improve customer engagement and retention strategies.

### Customer Segmentation

Applies Recency, Frequency, and Monetary (RFM) analysis to classify customers into behavioral segments, including Champions, Loyal Customers, At Risk, Potential Loyalists, and Hibernating Customers.

**Business decision:** Develop differentiated customer engagement, loyalty, and reactivation strategies.

### Competitive Intelligence

Compares competitor ratings, product satisfaction, rating momentum, and customer experience indicators.

**Business decision:** Identify competitive strengths, service gaps, and opportunities for differentiation.

## 5. Selected Analytical Findings

### Customer Value Concentration

The Champions segment contributes approximately **₺8.47M**, representing around **53.6% of total revenue**.

This highlights the importance of high-value customer relationships and the potential commercial impact of customer retention.

### Pricing vs. Inflation

For a consistently tracked set of 44 products, the average listed product price reached **₺225.34** by December, compared with an inflation-adjusted benchmark of **₺221.36**.

The difference indicates that year-end average listed prices were approximately **1.8% above the CPI-adjusted benchmark**.

This is a pricing comparison, not a direct measure of profitability or realized selling prices.

### Competitive Positioning

The restaurant's overall customer experience score is **4.35**, compared with **4.45** for Competitor B.

However, its taste score of **4.47** exceeds Competitor B's **4.21**, suggesting a potential product-quality advantage alongside opportunities to improve other elements of the customer experience.

## 6. Strategic Recommendations

| Priority | Recommendation | Business Rationale |
|---|---|---|
| High | Develop retention programs for high-value customers | Protect revenue associated with the Champions segment |
| High | Establish targeted reactivation campaigns | Address potential revenue loss among At Risk and Hibernating customers |
| Medium | Review product pricing against inflation and demand | Support consistent, evidence-based pricing decisions |
| Medium | Investigate customer experience gaps | Strengthen competitive positioning beyond product taste |
| Medium | Monitor platform performance and commission exposure | Improve visibility into channel-level commercial efficiency |

These recommendations are analytical proposals. Their financial impact would require further validation through operational data, cost analysis, or controlled testing.

## 7. Technical Implementation

**PostgreSQL and SQL**

- Relational data preparation and analytical queries
- Sales and customer performance calculations
- Time-based comparisons
- Product price history and inflation benchmark analysis

**Power BI and DAX**

- Data modeling and relationship management
- KPI calculations and time intelligence
- Customer behavior and RFM analysis
- Interactive business intelligence reporting
- Competitive benchmarking visualizations

## 8. Repository Structure

```text
customer_analytics/
├── README.md
├── dashboard/
│   ├── customer_analysis.pbix
│   └── costumer_analytics.pdf
├── screenshots/
│   └── SQL analysis scripts
└── sql/
    └── CSV datasets
```

## Dashboard Preview

The Power BI dashboard consists of five analytical pages, providing an integrated view of restaurant business performance, customer behavior, pricing, and competitive positioning.

### 1. Executive Overview

A consolidated view of revenue, order performance, business targets, sales channels, and product categories.

![Executive Overview](screenshots/1_Executive%20Overview.png)

### 2. Product & Category Analysis

Analysis of product demand, category performance, sales trends, and pricing relative to inflation benchmarks.

![Product and Category Analysis](screenshots/2_Product%26Category.png)

### 3. Customer Analysis

Customer activity, acquisition, retention, purchasing frequency, and geographic distribution.

![Customer Analysis](screenshots/3_Customer%20Analysis.png)

### 4. Customer Segmentation

RFM-based customer segmentation, revenue contribution, customer value, and geographic distribution.

![Customer Segmentation](screenshots/4_Customer%20Segmentation.png)

### 5. Competitive Intelligence

Competitor ratings, customer experience metrics, product satisfaction, and rating momentum.

![Competitive Intelligence](screenshots/5_Competitive%20Intelligence.png)

## Full Report & Power BI Project

For a detailed view of the analysis, explore the complete report or download the Power BI project.

- **[View Full Analytics Report (PDF)](dashboard/costumer_analytics.pdf)**
- **[Download Power BI Project (.pbix)](dashboard/customer_analysis.pbix)**

## 10. Data & Limitations

This portfolio project uses simulated business data for analytical demonstration. Findings illustrate analytical methods and potential business decisions rather than verified outcomes from a real restaurant operation.

The pricing benchmark uses general consumer price inflation and average listed product prices. It does not directly account for ingredient costs, product mix, discounts, or profit margins.

Competitive ratings and customer segmentation results should be interpreted within the scope of the underlying demonstration dataset.

## 11. Project Outcome

This project demonstrates the ability to connect data engineering, analytical modeling, business intelligence, and strategic interpretation within a single workflow.

The central deliverable is not only an interactive dashboard, but also an analytical foundation for identifying business problems, evaluating evidence, and proposing measurable actions.