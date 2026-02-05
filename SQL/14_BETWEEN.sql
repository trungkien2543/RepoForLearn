-- LẤY DANH SÁCH CÁC SẢN PHẨM CÓ GIÁ BÁN TRONG KHOẢNG TỪ 10 ĐẾN 20 ĐÔ LA
SELECT *
FROM Products
WHERE UnitPrice BETWEEN 10 AND 20

-- LẤY DANH SÁCH CÁC ĐƠN ĐẶT HÀNG ĐƯỢC ĐẶT TỪ NGÀY 1996-07-01 ĐẾN 1996-07-31
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31'

-- TÍNH TỔNG SỐ TIỀN VẬN CHUYỂN CỦA CÁC ĐƠN ĐẶT HÀNG ĐƯỢC ĐẶT TRONG KHOẢNG THỜI GIAN TỪ 1996-07-01 ĐẾN NGÀY 1996-07-31
SELECT SUM(Freight) AS "TỔNG SỐ TIỀN VẬN CHUYỂN"
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31'


-- BÀI TẬP
-- LẤY DANH SÁCH CÁC ĐƠN ĐẶT HÀNG CÓ NGÀY ĐẶT HÀNG TRONG KHOẢNG TỪ 1/1/1997 ĐẾN 31/12/1997 VÀ ĐƯỢC VẬN CHUYỂN BẰNG TÀU THỦY (SHIPVIA = 3)
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31' AND ShipVia = 3

--Thử thách 1: Viết câu lệnh SQL liệt kê họ và tên nhân viên,
-- chỉ sống ở London,
--có ngày tháng năm sinh từ đến 1/1/1952 đến 31/12/1963 
--hoặc ngày tuyển từ 1/2/1992 đến 31/12/1993
-- chỉ lấy 3 nhân viên đầu tiên sắp xếp theo [LastName] A-Z.
SELECT TOP 3 *
FROM Employees
WHERE City = 'LONDON' AND (BirthDate BETWEEN '1952-01-01' AND '1963-12-31' OR HireDate BETWEEN '1992-02-01' AND '1993-12-31')
ORDER BY LastName

--Thử thách 2: Viết câu lệnh SQL liệt kê các đơn hàng, 
-- [OrderDate] từ 01-07-1996 đến 01-09-1996
-- [OrderID] từ 10000 đến 10250
--Sắp xếp theo [ShipName] Z-A.

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-09-01' AND OrderID BETWEEN 10000 AND 10250
ORDER BY ShipName DESC









