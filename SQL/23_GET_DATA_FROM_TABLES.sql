-- TỪ BẢNG PRODUCTS VÀ CATEGORIES, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ THỂ LOẠI, TÊN THỂ LOẠI, MÃ SẢN PHẨM, TÊN SẢN PHẨM

SELECT ProductID, ProductName, P.CategoryID, CategoryName
FROM Products AS P, Categories AS C
WHERE P.CategoryID = C.CategoryID

-- TỪ BẢNG EMPLOYEES VÀ ORDERS, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ NHÂN VIÊN, TÊN NHÂN VIÊN, SỐ LƯỢNG ĐƠN HÀNG MÀ NHÂN VIÊN ĐÃ BÁN ĐƯỢC

SELECT E.EmployeeID, E.FirstName, COUNT(O.OrderID) AS "SỐ ĐƠN MÀ NHÂN VIÊN BÁN ĐƯỢC" 
FROM Employees AS E, ORDERS AS O
WHERE E.EmployeeID = O.EmployeeID
GROUP BY E.EmployeeID, E.FirstName

-- TỪ BẢNG CUSTOMERS VÀ ORDERS, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ KHÁCH HÀNG, TÊN CÔNG TY, TÊN LIÊN HỆ, SỐ LƯỢNG ĐƠN HÀNG ĐÃ MUA
-- VỚI ĐIỀU KIỆN LÀ QUỐC GIA = UK

SELECT C.CustomerID, C.CompanyName, C.ContactName, COUNT(O.OrderID) AS "SỐ ĐƠN HÀNG ĐÃ MUA"
FROM Customers AS C, ORDERS AS O
WHERE C.CustomerID = O.CustomerID AND C.Country = 'UK'
GROUP BY C.CustomerID, C.CompanyName, C.ContactName

-- TỪ BẢNG ORDERS VÀ SHIPPERS, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ NHÀ VẬN CHUYỂN, TÊN CÔNG TY, TỔNG SỐ TIỀN VẬN CHUYỂN 
-- VÀ IN RA MÀN HÌNH THEO THỨ TỰ SẮP XẾP TỔNG SỐ TIỀN VẬN CHUYỂN GIẢM DẦN

SELECT  S.ShipperID, S.CompanyName, SUM(O.Freight) AS "TỔNG SỐ TIỀN VẬN CHUYỂN"
FROM Shippers AS S, Orders AS O
WHERE S.ShipperID = O.ShipVia
GROUP BY S.ShipperID, S.CompanyName
ORDER BY SUM(O.Freight) DESC

-- TỪ BẢNG PRODUCTS VÀ SUPPLIERS, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ NHÀ CUNG CẤP, TÊN CÔNG TY, TỔNG SỐ CÁC SẢN PHẨM KHÁC NHAU ĐÃ CUNG CẤP
-- VÀ CHỈ IN RA MÀN HÌNH DUY NHẤT 1 NHÀ CUNG CẤP CÓ SỐ LƯỢNG SẢN PHẨM KHÁC NHAU NHIỀU NHẤT

SELECT TOP 1 S.SupplierID, S.CompanyName, COUNT(P.ProductID) AS "SỐ LƯỢNG SẢN PHẨM KHÁC NHAU"
FROM Suppliers AS S, Products AS P
WHERE S.SupplierID = P.SupplierID
GROUP BY S.SupplierID, S.CompanyName
ORDER BY COUNT(P.ProductID) DESC

-- TỪ BẢNG ORDERS VÀ ORDER DETAILS, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ ĐƠN HÀNG, TỔNG SỐ TIỀN SẢN PHẨM CỦA ĐƠN HÀNG ĐÓ

SELECT O.OrderID, SUM(D.UnitPrice*D.Quantity) AS "TỔNG SỐ TIỀN"
FROM Orders AS O, [Order Details] AS D
WHERE O.OrderID = D.OrderID
GROUP BY O.OrderID


-- TỪ 3 BẢNG TRONG HÌNH HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ ĐƠN HÀNG, TÊN NHÂN VIÊN, TỔNG SỐ TIỀN SẢN PHẨM

SELECT O.OrderID, E.FirstName, E.LastName, SUM(D.UnitPrice*D.Quantity) AS "TỔNG SỐ TIỀN"
FROM Orders AS O, Employees AS E,[Order Details] AS D
WHERE O.EmployeeID = E.EmployeeID AND O.OrderID = D.OrderID
GROUP BY O.OrderID, E.FirstName, E.LastName

-- TỪ 3 BẢNG TRONG HÌNH HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ ĐƠN HÀNG, TÊN KHÁCH HÀNG, TÊN CÔNG TY VẬN CHUYỂN
-- VÀ CHỈ IN RAC CÁC ĐƠN HÀNG ĐƯỢC GIAO ĐẾN UK TRONG NĂM 1997

SELECT O.OrderID, C.CompanyName, S.CompanyName, O.ShipCountry, O.ShippedDate
FROM Orders AS O, Customers AS C, Shippers AS S
WHERE O.CustomerID = C.CustomerID AND O.ShipVia = S.ShipperID AND O.ShipCountry = 'UK' AND YEAR(O.ShippedDate) = 1997















































