-- COMMON TABLE EXPRESSION (CTE) ĐƯỢC SỬ DỤNG ĐỂ TẠO BẢNG TẠM THỜI VÀ SỬ DỤNG NÓ TRONG CÁC TRUY VẤN SAU ĐÓ
-- GIÚP LÀM CHO CÂU TRUY VẤN TRỞ NÊN DỄ ĐỌC VÀ DỄ QUẢN LÝ HƠN

-- WITH TÊN_CTE (CỘT 1, CỘT 2, ...) AS (
--			TRUY VẤN ĐỂ ĐỊNH NGHĨA CTE
--)

-- SAU CTE CHỈ TỒN TẠI 1 SELECT ĐƯỢC DÙNG CTE ĐÃ TẠO

WITH SHORT_E AS (
	SELECT EmployeeID, LastName, FirstName
	FROM Employees
)

SELECT * FROM SHORT_E

-- VÍ DỤ 1: LẤY THÔNG TIN VỀ CÁC SẢN PHẨM CÓ CÙNG THỂ LOẠI VỚI 1 SẢN PHẨM CỤ THỂ
-- CÁCH 1: SUB QUERY
SELECT *
FROM Products
WHERE CategoryID = (
	SELECT CategoryID
	FROM Products
	WHERE ProductName = 'CHAI'
)

-- CÁCH 2: CTE
WITH PRODUCT_CATEGORY AS (
	SELECT CategoryID
	FROM Products
	WHERE ProductName = 'CHAI'
)

SELECT *
FROM Products AS P
JOIN PRODUCT_CATEGORY AS PC
ON P.CategoryID = PC.CategoryID

-- VÍ DỤ: LẤY THÔNG TIN ĐƠN HÀNG CÙNG VỚI TỔNG GIÁ TRỊ ĐƠN HÀNG VÀ TỶ LỆ GIỮA TỔNG GIÁ TRỊ VÀ PHÍ GIAO HÀNG
-- CÁCH 1: CTE
WITH TONG_GIA_TRI AS (
	SELECT D.OrderID, SUM(D.Quantity*D.UnitPrice) AS 'TONG GIA TRI'
	FROM [Order Details] AS D
	GROUP BY D.OrderID
), OTX AS (
	SELECT D.OrderID, SUM(D.Quantity*D.UnitPrice) AS 'TONG GIA TRI'
	FROM [Order Details] AS D
	GROUP BY D.OrderID
), OTX2 AS (
	SELECT D.OrderID, SUM(D.Quantity*D.UnitPrice) AS 'TONG GIA TRI'
	FROM [Order Details] AS D
	GROUP BY D.OrderID
)

SELECT O.OrderID, T.[TONG GIA TRI], O.Freight, T.[TONG GIA TRI] / O.Freight AS 'TY LE GIUA TONG GIA TRI VA PHI GIAO HANG'
FROM Orders AS O
JOIN TONG_GIA_TRI AS T
ON O.OrderID = T.OrderID


-- CÁCH 2: SUB QUERY
SELECT O.OrderID, T.[TONG GIA TRI], O.Freight, T.[TONG GIA TRI] / O.Freight AS 'TY LE GIUA TONG GIA TRI VA PHI GIAO HANG'
FROM Orders AS O
JOIN (
	SELECT D.OrderID, SUM(D.Quantity*D.UnitPrice) AS 'TONG GIA TRI'
	FROM [Order Details] AS D
	GROUP BY D.OrderID
) AS T
ON O.OrderID = T.OrderID

-- BÀI TẬP 
-- 1. SỬ DỤNG CTE ĐỂ TÍNH TỔNG DOANH SỐ BÁN HÀNG CHO TỪNG SẢN PHẨM TỪ HAI BẢNG ORDER DETAILS VÀ PRODUCTS TRONG CƠ SỞ DỮ LIỆU NORTHWIND
WITH DOANH_SO AS (
	SELECT ProductID, SUM(Quantity*UnitPrice) AS 'DOANH SO'
	FROM [Order Details] AS D
	GROUP BY D.ProductID
)

SELECT P.ProductID, P.ProductName, D.[DOANH SO] 
FROM Products AS P
JOIN DOANH_SO AS D
ON D.ProductID = P.ProductID

-- 2. DÙNG CTE ĐỂ TÍNH TOÁN TỔNG DOANH SỐ BÁN HÀNG THEO TỪNG KHÁCH HÀNG VÀ SAU ĐÓ SẮP XẾP DANH SÁCH KHÁCH HÀNG THEO TỔNG DOANH SỐ GIẢM DẦN
WITH GIA_TRI_DON_HANG AS (
	SELECT OrderID, SUM(Quantity * UnitPrice) AS 'TONG GIA TRI'
	FROM [Order Details]
	GROUP BY OrderID
)
SELECT C.CustomerID, SUM(G.[TONG GIA TRI]) AS 'TONG DOANH SO'
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID
LEFT JOIN GIA_TRI_DON_HANG AS G
ON G.OrderID = O.OrderID
GROUP BY C.CustomerID
ORDER BY [TONG DOANH SO] DESC

-- KHÔNG DÙNG CTE
SELECT C.CustomerID,
       SUM(D.Quantity * D.UnitPrice) AS [TONG DOANH SO]
FROM Customers C
LEFT JOIN Orders O
       ON C.CustomerID = O.CustomerID
LEFT JOIN [Order Details] D
       ON D.OrderID = O.OrderID
GROUP BY C.CustomerID
ORDER BY [TONG DOANH SO] DESC;


-- 3. SỬ DỤNG CTE TÍNH TỔNG DOANH SỐ BÁN HÀNG THEO NĂM TỪ BẢNG ORDERS VÀ ORDER DETAILS
WITH GIA_TRI_DON_HANG AS (
	SELECT OrderID, SUM(Quantity * UnitPrice) AS 'TONG GIA TRI'
	FROM [Order Details]
	GROUP BY OrderID
)
SELECT YEAR(O.OrderDate) AS 'NAM', SUM(G.[TONG GIA TRI]) AS 'DOANH SO THEO NAM'
FROM Orders AS O
JOIN GIA_TRI_DON_HANG AS G
ON O.OrderID = G.OrderID
GROUP BY YEAR(O.OrderDate)































