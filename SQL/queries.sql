-- Total Orders
SELECT COUNT(DISTINCT "Sipariş Numarası") AS total_orders
FROM E_commerce_Trend;

-- Total Sales
SELECT SUM("Satış Tutarı") AS total_sales
FROM E_commerce_Trend;

-- Return Rate
SELECT ROUND(SUM(CASE WHEN "Return" = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_rate
FROM E_commerce_Trend;

-- AOV (Average Order Value)
SELECT SUM("Satış Tutarı") / COUNT(DISTINCT "Sipariş Numarası") AS AOV
FROM E_commerce_Trend;
