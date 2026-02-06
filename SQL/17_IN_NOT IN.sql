-- HÃY LỌC RA TẤT CẢ CÁC ĐƠN HÀNG VỚI ĐIỀU KIỆN:
-- A) ĐƠN HÀNG ĐƯỢC GIAO ĐẾN TỪ GERMANY, UK, BRAZIL
SELECT OrderID, ShipCountry
FROM Orders
WHERE ShipCountry IN ('GERMANY','UK','BRAZIL')
ORDER BY ShipCountry

-- B) ĐƠN HÀNG ĐƯỢC GIAO ĐẾN CÁC QUỐC GIA KHÁC GERMANY, UK, BRAZIL
SELECT OrderID, ShipCountry
FROM Orders
WHERE ShipCountry NOT IN ('GERMANY','UK','BRAZIL')
ORDER BY ShipCountry


-- LẤY RA CÁC SẢN PHẨM CÓ MÃ THỂ LOẠI KHÁC VỚI 2, 3 VÀ 4
SELECT ProductID, CategoryID
FROM Products
WHERE CategoryID NOT IN (2,3,4)
ORDER BY CategoryID



-- VÍ DỤ 3
-- 1. HÃY LIỆT KÊ CÁC NHÂN VIÊN KHÔNG PHẢI NỮ TỪ BẢNG NHÂN VIÊN
SELECT *
FROM Employees
WHERE TitleOfCourtesy IN ('Mr.','Dr.')

-- 2. HÃY LIỆT KÊ CÁC NHÂN VIÊN LÀ NỮ TỪ BẢNG NHÂN VIÊN
SELECT *
FROM Employees
WHERE TitleOfCourtesy NOT IN ('Mr.','Dr.')


-- BÀI TẬP
-- LẤY RA TẤT CẢ CÁC KHÁCH HÀNG ĐẾN TỪ CÁC THÀNH PHỐ SAU ĐÂY: BERLIN, LONDON, WARSZAWA
SELECT *
FROM Customers
WHERE City IN ('BERLIN', 'LONDON', 'WARSZAWA')


-- Hãy liệt kê tất cả các đơn hàng được gửi đến khách hàng trong ngày 1/1/1997 hoặc 2/1/1997
SELECT *
FROM Orders
WHERE ShippedDate IN ('1997-01-01', '1997-01-02')







