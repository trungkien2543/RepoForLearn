-- ================================
-- NORTHWIND EXERCISES
-- ================================

-- ===== BASIC SELECT & ORDER BY =====

-- 1. Select CategoryName and Description from Categories sorted by CategoryName.

-- 2. Select ContactName, CompanyName, ContactTitle, and Phone from Customers sorted by Phone.

-- 3. Show employees' first and last names and hire dates sorted from newest to oldest.

-- 4. Show OrderID, OrderDate, ShippedDate, CustomerID, Freight sorted by Freight (desc).

-- 5. Select CompanyName, Fax, Phone, HomePage, Country from Suppliers
--    sorted by Country (desc) then CompanyName (asc).

-- 6. List employees: Title, FirstName, LastName
--    sorted by Title (asc), LastName (desc).


-- ===== WHERE CLAUSE =====

-- 7. Show CompanyName and ContactName of customers in Buenos Aires.

-- 8. Show ProductName, UnitPrice, QuantityPerUnit of products out of stock.

-- 9. Show OrderDate, ShippedDate, CustomerID, Freight
--    for orders on 1997-05-19.

-- 10. Show ContactName, Address, City for customers NOT in Germany, Mexico, Spain.

-- 11. Show FirstName, LastName, Country for employees NOT in USA.

-- 12. Show orders shipped later than required date.


-- ===== STRING & FILTER =====

-- 13. Show employees whose FirstName starts with 'A'.

-- 14. Show employees whose name contains 'an'.

-- 15. Show customers whose city ends with 'a'.

-- 16. Show employees working as Sales Representative.

-- 17. Show employees living in London.

-- 18. Show employees living in London, Seattle, or Redmond.


-- ===== NUMERIC CONDITIONS =====

-- 19. Show products with UnitPrice > 90.

-- 20. Show products with UnitPrice between 10 and 15
--     and QuantityPerUnit contains 'bottles'.

-- 21. Show products with UnitPrice NOT IN (10,12,15,17,19).


-- ===== NULL CONDITIONS =====

-- 22. Show customers where Region is NULL.

-- 23. Show orders where ShipRegion is NOT NULL.


-- ===== DISTINCT & CALCULATIONS =====

-- 24. Show distinct cities of employees.

-- 25. Show full name of employees.

-- 26. Calculate order price = UnitPrice * Quantity from Order Details.


-- ===== ADVANCED / LOGIC =====

-- 27. Show top 10 orders sorted by Freight descending.

-- 28. Show employees with region specified.

-- 29. Show employees whose last name starts from second half alphabet.

-- 30. Show employees excluding Sales Representatives.


-- ===== JOIN / REPORT STYLE =====

-- 31. Show product name and category name for each product.

-- 32. Show number of orders per employee.

-- 33. Show number of orders per customer.

-- 34. Show customers who have never placed orders.

-- 35. Show product with highest number of orders.
