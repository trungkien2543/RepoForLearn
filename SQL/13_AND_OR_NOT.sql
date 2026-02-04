--  HÃY LIỆT KÊ TẤT CẢ CÁC SẢN PHẨM CÓ SỐ LƯỢNG TRONG KHO THUỘC KHOẢNG NHỎ HƠN 50 HOẶC LỚN HƠN 100
SELECT *
FROM Products
WHERE UnitsInStock < 50 OR UnitsInStock > 100
ORDER BY UnitsInStock

-- HÃY LIỆT KÊ CÁC ĐƠN HÀNG ĐƯỢC GIAO ĐẾN BRAZIL, ĐÃ BỊ GIAO MUỘN, BIẾT RẰNG NGÀY CẦN PHẢI GIAO LÀ REQUIRED DATE, NGÀY GIAO HÀNG THỰC TẾ LÀ SHIPPED DATE
SELECT *
FROM Orders
WHERE ShipCountry = 'BRAZIL' AND RequiredDate < ShippedDate

-- HÃY LẤY RA TẤT CẢ CÁC SẢN PHẨM CÓ GIÁ DƯỚI 100$ VÀ MÃ THỂ LOẠI KHÁC 1
-- LƯU Ý: DÙNG NOT
SELECT *
FROM Products
WHERE  NOT (UnitPrice >= 100 OR CategoryID = 1)

-- BÀI TẬP
-- HÃY LIỆT KÊ TẤT CẢ CÁC ĐƠN HÀNG CÓ GIÁ VẬN CHUYỂN TRONG KHOẢNG TỪ [50,100] ĐÔ LA
SELECT *
FROM Orders
WHERE Freight >=50 AND Freight <=100
ORDER BY Freight

SELECT *
FROM Orders
WHERE NOT (Freight < 50 OR Freight > 100)
ORDER BY Freight

-- HÃY LIỆT KÊ SẢN PHẨM CÓ SỐ LƯỢNG HÀNG TRONG KHO LỚN HƠN 20 VÀ SỐ LƯỢNG HÀNG TRONG ĐƠN HÀNG NHỎ HƠN 20
SELECT *
FROM Products
WHERE UnitsInStock > 20 AND UnitsOnOrder < 20

-- Lấy ra top 3 nhân viên vào công ty sớm nhất & đến từ USA
SELECT TOP 3 *
FROM Employees
WHERE Country = 'USA'
ORDER BY HireDate

-- Lấy ra các sản phẩm có giá > 20 và số lượng > 25 và đang được giảm giá ; sắp theo thứ tự giá từ nhỏ đến lớn
SELECT *
FROM Products
WHERE UnitPrice > 20 AND UnitsInStock > 25 AND Discontinued = 1
ORDER BY UnitPrice ASC


