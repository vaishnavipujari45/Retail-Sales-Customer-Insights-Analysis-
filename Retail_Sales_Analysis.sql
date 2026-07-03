-- Total Sales
SELECT ROUND(SUM(`Sales`),2) AS Total_Sales
FROM supermarket_sales;

-- Payment Method Distribution
SELECT `Payment`,
       COUNT(*) AS Transactions
FROM supermarket_sales
GROUP BY `Payment`;

-- Sales by Product Line
SELECT `Product line`,
       ROUND(SUM(`Sales`),2) AS Total_Sales
FROM supermarket_sales
GROUP BY `Product line`
ORDER BY Total_Sales DESC;

-- Sales by City
SELECT `City`,
       ROUND(SUM(`Sales`),2) AS Total_Sales
FROM supermarket_sales
GROUP BY `City`
ORDER BY Total_Sales DESC;
