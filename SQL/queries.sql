-- Total Orders
SELECT COUNT(DISTINCT "Sipariş Numarası") AS total_orders
FROM E_commerce_Trend;

-- Total Sales
SELECT SUM("Satış Tutarı") AS total_sales
FROM E_commerce_Trend;

-- Return Rate
SELECT ROUND(SUM(CASE WHEN "Return" = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_rate
FROM E_commerce_Trend;

-- Average Order Value (AOV)
SELECT SUM("Satış Tutarı") / COUNT(DISTINCT "Sipariş Numarası") AS AOV
FROM E_commerce_Trend;

-- Sales by City
SELECT "Teslimat Adresi" AS City, SUM("Satış Tutarı") AS sales
FROM E_commerce_Trend
GROUP BY "Teslimat Adresi"
ORDER BY sales DESC;

-- Top 10 Brands by Sales
SELECT Marka, SUM("Satış Tutarı") AS sales
FROM E_commerce_Trend
GROUP BY Marka
ORDER BY sales DESC
LIMIT 10;

-- Orders Trend by Month
SELECT strftime('%Y-%m', "Sipariş Tarihi") AS month, COUNT(DISTINCT "Sipariş Numarası") AS orders
FROM E_commerce_Trend
GROUP BY month
ORDER BY month;
