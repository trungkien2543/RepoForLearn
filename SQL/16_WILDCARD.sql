-- %	-> ĐẠI DIỆN CHO 0 HOẶC NHIỀU KÝ TỰ
-- _	-> ĐẠI DIỆN CHO MỘT KÝ TỰ
-- []	-> ĐẠI DIỆN CHO BẤT KỲ KÝ TỰ ĐƠN LẺ NÀO TRONG NGOẶC -> VÍ DỤ: h[oa]t thì tìm hot và hat, nhưng ko có hit
-- ^	-> ĐẠI DIỆN CHO BẤT KỲ KÝ TỰ NÀO KHÔNG CÓ TRONG NGOẶC -> VÍ DỤ: h[^oa]t tìm hit, nhưng ko có hot và hat
-- -	-> ĐẠI DIỆN CHO BẤT KỲ KÝ TỰ ĐƠN LẺ NÀO CÓ TRONG KHOẢNG NHẤT ĐỊNH -> VÍ DỤ: c[a-b]t tìm cat và cbt

-- LỌC RA TẤT CẢ CÁC KHÁCH HÀNG CÓ TÊN LIÊN HỆ BẮT ĐẦU BẰNG CHỮ 'A'
SELECT *
FROM Customers
WHERE ContactName LIKE 'A%'

-- LỌC RA TẤT CẢ CÁC KHÁCH HÀNG CÓ TÊN LIÊN HỆ BẮT ĐẦU BẰNG CHỮ 'H', VÀ CÓ CHỮ THỨ 2 LÀ BẤT KỲ KÝ TỰ NÀO
SELECT *
FROM Customers
WHERE ContactName LIKE 'H_%'

-- HÃY LỌC RA TẤT CẢ CÁC ĐƠN HÀNG ĐƯỢC GỬI ĐẾN THÀNH PHỐ CÓ CHỮ CÁI BẮT ĐẦU LÀ L, CHỮ CÁI THỨ HAI LÀ U HOẶC O
SELECT OrderID, ShipCity
FROM Orders
WHERE ShipCity LIKE 'L[U,O]%'

-- HÃY LỌC RA TẤT CẢ CÁC ĐƠN HÀNG ĐƯỢC GỬI ĐẾN THÀNH PHỐ CÓ CHỮ CÁI BẮT ĐẦU LÀ L, CHỮ CÁI THỨ HAI KHÔNG PHẢI LÀ U HOẶC O
SELECT OrderID, ShipCity
FROM Orders
WHERE ShipCity LIKE 'L[^U,O]%'


-- LỌC RA TẤT CẢ CÁC ĐƠN HÀNG ĐƯỢC GỬI ĐẾN THÀNH PHỐ CÓ CHỮ BẮT ĐẦU LÀ L, CHỮ CÁI THỨ HAI LÀ CÁC KÝ TỰ TỪ A ĐẾN E
SELECT OrderID, ShipCity
FROM Orders
WHERE ShipCity LIKE 'L[A-Z]%'

-- BÀI TẬP
-- HÃY LẤY RA TẤT CẢ CÁC NHÀ CUNG CẤP HÀNG CÓ TÊN CÔNG TY BẮT ĐẦU BẰNG CHỮ A VÀ KHÔNG CHỨA KÝ TỰ b
-- LƯU Ý: [^B] CHỈ CÓ THỂ ĐẠI DIỆN CHO 1 KÝ TỰ KHÔNG THỂ DÙNG '%[^B]%' -> VÌ NÓ SẼ TÌM CHUỖI CÓ ÍT NHẤT 1 KÝ TỰ KHÁC B THÔI
SELECT *
FROM Suppliers
WHERE NOT CompanyName LIKE '%B%' AND CompanyName LIKE 'A%'

