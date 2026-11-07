# Insights & Recommendations

## Insight 1 — Payment Method Performance

### Finding

Bank Transfer has the highest failure rate among payment methods, with a failure rate of 10.78%, whereas Credit Card and Debit Card maintain lower relative failure proportions based on total attempts.

### Insight

Although Bank Transfer accounts for a smaller volume of total transaction attempts compared to card payments, its elevated failure rate indicates potential friction or drop-offs in the transfer payment flow that require targeted investigation.

### Recommendation

Investigate the underlying technical and user-experience factors causing failures in Bank Transfer transactions to optimize the payment completion rate.

### Limitation

The dataset lacks granular logs regarding bank-side gateway timeouts or user behavior post-failure, preventing definitive identification of the root cause.

## Insight 2 — Failure Reason Analysis

### Finding

Insufficient Funds is the most dominant failure reason, accounting for 24 out of the 62 total failed transactions, which represents approximately 38.71% of all failures.

### Insight

A major portion of transaction failures stems from user-side financial limitations rather than technical system errors. This highlights an opportunity to improve customer guidance when a payment cannot be processed.

### Recommendation

Review customer-facing error messages for insufficient funds and provide alternative suggestions, such as selecting a different payment method or topping up digital wallets.

### Limitation

The dataset does not track whether users successfully retried the transaction using a different card or method after encountering an insufficient funds error.

## Insight 3 — Merchant Category Volume vs. Frequency

### Finding

Travel generated the highest successful transaction volume (approx. 894,676.99 TRY) driven by high-value ticket sizes, despite having fewer successful transactions (110) compared to categories like Grocery, which recorded 241 successful transactions with a much lower total monetary volume (144,695.20 TRY).

### Insight

Monetary transaction volume and transaction frequency (count) behave independently across different merchant categories. High-ticket sectors drive revenue volume, whereas retail/grocery drive platform engagement frequency.

### Recommendation

Evaluate merchant category performance and platform growth strategies by analyzing transaction count, total volume, and average transaction amount in combination rather than relying on a single metric.

### Limitation

The dataset lacks merchant commission rates or profit margins, meaning higher transaction volume does not automatically equate to higher net revenue for PayFlow.
