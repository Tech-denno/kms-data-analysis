---------------FOR CASE SCENARIO 1 QUESTION, I Create a Database called: MY_PROJECT_DB-------------------------

CREATE DATABASE MY_PROJECT_DB


--------------IMPORT TABLE NAMED: KULTRA into MY_PROJECT_DB-----------------------

SELECT * FROM KULTRA


-------------------------EXPLORATORY DATA ANALYSES (EDA)-------------------------------

-----------------Question 1: Find the Highest Sales By Product Category------------------

--------------------------ANSWER: TOP 1 Product Category By Total Sales-----------------

SELECT TOP 1 Product_Category, SUM(SALES) AS Total_Sales
FROM KULTRA
GROUP BY Product_Category
ORDER BY Total_Sales DESC


------------------------Question 2: Get the TOP 3 and BOTTOM 3 Regions By Total Sales---------------------

SELECT TOP 3 Region, SUM(SALES) AS [TOP 3]
FROM Kultra
GROUP BY Region
ORDER BY [TOP 3] DESC


SELECT TOP 3 Region, SUM(SALES) AS [BOTTOM 3]
FROM Kultra
GROUP BY Region
ORDER BY [BOTTOM 3] ASC


----------------Question 3: Get Total Sales of Appliances By Province ONTARIO---------------------

SELECT SUM(SALES) AS Total_Sales_Ontario
FROM Kultra
WHERE Product_Sub_Category = 'Appliances' 
AND Province = 'Ontario'


----------------Question 4: Find the Bottom 10 CUSTOMERS By PROFIT--------------------------------

SELECT TOP 10 Customer_Name, SUM(COALESCE(Profit, 0)) AS TOTAL_PROFIT
FROM Kultra
GROUP BY Customer_Name
ORDER BY TOTAL_PROFIT ASC

----------------Drill down to product-level profit for these customers-------------------

SELECT TOP 10 Customer_Name, Customer_Segment, Product_Name, Product_Sub_Category, 
Product_Category, SUM(COALESCE(Profit, 0)) AS PRODUCT_PROFIT
FROM Kultra
WHERE Customer_Name IN (
SELECT TOP 10 Customer_Name
FROM Kultra
GROUP BY Customer_Name
ORDER BY SUM(COALESCE(Profit, 0)) ASC)
GROUP BY Customer_Name, Customer_Segment, Product_Name, Product_Sub_Category, Product_Category
ORDER BY Customer_Name, PRODUCT_PROFIT ASC


--------------------Question 5: Get the Highest Cost By SHIPPING MODE-----------------------

SELECT TOP 1 Ship_Mode, SUM(Shipping_Cost) AS TOTAL_Cost
FROM Kultra
GROUP BY Order_ID, Ship_Mode
ORDER BY TOTAL_Cost DESC


----------------------------FOR CASE SCENARIO 2--------------------------------------

------------Question 6: Find the Most Valuable Customers (Top 5) and their Typical Purchase History------------------------

SELECT TOP 5 Customer_Name,
SUM(Profit) AS Total_Profit,
COUNT(DISTINCT Product_Sub_Category) AS Quantity_Purchased,
STRING_AGG(Product_Sub_Category, ',') AS Product_Name  
FROM Kultra
GROUP BY Customer_Name
ORDER BY Total_Profit DESC


--------------Question 7: Find the Small Business Customer with the Highest Sales-------------------

SELECT TOP 1 Customer_Name,
SUM(Profit) AS Total_Sales
FROM Kultra
WHERE Customer_Segment = 'Small Business'
GROUP BY Customer_Name
ORDER BY Total_Sales DESC


---Question 8: Get the Corporate Customer that Placed the most Number of Orders during the Years 2009-2012-----

SELECT TOP 1 Customer_Name,
COUNT(Order_ID) AS Total_Orders
FROM Kultra
WHERE Customer_Segment = 'Corporate'
AND YEAR(Order_Date) BETWEEN 2009 AND 2012
GROUP BY Customer_Name
ORDER BY Total_Orders DESC


----------------------Question 9: Getting the most Profitable Consumer Customer----------------------

SELECT TOP 1 Customer_Name,
SUM(Profit) AS Total_Profit
FROM Kultra
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name
ORDER BY Total_Profit DESC


----------------------Solving Question 10 requires Creating a VIEW: PANORAMA--------------------------------

--------------Import Order_Status and Renamed as Blessed---------------

CREATE VIEW PANORAMA 
AS
SELECT Blessed.Order_ID,
       Kultra.Row_ID,
       Kultra.Customer_Name,
	   Kultra.Customer_Segment,
	   Blessed.[Status]
FROM Kultra
JOIN Blessed
ON Kultra.Order_ID = Blessed.Order_ID

SELECT * FROM PANORAMA


---------Question 10: Find the Customers that Returned items and their Corresponding Customer Segment-----------------------

SELECT TOP 10 Customer_Name, Customer_Segment, [Status]
FROM PANORAMA
WHERE [Status] = 'Returned'


---------------------Question 11: Determine Whether Shipping Method Match with Order Priority-----------------------

SELECT Order_Priority, Ship_Mode,
COUNT(*) AS Total_Orders
FROM Kultra
GROUP BY Order_Priority, Ship_Mode
ORDER BY Order_Priority, Total_Orders DESC
