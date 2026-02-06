-- TÍNH SỐ LƯỢNG ĐƠN ĐẶT HÀNG TRONG NĂM 1997 CỦA TỪNG KHÁCH HÀNG
SELECT CustomerID, COUNT(*) AS "SỐ LƯỢNG ĐƠN ĐẶT HÀNG"
FROM Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY CustomerID


-- LỌC RA CÁC ĐƠN HÀNG ĐƯỢC ĐẶT HÀNG VÀO THÁNG 5 NĂM 1997
SELECT *
FROM Orders
WHERE YEAR(OrderDate) = 1997 AND MONTH(OrderDate) = 5

-- LẤY DANH SÁCH CÁC ĐƠN HÀNG ĐƯỢC ĐẶT VÀO NGÀY 4 THÁNG 9 NĂM 1996
SELECT *
FROM Orders
WHERE OrderDate = '1996-09-04'

-- LẤY RA DANH SÁCH KHÁCH HÀNG ĐẶT HÀNG TRONG NĂM 1998 VÀ SỐ ĐƠN HÀNG MỖI THÁNG SẮP XẾP THEO THÁNG TĂNG DẦN
SELECT  CustomerID, MONTH(OrderDate) AS "THÁNG", COUNT(*) AS "SỐ ĐƠN HÀNG"
FROM Orders
WHERE YEAR(OrderDate) = 1998
GROUP BY CustomerID, MONTH(OrderDate)
ORDER BY  MONTH(OrderDate)

-- BÀI TẬP
-- HÃY LỌC CÁC ĐƠN ĐẶT HÀNG ĐÃ ĐƯỢC GIAO VÀO THÁNG 5, VÀ SẮP XẾP TĂNG DẦN THEO NĂM
SELECT *
FROM Orders
WHERE MONTH(ShippedDate) = 5
ORDER BY YEAR(ShippedDate)


-- Đếm tổng số đơn hàng và tổng số tiền vận chuyển (freight) CỦA TỪNG QUỐC GIA
-- theo từng quốc gia trong bảng Orders, với đk:
-- giao trễ (ShippedDate > RequiredDate)
-- có ngày đặt hàng trong năm 1996 đến năm 1997
-- sắp xếp lại A -> Z của tên nước

SELECT ShipCountry, COUNT(*) AS "TỔNG SỐ ĐƠN", SUM(Freight) AS "TỔNG SỐ TIỀN VẬN CHUYỂN"
FROM Orders
WHERE ShippedDate > RequiredDate AND YEAR(OrderDate) IN (1996,1997)
GROUP BY ShipCountry
ORDER BY ShipCountry

















