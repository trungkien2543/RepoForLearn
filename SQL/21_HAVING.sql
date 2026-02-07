-- LƯU Ý: WHERE ĐƯỢC ÁP DỤNG TRƯỚC KHI HÀM GROUP BY ĐƯỢC THỰC THI NÊN SAU KHI GOM NHÓM KO THỂ DÙNG WHERE ĐỂ LỌC ĐIỀU KIỆN-- SỬ DỤNG HAVING


-- HÃY CHO BIẾT NHỮNG KHÁCH HÀNG NÀO ĐÃ ĐẶT NHIỀU HƠN 20 ĐƠN HÀNG, SẮP XẾP THEO THỨ TỰ TỔNG SỐ ĐƠN HÀNG GIẢM DẦN
-- VÍ DỤ SAI VỚI WHERE
SELECT CustomerID, COUNT(*) AS "SỐ ĐƠN HÀNG"
FROM Orders
WHERE COUNT(*) > 20
GROUP BY CustomerID
ORDER BY COUNT(*)

-- VÍ DỤ ĐÚNG VỚI HAVING
SELECT CustomerID, COUNT(*) AS "SỐ ĐƠN HÀNG"
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 20
ORDER BY COUNT(*) DESC

-- HÃY LỌC RA NHỮNG NHÀ CUNG CẤP SẢN PHẨM CÓ TỔNG SỐ LƯỢNG HÀNG TRONG KHO LỚN HƠN 30, VÀ CÓ TRUNG BÌNH ĐƠN GIÁ CÓ GIÁ TRỊ DƯỚI 50
SELECT SupplierID, SUM(UnitsInStock) AS "TỔNG SỐ LƯỢNG HÀNG", AVG(UnitPrice) AS "TRUNG BÌNH ĐƠN GIÁ"
FROM Products
GROUP BY SupplierID
HAVING SUM(UnitsInStock) > 30 AND AVG(UnitPrice) < 50
ORDER BY SUM(UnitsInStock) DESC, AVG(UnitPrice) DESC


-- HÃY CHO BIẾT TỔNG SỐ TIỀN VẬN CHUYỂN CỦA TỪNG THÁNG, TRONG NỬA NĂM SAU CỦA NĂM 1996, SẮP XẾP THEO THÁNG TĂNG DẦN
SELECT MONTH(ShippedDate) AS "THÁNG", SUM(Freight) AS "TỔNG TIỀN VẬN CHUYỂN"
FROM Orders
WHERE ShippedDate BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH(ShippedDate)
ORDER BY MONTH(ShippedDate)


-- BÀI TẬP
-- HÃY LỌC RA NHỮNG THÀNH PHỐ CÓ SỐ LƯỢNG ĐƠN HÀNG > 16 VÀ SẮP XẾP THEO TỔNG SỐ LƯỢNG GIẢM DẦN
SELECT ShipCity, COUNT(*) AS "TỔNG SỐ LƯỢNG ĐƠN HÀNG"
FROM Orders
GROUP BY ShipCity
HAVING COUNT(*) > 16
ORDER BY COUNT(*) DESC

-- Hãy liệt kê các quốc gia có số lượng khách hàng lớn hơn 5
SELECT Country, COUNT(*) AS "TỔNG SỐ LƯỢNG KHÁCH HÀNG"
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC


--TT1: Lấy danh sách sản phẩm có tổng số lượng đặt hàng >75, có tỷ lệ giảm giá trung bình > 7%, và sắp xếp theo tỷ lệ giảm giá trung bình giảm dần
SELECT	ProductID, 
		SUM(Quantity) AS "TỔNG SỐ LƯỢNG ĐẶT HÀNG",  
		AVG(Discount) AS "TỶ LỆ GIẢM GIÁ TRUNG BÌNH"
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(Quantity) > 75 AND AVG(Discount) > 0.07
ORDER BY AVG(Discount) DESC

--TT2: Lấy danh sách các quốc gia tên có chứa ký tự 'e' và 'a' , 
--có tổng số lượng các thành phố >2 và tổng số lượng khách hàng <10, 
--sắp xếp tên các quốc gia theo thứ tự alphabet
SELECT Country, COUNT(City) AS "TỔNG SỐ THÀNH PHỐ", COUNT(CustomerID) AS "TỔNG SỐ KHÁCH HÀNG"
FROM Customers
WHERE Country LIKE '%A%' AND Country LIKE '%E%'
GROUP BY Country
HAVING COUNT(City) > 2 AND COUNT(CustomerID) < 10
ORDER BY Country

--TT3: Lấy danh sách các quốc gia tên có chứa ký tự 'e' hoặc 'a' , 
--có tổng số lượng các thành phố >2 và tổng số lượng khách hàng <10, 
--sắp xếp tên các quốc gia theo thứ tự alphabet
SELECT Country, COUNT(City) AS "TỔNG SỐ THÀNH PHỐ", COUNT(CustomerID) AS "TỔNG SỐ KHÁCH HÀNG"
FROM Customers
WHERE Country LIKE '%[AE]%'
GROUP BY Country
HAVING COUNT(City) > 2 AND COUNT(CustomerID) < 10
ORDER BY Country


--TT4: Lấy danh sách các quốc gia tên không chứa ký tự 'e' và 'a' , 
--có tổng số lượng các thành phố >2 và tổng số lượng khách hàng <10, 
--sắp xếp tên các quốc gia theo thứ tự alphabet
SELECT Country, COUNT(City) AS "TỔNG SỐ THÀNH PHỐ", COUNT(CustomerID) AS "TỔNG SỐ KHÁCH HÀNG"
FROM Customers
WHERE Country NOT LIKE '%[AE]%'
GROUP BY Country
HAVING COUNT(City) > 2 AND COUNT(CustomerID) < 10
ORDER BY Country





