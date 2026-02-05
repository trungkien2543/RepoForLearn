-- DẤU % ĐỂ ĐẠI DIỆN CHO KHÔNG, MỘT HOẶC NHIỀU KÝ TỰ
-- DẤU _ ĐỂ ĐẠI DIỆN CHO MỘT KÝ TỰ ĐƠN

-- HÃY LỌC RA TẤT CẢ CÁC KHÁCH HÀNG ĐẾN TỪ CÁC QUỐC GIA BẮT ĐẦU BẰNG CHỮ A 
SELECT *
FROM Customers
WHERE Country LIKE 'A%'

-- LẤY DANH SÁCH CÁC ĐƠN ĐẶT HÀNG ĐƯỢC GỬI ĐẾN TỪ THÀNH PHỐ CÓ CHỨA CHỮ a
SELECT *
FROM Orders
WHERE ShipCity LIKE '%a%'

-- LỌC RA TẤT CẢ CÁC ĐƠN HÀNG VỚI ĐIỀU KIỆN:
-- SHIPCOUNTRY LIKE 'U_'
-- SHIPCOUNTRY LIKE 'U%'
SELECT *
FROM Orders
WHERE ShipCountry LIKE 'U_'

SELECT *
FROM Orders
WHERE ShipCountry LIKE 'U%'

-- BÀI TẬP
-- HÃY LẤY RA TẤT CẢ CÁC NHÀ CUNG CẤP HÀNG CÓ CHỮ 'B' TRONG TÊN CỦA CÔNG TY
SELECT *
FROM Suppliers
WHERE CompanyName LIKE '%B%'


--Challenge 1: Write an SQL statement to list employees fullname with the letter "e" in the last name 
--and born from 1952-01-01 to 1962-12-31, 
--arrange in A-Z order by first Name
--taking only the first 5 lines
SELECT TOP 5 *
FROM Employees
WHERE LastName LIKE '%E%' AND BirthDate BETWEEN '1952-01-01' AND '1962-12-31'
ORDER BY FirstName


-- Challenge 2: Write an SQL statement to list employees fullname with 'U__' (two underscores) in the [Country]
-- and start working from 1992-03-23 to 1994-12-31
-- agrange in Z-A order by the last name
SELECT *
FROM Employees
WHERE Country LIKE 'U__' AND HireDate BETWEEN '1992-03-23' AND '1994-12-31'
ORDER BY LastName DESC









