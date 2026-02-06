-- HÃY CHO BIẾT MỖI KHÁCH HÀNG ĐÃ ĐẶT BAO NHIÊU ĐƠN HÀNG
SELECT CustomerID, COUNT(*) AS "SỐ ĐƠN ĐÃ ĐẶT"
FROM Orders
GROUP BY CustomerID
ORDER BY [SỐ ĐƠN ĐÃ ĐẶT] DESC

-- HÃY TÍNH GIÁ TRỊ ĐƠN GIÁ TRUNG BÌNH THEO MỖI NHÀ CUNG CẤP SẢN PHẨM
SELECT SupplierID, AVG(UnitPrice) AS "GIÁ TRỊ TRUNG BÌNH"
FROM Products
GROUP BY SupplierID

-- HÃY CHO BIẾT MỖI THỂ LOẠI CÓ TỔNG SỐ BAO NHIÊU SẢN PHẨM TRONG KHO
SELECT CategoryID, SUM(UnitsInStock) AS "SỐ SẢN PHẨM MỖI LOẠI"
FROM Products
GROUP BY CategoryID

-- HÃY CHO BIẾT GIÁ VẬN CHUYỂN THẤP NHẤT VÀ LỚN NHẤT CỦA CÁC ĐƠN HÀNG THEO TỪNG THÀNH PHỐ VÀ QUỐC GIA KHÁC NHAU
SELECT ShipCountry, ShipCity, MIN(Freight) AS "GIÁ THẤP NHẤT", MAX(Freight) AS "GIÁ CAO NHẤT"
FROM Orders
GROUP BY ShipCountry, ShipCity
ORDER BY ShipCountry, ShipCity


-- BÀI TẬP 
-- HÃY THỐNG KÊ SỐ LƯỢNG NHÂN VIÊN THEO TỪNG QUỐC GIA KHÁC NHAU
SELECT Country, COUNT(*) AS "SỐ NHÂN VIÊN"
FROM Employees
GROUP BY Country

--Thống kê số khách hàng ở từng quốc gia, từng thành phố
--Tìm các khách hàng có CompanyName có chữ a trong tên
--Sắp xếp theo chiều A-Z Country

SELECT Country, City, COUNT(*) AS "SỐ KHÁCH HÀNG"
FROM Customers
WHERE CompanyName LIKE '%A%'
GROUP BY Country, City
ORDER BY Country


-- Tính tổng số tiền vận chuyển ở từng thành phố, quốc gia
-- Chỉ lấy những ShipName có có chữ 'b' 
-- Sắp xếp theo chiều từ A-Z của ShipCountry

-- ORDER BY CHỈ ĐƯỢC BAO GỒM CỘT CÓ TRONG GROUP BY

SELECT ShipCountry, ShipCity, SUM(Freight) AS "TỔNG SỐ TIỀN VẬN CHUYỂN"
FROM Orders
WHERE ShipName LIKE '%B%'
GROUP BY ShipCountry, ShipCity
ORDER BY ShipCountry













