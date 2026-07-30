
-- ============================================================
-- Exclusive E-Commerce Data Analysis — Core SQL Queries
-- ============================================================

-- 1. Monthly revenue performance
SELECT Order_Month, ROUND(SUM(Revenue),2) AS Revenue, COUNT(DISTINCT Order_ID) AS Orders
FROM transactions
WHERE Order_Status != 'Cancelled'
GROUP BY Order_Month
ORDER BY Order_Month;

-- 2. Revenue & average order value by category
SELECT Category, ROUND(SUM(Revenue),2) AS Revenue, COUNT(*) AS Orders,
       ROUND(AVG(Revenue),2) AS Avg_Order_Value
FROM transactions
WHERE Order_Status != 'Cancelled'
GROUP BY Category
ORDER BY Revenue DESC;

-- 3. Payment method preference
SELECT Payment_Method, COUNT(*) AS Orders,
       ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM transactions),2) AS Pct
FROM transactions
GROUP BY Payment_Method
ORDER BY Orders DESC;

-- 4. City-level revenue performance
SELECT City, ROUND(SUM(Revenue),2) AS Revenue, COUNT(*) AS Orders
FROM transactions
WHERE Order_Status != 'Cancelled'
GROUP BY City
ORDER BY Revenue DESC;

-- 5. Order status / cancellation & return rate
SELECT Order_Status, COUNT(*) AS Orders,
       ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM transactions),2) AS Pct
FROM transactions
GROUP BY Order_Status
ORDER BY Orders DESC;

-- 6. Customer retention rate (repeat vs one-time buyers)
SELECT
  COUNT(*) AS Total_Customers,
  SUM(CASE WHEN Orders > 1 THEN 1 ELSE 0 END) AS Repeat_Customers,
  ROUND(100.0 * SUM(CASE WHEN Orders > 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS Retention_Rate_Pct
FROM (
  SELECT Customer_ID, COUNT(*) AS Orders
  FROM transactions
  GROUP BY Customer_ID
);

-- 7. Revenue contribution by customer age band
SELECT CASE
    WHEN Customer_Age < 25 THEN '18-24'
    WHEN Customer_Age < 35 THEN '25-34'
    WHEN Customer_Age < 45 THEN '35-44'
    WHEN Customer_Age < 55 THEN '45-54'
    ELSE '55+' END AS Age_Band,
    ROUND(SUM(Revenue),2) AS Revenue, COUNT(*) AS Orders
FROM transactions
WHERE Order_Status != 'Cancelled'
GROUP BY Age_Band
ORDER BY Age_Band;
