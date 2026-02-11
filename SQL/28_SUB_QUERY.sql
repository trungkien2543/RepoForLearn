-- LIỆT KÊ TOÀN BỘ SẢN PHẨM
SELECT ProductID, ProductName, UnitPrice
FROM Products

-- LẤY GIÁ TRUNG BÌNH
SELECT AVG(UnitPrice)
FROM Products

-- LỌC NHỮNG SẢN PHẨM CÓ GIÁ LỚN HƠN GIÁ TRUNG BÌNH
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (
	SELECT AVG(UnitPrice)
	FROM Products
)

-- LỌC RA NHỮNG KHÁCH HÀNG CÓ SỐ ĐƠN HÀNG LỚN HƠN 10

SELECT * 
FROM Customers
WHERE CustomerID IN (
	SELECT CustomerID
	FROM Orders
	GROUP BY CustomerID
	HAVING COUNT(OrderID) > 10
)

SELECT C.CustomerID, C.CompanyName
FROM Customers AS C
LEFT JOIN Orders AS O
ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.CompanyName
HAVING COUNT(O.OrderID) > 10

-- TÍNH SỐ TIỀN CỦA TỪNG ĐƠN HÀNG 
SELECT O.*, (
	SELECT SUM(D.Quantity*D.UnitPrice)
	FROM [Order Details] AS D
	WHERE O.OrderID = D.OrderID
) AS "TỔNG SỐ TIỀN"
FROM Orders AS O

-- LỌC RA TÊN SẢN PHẨM VÀ TỔNG SỐ ĐƠN HÀNG CỦA SẢN PHẨM

SELECT P.ProductName, (
	SELECT COUNT(D.OrderID)
	FROM [Order Details] AS D
	WHERE P.ProductID = D.ProductID
) AS "TỔNG SỐ ĐƠN HÀNG"
FROM Products AS P

-- NHƯỢC ĐIỂM CỦA CÂU NÀY LÀ KHÔNG THỂ LẤY RA CÁC CỘT THEO Ý MUỐN MÀ PHẢI LẤY RA CỘT THEO GROUP BY
SELECT P.ProductID, P.ProductName, COUNT(D.OrderID) AS "TỔNG SỐ ĐƠN HÀNG"
FROM Products AS P
LEFT JOIN [Order Details] AS D
ON P.ProductID = D.ProductID
GROUP BY P.ProductID, P.ProductName

-- MẪU CHO FROM
SELECT TEMP.[TỔNG SỐ ĐƠN HÀNG]
FROM (SELECT P.ProductName, (
	SELECT COUNT(D.OrderID)
	FROM [Order Details] AS D
	WHERE P.ProductID = D.ProductID
) AS "TỔNG SỐ ĐƠN HÀNG"
FROM Products AS P) AS TEMP

-- HÃY IN RA MÃ ĐƠN HÀNG VÀ SỐ LƯỢNG SẢN PHẨM
SELECT O.OrderID, (
	SELECT COUNT(D.ProductID)
	FROM [Order Details] AS D
	WHERE D.OrderID = O.OrderID
) AS "SỐ LƯỢNG SẢN PHẨM"
FROM Orders AS O


















