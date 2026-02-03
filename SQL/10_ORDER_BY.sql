-- HÃY LIỆT KÊ TẤT CẢ CÁC NHÀ CUNG CẤP THEO THỨ TỰ TÊN ĐƠN VỊ (CompanyName) TỪ A-Z
SELECT *
FROM Suppliers
ORDER BY CompanyName ASC

-- HÃY LIỆT KÊ TẤT CẢ CÁC SẢN PHẨM THEO THỨ TỰ GIÁ GIẢM DẦN
SELECT *
FROM Products
ORDER BY UnitPrice DESC

-- HÃY LIỆT KÊ TẤT CẢ CÁC NHÂN VIÊN THEO THỨ TỰ HỌ VÀ TÊN ĐỆM A-Z
-- CÓ THỂ SẮP XẾP NHIỀU CỘT -> SQL SẼ SẮP XẾP THEO THỨ TỰ LẦN LƯỢT CỦA TỪNG CỘT
SELECT *
FROM Employees
ORDER BY LastName, FirstName

-- HÃY LẤY RA MỘT SẢN PHẨM CÓ SỐ LƯỢNG BÁN CAO NHẤT TỪ BẢNG ORDER DETAIL, KHÔNG DÙNG MAX
SELECT TOP 1 *
FROM [Order Details]
ORDER BY Quantity DESC

-- BÀI TẬP
-- HÃY LIỆT KÊ DANH SÁCH CÁC ĐƠN ĐẶT HÀNG TRONG BẢNG ORDER THEO THỨ TỰ GIẢM DẦN CỦA NGÀY ĐẶT 
SELECT OrderID
FROM Orders
ORDER BY OrderDate DESC

-- HÃY LIỆT KÊ TÊN, ĐƠN GIÁ, SỐ LƯỢNG TRONG KHO CỦA TẤT CẢ CÁC SẢN PHẨM TRONG BẢNG PRODUCTS, THEO THỨ TỰ GIẢM DẦN CỦA UnitInStock
SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
ORDER BY UnitsInStock DESC

-- lấy ra tên quốc gia của 4 khách hàng đầu tiên và tại các đất nước khác nhau và sx tên quốc gia theo thứ tự từ z-a
SELECT DISTINCT TOP 4 Country
FROM Customers
ORDER BY Country DESC

-- Hãy lấy ra tên nhân viên, ngày sinh, địa chỉ và sắp xếp nhân viên theo tuổi giảm dần
SELECT LastName + FirstName AS "HỌ VÀ TÊN", BirthDate, Address
FROM Employees
ORDER BY BirthDate
