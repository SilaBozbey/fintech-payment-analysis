-- PAYFLOW | FINTECH PAYMENT ANALYSIS
-- SQL BUSINESS QUESTIONS


-- BQ1: PayFlow veri setinde toplam kaç işlem bulunmaktadır?

SELECT
    COUNT(*) AS total_transactions
FROM payment_transactions;


-- BQ2: Başarılı işlemlerin ortalama işlem tutarı nedir?

SELECT
    AVG(transaction_amount)
        AS average_successful_amount
FROM payment_transactions
WHERE transaction_status = 'Successful';


-- BQ3: İşlem sayısı işlem durumlarına göre nasıl dağılıyor?

SELECT
    transaction_status,
    COUNT(*) AS transaction_count
FROM payment_transactions
GROUP BY transaction_status
ORDER BY transaction_count DESC;


-- BQ4: Başarılı işlemlerde hangi ödeme yöntemi en yüksek işlem hacmini oluşturuyor?

SELECT
    payment_method,
    COUNT(*) AS successful_transaction_count,
    SUM(transaction_amount)
        AS successful_transaction_volume
FROM payment_transactions
WHERE transaction_status = 'Successful'
GROUP BY payment_method
ORDER BY successful_transaction_volume DESC;


-- BQ5: Hangi müşteri segmenti en yüksek ortalama işlem tutarına sahip?

SELECT
    customer_segment,
    COUNT(*) AS transaction_count,
    AVG(transaction_amount)
        AS average_transaction_amount
FROM payment_transactions
GROUP BY customer_segment
ORDER BY average_transaction_amount DESC;


-- BQ6: Başarısız işlemlerde en sık görülen hata nedeni nedir?

SELECT
    failure_reason,
    COUNT(*) AS failure_count
FROM payment_transactions
WHERE transaction_status = 'Failed'
GROUP BY failure_reason
ORDER BY failure_count DESC,
         failure_reason ASC;


-- BQ7: Başarılı işlemlerde hangi şehir en yüksek işlem hacmini oluşturuyor?

SELECT
    city,
    COUNT(*) AS successful_transaction_count,
    SUM(transaction_amount)
        AS successful_transaction_volume
FROM payment_transactions
WHERE transaction_status = 'Successful'
GROUP BY city
ORDER BY successful_transaction_volume DESC;


-- BQ8: En yüksek tutarlı 10 işlem hangileridir?

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
