-- VIẾT CÂU LỆNH LẤY RA TOÀN BỘ SẢN PHẨM
SELECT [ProductName]
FROM [dbo].[Products];


-- VIẾT CÂU LỆNH SQL LẤY RA TÊN SẢN PHẨM, GIÁ BÁN TRÊN MỖI ĐƠN VỊ, SỐ LƯỢNG SẢN PHẨM TRÊN ĐƠN VỊ
SELECT [ProductName], [UnitPrice], [QuantityPerUnit]
FROM [dbo].[Products];


-- VIẾT CÂU LỆNH SQL LẤY RA TÊN CÔNG TY KHÁCH HÀNG VÀ QUỐC GIA CỦA CÁC KHÁCH HÀNG ĐÓ
SELECT [CompanyName], [Country]
FROM [dbo].[Customers]

SELECT CompanyName, Country
FROM Customers

-- BÀI TẬP
-- 1. VIẾT CÂU LỆNH SQL LẤY RA TÊN CÔNG TY VÀ SỐ ĐIỆN THOẠI CỦA TẤT CẢ CÁC NHÀ CUNG CẤP HÀNG.
SELECT CompanyName, Phone
FROM Suppliers

-- 2. LẤY RA MÃ ĐƠN HÀNG, ID KHÁCH HÀNG TRONG BẢNG ORDERS
SELECT OrderID, CustomerID
FROM Orders

-- *: LẤY RA TẤT CẢ DỮ LIỆU

-- VIẾT CÂU LỆNH LẤY RA TẤT CẢ DỮ LIỆU TỪ BẢNG PRODUCT
SELECT *
FROM Products

-- VIẾT CÂU LỆNH RA DỮ LIỆU TỪ BẢNG CUSTOMER
SELECT *
FROM Customers

-- VIẾT CÂU LỆNH SQL LẤY RA TẤT CẢ DỮ LIỆU TỪ BẢNG SUPPLIERS
SELECT *
FROM Suppliers