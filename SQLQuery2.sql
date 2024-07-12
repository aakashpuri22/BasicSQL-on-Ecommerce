--SELECT DISTINCT(Category)
--FROM dbo.Ecommerce_Dataset

--SELECT DISTINCT(ProductName)
--FROM dbo.Ecommerce_Dataset

--SELECT COLUMN_NAME, DATA_TYPE
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'Ecommerce_Dataset'

--SELECT ProductName, SUM(Sales) AS TotalSales
--FROM dbo.Ecommerce_Dataset
--GROUP BY ProductName

--SELECT Category, SUM(Sales) AS TotalSales
--FROM dbo.Ecommerce_Dataset
--GROUP BY Category
--ORDER BY TotalSales DESC

--SELECT ProductName, AVG(Rating) As Ratings, SUM(NumReviews) AS TotalReviews
--FROM dbo.Ecommerce_Dataset
--WHERE Category = 'Electronics'
--GROUP BY ProductName
--ORDER BY Ratings

--WITH LatestDateAdded AS (
--    SELECT City, MAX(DateAdded) AS LatestDate
--    FROM dbo.Ecommerce_Dataset
--    WHERE ProductName = 'Laptop'
--    GROUP BY City
--)
--SELECT e.Price, e.City, e.StockQuantity, e.DateAdded
--FROM dbo.Ecommerce_Dataset e
--INNER JOIN LatestDateAdded l
--    ON e.City = l.City AND e.DateAdded = l.LatestDate
--WHERE e.ProductName = 'Laptop';

--WITH LatestDateAdded AS (
--    SELECT ProductName, City, MAX(DateAdded) AS LatestDate
--    FROM dbo.Ecommerce_Dataset
--    GROUP BY ProductName, City
--)
--SELECT e.ProductName, e.Price, e.City, e.StockQuantity, e.DateAdded
--FROM dbo.Ecommerce_Dataset e
--INNER JOIN LatestDateAdded l
--    ON e.City = l.City AND e.DateAdded = l.LatestDate AND e.ProductName = l.ProductName


--WITH LatestDateAdded AS (
--    SELECT ProductName, City, MAX(DateAdded) AS LatestDate
--    FROM dbo.Ecommerce_Dataset
--    GROUP BY ProductName, City
--)
--SELECT e.ProductName, e.City, e.DateAdded,
--       ROUND(e.Price,2) AS PRICE, ROUND(e.Discount,2) AS DISCOUNT, 
--       ROUND(e.Price - (e.Price * e.Discount),2) AS DiscountedPrice
--FROM dbo.Ecommerce_Dataset e
--INNER JOIN LatestDateAdded l
--    ON e.ProductName = l.ProductName AND e.City = l.City AND e.DateAdded = l.LatestDate
--WHERE e.ProductName = 'Wool Socks'





