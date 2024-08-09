CREATE DATABASE transactions

USE transactions;

-- 1. Total Number of Transactions
SELECT COUNT(*) AS TotalTransactions
FROM transactions;

-- 2. Total Amount Transacted
SELECT SUM(Amount) AS TotalAmount
FROM transactions;

-- 3. Count of Each Status
SELECT Status, COUNT(*) AS Count
FROM transactions
GROUP BY Status;

-- 4. Average Transaction Amount
SELECT AVG(Amount) AS AverageAmount
FROM transactions;

-- 5. Minimum and Maximum Transaction Amount
SELECT MIN(Amount) AS MinAmount, MAX(Amount) AS MaxAmount
FROM transactions;

-- 6. Total Transactions per Status
SELECT Status, COUNT(*) AS TransactionsPerStatus
FROM transactions
GROUP BY Status;

-- 7. Total Amount per Status
SELECT Status, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Status;

-- 8. Total Transactions per Sender
SELECT Sender_Name, COUNT(*) AS TotalTransactions
FROM transactions
GROUP BY Sender_Name;

-- 9. Total Amount Transacted by Each Sender
SELECT Sender_Name, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Sender_Name;

-- 10. Total Transactions per Receiver
SELECT Receiver_Name, COUNT(*) AS TotalTransactions
FROM transactions
GROUP BY Receiver_Name;

-- 11. Top 5 Senders by Total Amount Transacted
SELECT Sender_Name, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Sender_Name
ORDER BY TotalAmount DESC
LIMIT 5;

-- 12. Top 5 Receivers by Total Amount Received
SELECT Receiver_Name, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Receiver_Name
ORDER BY TotalAmount DESC
LIMIT 5;

-- 13. Average Transaction Amount per Status
SELECT Status, AVG(Amount) AS AverageAmount
FROM transactions
GROUP BY Status;

-- 14. Total Transactions and Amount by Year
SELECT EXTRACT(YEAR FROM Timestamp) AS Year, COUNT(*) AS TotalTransactions, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Year
ORDER BY Year;

-- 15. Correlation Between Transaction Amount and Frequency
SELECT Sender_Name, COUNT(*) AS TransactionCount, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Sender_Name
HAVING COUNT(*) > 1;

-- 16. Top 10 Sender-Receiver Pairs by Total Amount Transacted
SELECT Sender_Name, Receiver_Name, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Sender_Name, Receiver_Name
ORDER BY TotalAmount DESC
LIMIT 10;

-- 17. Transaction Amount Variability per Sender
SELECT Sender_Name, STDDEV(Amount) AS AmountVariance
FROM transactions
GROUP BY Sender_Name;

-- 18. High-Value Transactions
SELECT *
FROM transactions
WHERE Amount > (SELECT AVG(Amount) + 2 * STDDEV(Amount) FROM transactions);

-- 19. Time-of-Day Analysis for Transactions
SELECT EXTRACT(HOUR FROM Timestamp) AS Hour, COUNT(*) AS TransactionCount, SUM(Amount) AS TotalAmount
FROM transactions
GROUP BY Hour
ORDER BY Hour;

-- 20. Impact of Transaction Status on Amount
SELECT Status, AVG(Amount) AS AverageAmount, MAX(Amount) AS MaxAmount
FROM transactions
GROUP BY Status;

