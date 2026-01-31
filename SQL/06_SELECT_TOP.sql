-- VIẾT CÂU LỆNH LẤY RA 5 DÒNG ĐẦU TIÊN TRONG BẢNG CUSTOMERS
SELECT TOP 5 *
FROM Customers

-- VIẾT CÂU LỆNH LẤY RA 30% NHÂN VIÊN CỦA CÔNG TY
SELECT TOP 30 PERCENT *
FROM Employees

-- VIẾT CÂU LỆNH LẤY RA CÁC ĐƠN HÀNG VỚI QUY ĐỊNH LÀ MÃ KHÁCH HÀNG KHÔNG ĐƯỢC TRÙNG LẶP, CHỈ LẤY 5 DÒNG DỮ LIỆU ĐẦU TIÊN
SELECT DISTINCT TOP 5 CustomerID
FROM Customers

-- BÀI TẬP
-- VIẾT CÂU LỆNH LẤY RA CÁC SẢN PHẨM CÓ MÃ THỂ LOẠI KHÔNG BỊ TRÙNG LẶP, VÀ CHỈ LẤY RA 3 DÒNG ĐẦU TIÊN
SELECT DISTINCT TOP 3 CategoryID 
FROM Products

-- Truy vấn 20% không trùng lặp ShipName và ShipAddress trong bảng Orders.
-- SẼ LẤY SẮP XẾP THEO CỘT ĐƯỢC XẾP TRƯỚC
SELECT DISTINCT TOP 20 PERCENT ShipAddress, ShipName 
FROM Orders

SELECT DISTINCT TOP 20 PERCENT ShipName, ShipAddress
FROM Orders

-- Truy vấn 120 dòng đầu trong bảng Orders.
SELECT TOP 120 *
FROM Orders


