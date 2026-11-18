-- PAYFLOW | FINTECH PAYMENT ANALYSIS
-- SQL BUSINESS QUESTIONS


-- BQ1: How many total transactions are there in the PayFlow dataset?

SELECT
    COUNT(*) AS total_transactions
FROM payment_transactions;


-- BQ2: What is the average transaction amount for successful transactions?

SELECT
    AVG(transaction_amount)
        AS average_successful_amount
FROM payment_transactions
WHERE transaction_status = 'Successful';


-- BQ3: How is the transaction count distributed across transaction statuses?

SELECT
    transaction_status,
    COUNT(*) AS transaction_count
FROM payment_transactions
GROUP BY transaction_status
ORDER BY transaction_count DESC;


-- BQ4: Which payment method generates the highest transaction volume in successful transactions?

SELECT
    payment_method,
    COUNT(*) AS successful_transaction_count,
    SUM(transaction_amount)
        AS successful_transaction_volume
FROM payment_transactions
WHERE transaction_status = 'Successful'
GROUP BY payment_method
ORDER BY successful_transaction_volume DESC;


-- BQ5: Which customer segment has the highest average transaction amount?

SELECT
    customer_segment,
    COUNT(*) AS transaction_count,
    AVG(transaction_amount)
        AS average_transaction_amount
FROM payment_transactions
GROUP BY customer_segment
ORDER BY average_transaction_amount DESC;


-- BQ6: What is the most common failure reason in failed transactions?

SELECT
    failure_reason,
    COUNT(*) AS failure_count
FROM payment_transactions
WHERE transaction_status = 'Failed'
GROUP BY failure_reason
ORDER BY failure_count DESC,
         failure_reason ASC;


-- BQ7: Which city generates the highest transaction volume in successful transactions?

SELECT
    city,
    COUNT(*) AS successful_transaction_count,
    SUM(transaction_amount)
        AS successful_transaction_volume
FROM payment_transactions
WHERE transaction_status = 'Successful'
GROUP BY city
ORDER BY successful_transaction_volume DESC;


-- BQ8: What are the top 10 transactions by amount?

SELECT
    transaction_id,
    transaction_date,
    customer_id,
    merchant_category,
    transaction_status,
    payment_method,
    transaction_amount
FROM payment_transactions
ORDER BY transaction_amount DESC
LIMIT 10;


-- Bonus Question 1: How do transaction counts and volumes compare across merchant categories in successful transactions?

SELECT merchant_category,
        COUNT(*) AS successful_transaction_count,
        SUM(transaction_amount) AS successful_transaction_volume
FROM payment_transactions
WHERE transaction_status = 'Successful'
GROUP BY merchant_category
ORDER BY successful_transaction_volume DESC;


-- Bonus Question 2: What are the top 5 transactions with the highest amounts among transactions greater than 1,000?

SELECT  transaction_id,
        transaction_date,
        customer_id,
        merchant_category,
        payment_method,
        transaction_status,
        transaction_amount
FROM payment_transactions
WHERE transaction_amount > 1000
ORDER BY transaction_amount DESC
LIMIT 5;
