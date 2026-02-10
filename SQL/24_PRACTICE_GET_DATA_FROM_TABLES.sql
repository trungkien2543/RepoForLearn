-- TỪ BẢNG PRODUCTS VÀ CATEGORIES, HÃY TÌM CÁC SẢN PHẨM THUỘC DANH MỤC 'SEAFOOD' IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ THỂ LOẠI, TÊN THỂ LOẠI, MÃ SẢN PHẨM, TÊN SẢN PHẨM

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Products AS P, Categories AS C
WHERE P.CategoryID = C.CategoryID AND C.CategoryName = 'SEAFOOD'

-- TỪ BẢNG PRODUCTS VÀ SUPPLIERS, HÃY TÌM CÁC SẢN PHẨM ĐƯỢC CUNG CẤP TỪ NƯỚC GERMANY
-- MÃ NHÀ CUNG CẤP, QUỐC GIA, MÃ SẢN PHẨM, TÊN SẢN PHẨM

SELECT S.SupplierID, S.Country, P.ProductID, P.ProductName
FROM Products AS P, Suppliers AS S
WHERE P.SupplierID = S.SupplierID AND S.Country = 'GERMANY'

-- TỪ 3 BẢNG TRONG HÌNH HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ ĐƠN HÀNG, TÊN KHÁCH HÀNG, TÊN CÔNG TY VẬN CHUYỂN
-- VÀ CHỈ IN RA CÁC ĐƠN HÀNG CỦA CÁC KHÁCH HÀNG ĐẾN TỪ THÀNH PHỐ LONDON

SELECT O.OrderID, C.CompanyName AS "CÔNG TY KHÁCH", S.CompanyName AS "CÔNG TY VẬN CHUYỂN"
FROM Orders AS O, Customers AS C, Shippers AS S
WHERE O.ShipVia = S.ShipperID AND O.CustomerID = C.CustomerID AND C.City = 'LONDON'

-- TỪ 3 BẢNG TRONG HÌNH HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
-- MÃ ĐƠN HÀNG, TÊN KHÁCH HÀNG, TÊN CÔNG TY VẬN CHUYỂN, NGÀY YÊU CẦU CHUYỂN HÀNG, NGÀY GIAO HÀNG
-- VÀ CHỈ IN RA CÁC ĐƠN HÀNG BỊ GIAO MUỘN HƠN QUY ĐỊNH

SELECT O.OrderID, C.CompanyName, S.CompanyName, O.RequiredDate, O.ShippedDate 
FROM Orders AS O, Customers AS C, Shippers AS S
WHERE O.CustomerID = C.CustomerID AND O.ShipVia = S.ShipperID AND ShippedDate > RequiredDate

-- GIVE THESE SHIPCOUNTRIES FOR WHICH CUSTOMERS DON'T COME FROM THE USA
-- SELECT ONLY THIS COUNTRIES WHICH IS OVER THAN 100 ORDERS
-- DISPLAY SHIPCOUNTRY AND NUMBER OF ORDERS

SELECT O.ShipCountry, COUNT(O.OrderID) AS "SỐ ĐƠN HÀNG"
FROM Orders AS O
WHERE O.ShipCountry != 'USA'
GROUP BY O.ShipCountry
HAVING COUNT(O.OrderID) > 100




























