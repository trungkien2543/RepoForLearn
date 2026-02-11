-- LIỆT KÊ CÁC ĐƠN HÀNG CÓ NGÀY ĐẶT HÀNG GẦN NHẤT

SELECT *
FROM Orders
WHERE OrderDate = (
	SELECT MAX(OrderDate) 
	FROM Orders
)

-- LIỆT KÊ TẤT CẢ SẢN PHẨM MÀ KHÔNG CÓ ĐƠN ĐẶT HÀNG NÀO ĐẶT MUA CHÚNG

SELECT *
FROM Products
WHERE ProductID NOT IN (
	SELECT DISTINCT ProductID
	FROM [Order Details]
)

-- LẤY THÔNG TIN VỀ CÁC ĐƠN HÀNG, VÀ TÊN CÁC SẢN PHẨM THUỘC CÁC ĐƠN HÀNG CHƯA ĐƯỢC GIAO

SELECT O.OrderID, P.ProductName
FROM Orders AS O
JOIN [Order Details] AS D
ON D.OrderID = O.OrderID
JOIN Products AS P
ON P.ProductID = D.ProductID
WHERE O.OrderID IN (
	SELECT OrderID
	FROM Orders
	WHERE ShippedDate IS NULL
)


-- LẤY RA THÔNG TIN VỀ CÁC SẢN PHẨM CÓ SỐ LƯỢNG TỒN KHO ÍT HƠN SỐ LƯỢNG TỒN KHO TRUNG BÌNH CỦA TẤT CẢ CÁC SẢN PHẨM

SELECT *
FROM Products AS P
WHERE P.UnitsInStock < (
	SELECT AVG(UnitsInStock)
	FROM Products
)

-- LẤY THÔNG TIN VỀ CÁC KHÁCH HÀNG CÓ TỔNG GIÁ TRỊ ĐƠN HÀNG LỚN NHẤT

SELECT C.CustomerID, C.CompanyName, O.OrderID
FROM Customers AS C
JOIN Orders AS O
ON O.CustomerID = C.CustomerID
JOIN [Order Details] AS D
ON D.OrderID = O.OrderID
GROUP BY C.CustomerID, C.CompanyName, O.OrderID
HAVING SUM(D.Quantity * D.UnitPrice) = (
	SELECT TOP 1 SUM(Quantity * UnitPrice)
	FROM [Order Details]
	GROUP BY OrderID
	ORDER BY SUM(Quantity * UnitPrice) DESC 
)







