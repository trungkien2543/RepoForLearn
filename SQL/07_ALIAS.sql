-- VIẾT CÂU LỆNH LẤY COMPANYNAME VÀ ĐẶT TÊN THAY THẾ LÀ CÔNG TY; POSTALCODE VÀ ĐẶT TÊN THAY THẾ LÀ MÃ BƯU ĐIỆN
SELECT CompanyName AS "TÊN CÔNG TY", PostalCode AS "MÃ BƯU ĐIỆN", City AS "THÀNH PHỐ"
FROM Customers

-- VIẾT CÂU LỆNH LẤY RA LASTNAME VÀ ĐẶT TÊN THAY THẾ LÀ HỌ, FIRSTNAME VÀ ĐẶT TÊN THAY THẾ LÀ TÊN
SELECT LastName AS "HỌ", FirstName AS "TÊN" 
FROM Employees

-- VIẾT CÂU LỆNH LẤY RA 15 DÒNG ĐẦU TIÊN TẤT CẢ CÁC CỘT TRONG BẢNG ORDERS, ĐẶT TÊN THAY THẾ CHO BẢNG ORDERS LÀ O
SELECT TOP 15 *
FROM Orders AS O

-- BÀI TẬP
-- VIẾT CÂU LỆNH LẤY RA 5 DÒNG VỚI CÁC CỘT VÀ ĐẶT TÊN THAY THẾ; ĐẶT TÊN THAY THẾ CHO BẢNG PRODUCTS LÀ P, SỬ DỤNG TÊN THAY THẾ ĐỂ TRUY VẤN
SELECT TOP 5 P.ProductName AS "TÊN SẢN PHẨM", P.SupplierID AS "MÃ NHÀ CUNG CẤP", P.CategoryID AS "MÃ THỂ LOẠI"
FROM Products AS P

