-- SQL KHÔNG PHÂN BIỆT HOA VỚI THƯỜNG

-- HÃY LIỆT KÊ TẤT CẢ CÁC NHÂN VIÊN ĐẾN TỪ THÀNH PHỐ LONDON
SELECT *
FROM Employees
WHERE City = 'LONDON'

-- HÃY LIỆT KÊ TẤT CẢ CÁC NHÂN VIÊN ĐẾN TỪ THÀNH PHỐ LONDON
-- SẮP XẾP KẾT QUẢ THEO LAST NAME A->Z
SELECT *
FROM Employees
WHERE City = 'LONDON'
ORDER BY LastName 

-- HÃY LIỆT KÊ TẤT CẢ CÁC ĐƠN HÀNG BỊ GIAO MUỘN, BIẾT RẰNG NGÀY CẦN PHẢI GIAO HÀNG LÀ RequiredDate, NGÀY GIAO HÀNG THỰC TẾ LÀ ShippedDate
SELECT OrderID, RequiredDate, ShippedDate
FROM Orders
WHERE RequiredDate < ShippedDate
ORDER BY RequiredDate, ShippedDate

-- LẤY RA TẤT CẢ CÁC ĐƠN HÀNG CHI TIẾT ĐƯỢC GIẢM GIÁ NHIỀU HƠN 10%
SELECT *
FROM [Order Details]
WHERE Discount > 0.1

-- LẤY RA TẤT CẢ CÁC ĐƠN HÀNG CHI TIẾT ĐƯỢC GIẢM GIÁ TỪ 10% ĐẾN 20%
SELECT *
FROM [Order Details]
WHERE Discount > 0.1 AND Discount < 0.2

-- BÀI TẬP
-- HÃY LIỆT KÊ TẤT CẢ CÁC ĐƠN HÀNG ĐƯỢC GỬI ĐẾN QUỐC GIA LÀ FRANCE
SELECT *
FROM Orders
WHERE ShipCountry = 'FRANCE'

-- HÃY LIỆT KÊ CÁC SẢN PHẨM CÓ SỐ LƯỢNG HÀNG TRONG KHO LỚN HƠN 20
SELECT *
FROM Products
WHERE UnitsInStock > 20
ORDER BY UnitsInStock

-- hãy liệt kê các sản phẩm có giá bán lớn hơn hoặc bằng 2 lần sản phẩm có giá bán nhỏ nhất. sau đó sắp xếp chúng theo thứ tự từ bé đến lớn.
SELECT *
FROM Products
WHERE UnitPrice >= 2 * (SELECT MIN(UnitPrice) FROM Products)
ORDER BY UnitPrice















