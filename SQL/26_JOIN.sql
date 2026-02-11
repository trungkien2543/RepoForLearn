-- INNER JOIN TRẢ VỀ TẤT CẢ CÁC HÀNG KHI CÓ ÍT NHẤT MỘT GIÁ TRỊ Ở CẢ 2 BẢNG
-- CHỈ LẤY RA NHỮNG TRƯỜNG MÀ NỘI DUNG CỦA CÁC CỘT ĐƯỢC DÙNG ĐỂ SO SÁNH CÓ GIÁ TRỊ GIỐNG NHAU

-- HÃY SỬ DỤNG INNER JOIN ĐỂ IN RA CÁC THÔNG TIN SAU ĐÂY: MÃ ĐƠN HÀNG, TÊN CÔNG TY KHÁCH HÀNG
SELECT O.OrderID, C.CompanyName
FROM Orders AS O
JOIN Customers AS C
ON C.CustomerID = O.CustomerID

-- TỪ BẢNG PRODUCTS VÀ CATEGORIES, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ THỂ LOẠI, TÊN THỂ LOẠI, MÃ SẢN PHẨM, TÊN SẢN PHẨM
SELECT P.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Products AS P
JOIN Categories AS C
ON P.CategoryID = C.CategoryID

-- TỪ BẢNG PRODUCTS VÀ CATEGORIES, HÃY ĐƯA RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ THỂ LOẠI, TÊN THỂ LOẠI, SỐ LƯỢNG SẢN PHẨM
SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS "SỐ LƯỢNG SẢN PHẨM"
FROM Products AS P
JOIN Categories AS C
ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryID, C.CategoryName

-- LEFT JOIN: TRẢ VỀ TẤT CẢ CÁC DÒNG TỪ BẢNG BÊN TRÁI, VÀ CÁC DÒNG ĐÚNG VỚI ĐIỀU KIỆN TỪ BẢNG BÊN PHẢI

-- SỬ DỤNG INNER JOIN, LEFT JOIN 
-- TỪ BẢNG PRODUCTS VÀ CATEGORIES, HÃY ĐƯA RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ THỂ LOẠI, TÊN THỂ LOẠI, TÊN SẢN PHẨM

SELECT C.CategoryID, C.CategoryName, P.ProductName
FROM Categories AS C
JOIN Products AS P
ON P.CategoryID = C.CategoryID

SELECT C.CategoryID, C.CategoryName, P.ProductName
FROM Categories AS C
LEFT JOIN Products AS P
ON P.CategoryID = C.CategoryID

SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS "SỐ LƯỢNG SẢN PHẨM"
FROM Categories AS C
JOIN Products AS P
ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryID, C.CategoryName

SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS "SỐ LƯỢNG SẢN PHẨM"
FROM Categories AS C
LEFT JOIN Products AS P
ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryID, C.CategoryName

-- RIGHT JOIN: TRẢ VỀ TOÀN BỘ CÁC HÀNG TỪ BẢNG BÊN PHẢI, VÀ CÁC DÒNG THỎA MÃN ĐIỀU KIỆN TỪ BẢNG BÊN TRÁI
-- SỬ DỤNG RIGHT JOIN, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY
-- MÃ ĐƠN HÀNG, TÊN CÔNG TY KHÁCH HÀNG

SELECT O.OrderID, C.CompanyName
FROM Orders AS O
RIGHT JOIN Customers AS C
ON O.CustomerID = C.CustomerID

SELECT C.CompanyName, COUNT(O.OrderID) AS "SỐ ĐƠN HÀNG"
FROM Orders AS O
RIGHT JOIN Customers AS C
ON O.CustomerID = C.CustomerID
GROUP BY C.CompanyName

-- FULL JOIN: TRẢ VỀ TẤT CẢ CÁC DÒNG ĐÚNG VỚI 1 TRONG CÁC BẢNG 
-- TỪ PRODUCTS VÀ CATEGORIES, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ THỂ LOẠI, TÊN THỂ LOẠI, MÃ SẢN PHẨM, TÊN SẢN PHẨM

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Products AS P
FULL JOIN Categories AS C
ON P.CategoryID = C.CategoryID

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Products AS P
RIGHT JOIN Categories AS C
ON P.CategoryID = C.CategoryID

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Products AS P
LEFT JOIN Categories AS C
ON P.CategoryID = C.CategoryID

-- BÀI TẬP
-- CÂU 1 (INNER JOIN): HÃY LIỆT KÊ TÊN NHÂN VIÊN VÀ TÊN KHÁCH HÀNG CỦA CÁC ĐƠN HÀNG TRONG BẢNG ORDERS

SELECT C.CompanyName, E.FirstName + ' ' + E.LastName AS "HỌ TÊN"
FROM ORDERS AS O
JOIN Customers AS C
ON C.CustomerID = O.CustomerID
JOIN Employees AS E
ON E.EmployeeID = O.EmployeeID

-- CÂU 2 (LEFT JOIN): HÃY LIỆT KÊ TÊN NHÀ CUNG CẤP VÀ TÊN SẢN PHẨM CỦA CÁC SẢN PHẨM TRONG BẢNG PRODUCTS, BAO GỒM CÁC SẢN PHẨM KHÔNG CÓ NHÀ CUNG CẤP

SELECT S.CompanyName, P.ProductName
FROM Products AS P
LEFT JOIN Suppliers AS S
ON S.SupplierID = P.SupplierID

-- CÂU 3 (RIGHT JOIN): HÃY LIỆT KÊ TÊN KHÁCH HÀNG VÀ TÊN ĐƠN HÀNG CỦA CÁC ĐƠN HÀNG TRONG ORDERS, BAO GỒM KHÁCH HÀNG KO CÓ ĐƠN HÀNG

SELECT O.OrderID, C.CompanyName
FROM Orders AS O
RIGHT JOIN Customers AS C
ON O.CustomerID = C.CustomerID

-- CÂU 4 (FULL JOIN): HÃY LIỆT KÊ TÊN DANH MỤC VÀ TÊN NHÀ CUNG CẤP CỦA CÁC SẢN PHẨM TRONG BẢNG PRODUCTS, BAO GỒM CẢ CÁC DANH MỤIC VÀ NHÀ CUNG CẤP KO CÓ SẢN PHẨM

SELECT S.CompanyName, C.CategoryName
FROM Products AS P
FULL JOIN Suppliers AS S
ON S.SupplierID = P.SupplierID
FULL JOIN Categories AS C
ON C.CategoryID = P.CategoryID









































