-- TÍNH SỐ LƯỢNG SẢN PHẨM CÒN LẠI TRONG KHO SAU KHI BÁN HẾT CÁC SẢN PHẨM ĐÃ ĐƯỢC ĐẶT HÀNG 
-- StockRemaining = UnitsInStock - UnitsOnOrder
SELECT UnitsInStock, UnitsOnOrder, UnitsInStock - UnitsOnOrder AS "StockRemaining"
FROM Products

-- TÍNH GIÁ TRỊ ĐƠN HÀNG CHI TIẾT CHO TẤT CẢ CÁC SẢN PHẨM TRONG BẢNG ORDER DETAILS
-- OrderDetailValue = UnitPrice x Quantity
SELECT *, UnitPrice * Quantity - Discount AS "OrderDetailValue"
FROM [Order Details]

-- TÍNH TỶ LỆ GIÁ VẬN CHUYỂN ĐƠN ĐẶT HÀNG (Freight) TRUNG BÌNH CỦA CÁC ĐƠN HÀNG TRONG BẢNG ORDERS SO VỚI GIÁ TRỊ VẬN CHUYỂN CỦA ĐƠN HÀNG LỚN NHẤT
SELECT AVG(Freight) /  MAX (Freight) AS "FreightRatio"
FROM Orders


-- BÀI TẬP
-- HÃY LIỆT KÊ DANH SÁCH CÁC SẢN PHẨM, VÀ GIÁ CỦA TỪNG SẢN PHẨM SẼ ĐƯỢC GIẢM ĐI 10%
-- CÁCH 1: DÙNG PHÉP NHÂN + PHÉP CHIA
SELECT *, UnitPrice - UnitPrice * 10 / 100 AS "DISCOUNT 10%"
FROM Products

SELECT *, UnitPrice * 90 / 100 AS "DISCOUNT 10%"
FROM Products

-- CÁCH 2: CHỈ ĐƯỢC DÙNG PHÉP NHÂN
SELECT *, UnitPrice - UnitPrice * 0.1 AS "DISCOUNT 10%"
FROM Products

SELECT *, UnitPrice * 0.9 AS "DISCOUNT 10%"
FROM Products