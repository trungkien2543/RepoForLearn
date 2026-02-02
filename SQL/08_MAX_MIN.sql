-- LƯU Ý: CHỈ CÓ THỂ LẤY RA 1 CỘT KHI SỬ DỤNG MIN CHO 1 LẦN SELECT

-- VIẾT CÂU LỆNH SQL TÌM GIÁ TRỊ THẤP NHẤT CỦA CÁC SẢN PHẨM TRONG BẢNG PRODUCTS
SELECT MIN(UnitPrice) AS "MIN PRICE"
FROM Products

-- VIẾT CÂU LỆNH LẤY RA NGÀY ĐẶT HÀNG GẦN ĐÂY NHẤT TỪ BẢNG ORDERS
SELECT MAX(OrderDate) AS "NGÀY ĐẶT HÀNG GẦN ĐÂY NHẤT"
FROM Orders

-- VIẾT CÂU LỆNH LẤY RA SẢN PHẨM (LẤY MÃ VÀ TÊN) CÓ SỐ LƯỢNG HÀNG TỒN KHO LỚN NHẤT
SELECT ProductID, ProductName
FROM Products
WHERE UnitsInStock = (SELECT MAX(UnitsInStock) FROM Products)
-- WHERE UnitsInStock = (SELECT TOP 1 UnitsInStock FROM Products ORDER BY UnitsInStock DESC) -> KHÔNG TỐI ƯU VÌ PHẢI SẮP XẾP TOÀN BẢNG

-- BÀI TẬP: 
-- 1. TÌM NGƯỜI CÓ TUỔI ĐỜI LỚN NHẤT CÔNG TY
SELECT MIN(BirthDate) AS "NGÀY SINH LỚN NHẤT"
FROM Employees

-- 2. TÌM SỐ LỰƠNG HÀNG ĐƯỢC ĐẶT ÍT NHẤT TRONG BẢNG PRODUCT
SELECT MIN(UnitsOnOrder) AS "SỐ LƯỢNG HÀNG ĐƯỢC ĐẶT ÍT NHẤT"
FROM Products


