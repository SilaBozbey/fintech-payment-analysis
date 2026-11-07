# PayFlow | Fintech Payment Analysis

## Project Overview

This project analyzes payment transaction data from a fictional fintech platform called PayFlow. 

The goal is to explore payment performance, identify patterns in failed transactions, and translate analytical findings into actionable business recommendations.

## Business Problem

PayFlow wants to understand:

- How successful are payment attempts?
- Which payment methods have higher failure rates?
- What are the most common failure reasons?
- How does transaction volume differ across payment methods and categories?
- Which areas should be investigated further?

## Dataset

The dataset contains 1,200 synthetic payment transactions from January to June 2026. 

Each row represents one payment attempt, including transaction dates, payment methods, transaction amounts, transaction statuses, customer segments, merchant categories, and failure reasons.

## Tools

- Microsoft Excel
- PostgreSQL / SQLiteOnline
- Google Sheets
- Looker Studio
- GitHub
- Notion

## Business Questions

1. How many transactions are recorded?
2. How are transactions distributed by status?
3. What is the average successful transaction amount?
4. Which payment method has the highest successful transaction volume?
5. What are the most common failure reasons?
6. Which customer segment has the highest average transaction amount?
7. How does successful transaction volume differ by merchant category?
8. Which city generates the highest successful transaction volume?

## Analysis Process

### 1. Data Exploration
Explored the dataset using Excel to understand its structure, identify missing values, and define key performance metrics.

### 2. SQL Analysis
Used SQL to answer business questions through filtering, aggregation, grouping, and sorting (`sql/payment_analysis.sql`).

### 3. Data Visualization
Created an interactive Looker Studio dashboard to visualize transaction performance and category comparisons.

### 4. Business Interpretation
Translated analytical results into findings, insights, and recommendations (`insights/insights_and_recommendations.md`).

## Dashboard

* 📄 **Payment Performance Dashboard (PDF):** [View Payment Performance Dashboard (PDF)](dashboard/PayFlow_-_Payment_Transactions_Dashboard.pdf)
* 🔗 **Live Looker Studio Dashboard:** [View Dashboard](https://datastudio.google.com/reporting/07ce454b-7d4f-42ea-a3c8-71da7b8e829e)

## Key Insights

### Payment Method Performance
Bank Transfer recorded a failure rate of 10.78%, the highest among the available payment methods.

### Failure Reason Distribution
Insufficient Funds accounted for 38.71% of failed transactions.

### Merchant Category Performance
Travel generated higher successful transaction volume, while Grocery had more successful transactions.

## Recommendations

- Investigate Bank Transfer failure reasons and user flows.
- Review customer-facing payment error messages regarding insufficient funds.
- Evaluate transaction count and monetary volume together.
- Monitor payment performance trends over time.

## Conclusion

This project demonstrates the process of transforming raw payment data into business insights. By combining data exploration, SQL analysis, dashboard development, and business storytelling, the analysis identifies areas for further investigation and platform improvement.

## Project Structure

- `data/` — Source dataset (`payment_transactions.csv`)
- `sql/` — SQL queries (`payment_analysis.sql`)
- `dashboard/` — Dashboard preview and PDF (`PayFlow_-_Payment_Transactions_Dashboard.pdf`)
- `insights/` — Findings, insights, and recommendations (`insights_and_recommendations.md`)

---

### 📚 Detailed Documentation

To explore all project phases, SQL scripts, and detailed analysis notes interactively:
👉 [View Notion Project Documentation](Notion_Sayfanin_Paylasim_Linki)
