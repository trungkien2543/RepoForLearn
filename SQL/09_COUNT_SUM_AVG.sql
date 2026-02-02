-- LƯU Ý: SUM, AVG SẼ BỎ QUA GIÁ TRỊ NULL

-- ĐẾM SỐ LƯỢNG KHÁCH HÀNG CÓ TRONG BẢNG CUSTOMERS
SELECT COUNT(*) AS "SỐ LƯỢNG KHÁCH HÀNG" 
FROM Customers

SELECT COUNT(CustomerID) AS "SỐ LƯỢNG KHÁCH HÀNG" 
FROM Customers

-- TÍNH TỔNG SỐ TIỀN VẤN CHUYỂN CỦA TẤT CẢ CÁC ĐƠN HÀNG
SELECT SUM(Freight) AS "TỔNG SỐ TIỀN VẬN CHUYỂN"
FROM Orders

SELECT AVG(Freight) AS "TỔNG SỐ TIỀN VẬN CHUYỂN"
FROM Orders

-- TÍNH TRUNG BÌNH SỐ LƯỢNG ĐẶT HÀNG CỦA TẤT CẢ CÁC SẢN PHẨM TRONG BẢNG ORDER DETAILS
SELECT AVG(Quantity) AS "SỐ LƯỢNG ĐẶT HÀNG TRUNG BÌNH"
FROM [Order Details]

-- ĐẾM SỐ LƯỢNG, TÍNH TỔNG SỐ LƯỢNG HÀNG TRONG KHO VÀ TRUNG BÌNH GIÁ CỦA CÁC SẢN PHẨM CÓ TRONG BẢNG PRODUCT
SELECT 
	COUNT(*) AS "SỐ LƯỢNG SẢN PHẨM", 
	SUM(UnitsInStock) AS "TỔNG SỐ LƯỢNG HÀNG TỒN KHO",
	AVG(UnitPrice) AS "TRUNG BÌNH GIÁ SẢN PHẨM"
FROM Products

-- BÀI TẬP
-- 1. HÃY ĐẾM SỐ LƯỢNG ĐƠN HÀNG TỪ BẢNG ORDER BẰNG 2 CÁCH:
-- CÁCH 1: DÙNG DẤU *
SELECT COUNT(*) AS "SỐ LƯỢNG ĐƠN HÀNG"
FROM Orders

-- CÁCH 2: DÙNG MÃ ĐƠN HÀNG
SELECT COUNT(OrderID) AS "SỐ LƯỢNG ĐƠN HÀNG"
FROM Orders

-- 2. TÍNH GIÁ TRỊ TRUNG BÌNH GIÁ  VÀ TỔNG SỐ LƯỢNG Ở BẢNG ORDER DETAILS
SELECT AVG(UnitPrice) AS "GIÁ TRUNG BÌNH", SUM(Quantity) AS "TỔNG SỐ LƯỢNG"
FROM [Order Details]

-- 3. Tính số lượng CategoryID của bảng Categories
SELECT COUNT(CategoryID) AS "SỐ LƯỢNG DANH MỤC"
FROM Categories

-- 4. Tính tổng số ReorderLevel bảng Products
SELECT SUM(ReorderLevel) AS "MỨC ĐỘ ĐƯỢC MUA LẠI"
FROM Products
