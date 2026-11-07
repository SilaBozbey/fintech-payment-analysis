PayFlow | Fintech Payment Analysis

Project Overview

This project analyzes payment transaction data from a fictional fintech platform called PayFlow.

The goal is to explore payment performance, identify patterns in failed transactions, and translate analytical findings into actionable business recommendations.

Business Problem

PayFlow wants to understand:

How successful are payment attempts?

Which payment methods have higher failure rates?

What are the most common failure reasons?

How does transaction volume differ across payment methods and categories?

Which areas should be investigated further?

Dataset

The dataset contains 1,200 synthetic payment transactions from January to June 2026. Each row represents one payment attempt.

The dataset includes transaction dates, payment methods, transaction amounts, transaction statuses, customer segments, merchant categories, and failure reasons. The data was created for educational purposes.

Tools

Microsoft Excel

PostgreSQL / SQLiteOnline

Google Sheets

Looker Studio

GitHub

Business Questions

How many transactions are recorded?

How are transactions distributed by status?

What is the average successful transaction amount?

Which payment method has the highest successful transaction volume?

What are the most common failure reasons?

Which customer segment has the highest average transaction amount?

How does successful transaction volume differ by merchant category?

Which city generates the highest successful transaction volume?

Analysis Process

1. Data Exploration

Explored the dataset using Excel to understand its structure, identify missing values, and define key performance metrics.

2. SQL Analysis

Used SQL to answer key business questions through filtering, aggregation, grouping, and sorting (sql/payment_analysis.sql).

3. Data Visualization

Created an interactive Looker Studio dashboard to visualize transaction performance and category comparisons.

4. Business Interpretation

Translated analytical results into findings, insights, and recommendations (insights/insights_and_recommendations.md).

Dashboard

📄 View Payment Performance Dashboard (PDF)

🔗 Live Looker Studio Dashboard

Key Insights

Payment Method Performance

Bank Transfer recorded a failure rate of 10.78%, the highest among the available payment methods.

Failure Reason Distribution

Insufficient Funds accounted for 38.71% of failed transactions (24 out of 62 failures).

Merchant Category Performance

Travel generated higher successful transaction volume (approx. 894,676.99 TRY), while Grocery recorded higher successful transaction frequency (241 transactions).

Recommendations

Investigate Bank Transfer failure reasons and user flows.

Review customer-facing payment error messages regarding insufficient funds.

Evaluate transaction count and monetary volume together when assessing category performance.

Monitor payment performance over time.

Conclusion

This project demonstrates the process of transforming raw payment data into business insights.

By combining data exploration, SQL analysis, dashboard development, and storytelling, the analysis identifies areas for further investigation and potential optimization.

Project Structure

data/ — Source dataset (payment_transactions.csv)

sql/ — SQL queries (payment_analysis.sql)

dashboard/ — Dashboard document (PayFlow_-_Payment_Transactions_Dashboard.pdf)

insights/ — Findings, insights, and recommendations (insights_and_recommendations.md)
