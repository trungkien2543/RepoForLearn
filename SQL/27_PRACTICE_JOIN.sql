-- BÀI TẬP 1 (INNER JOIN): LIỆT KÊ TÊN SẢN PHẨM VÀ TÊN NHÀ CUNG CẤP CỦA CÁC SẢN PHẨM ĐÃ ĐƯỢC ĐẶT HÀNG TRONG BẢNG ORDER DETAILS.
-- SỬ DỤNG INNER JOIN ĐỂ KẾT HỢP BẢNG ORDER DETAILS VỚI CÁC BẢNG LIÊN QUAN ĐỂ LẤY THÔNG TIN SẢN PHẨM VÀ NHÀ CUNG CẤP

SELECT DISTINCT P.ProductName, S.CompanyName
FROM [Order Details] AS D
JOIN Products AS P
ON P.ProductID = P.ProductID
JOIN Suppliers AS S
ON S.SupplierID = P.SupplierID

-- BÀI TẬP 2 (LEFT JOIN): LIỆT KÊ TÊN KHÁCH HÀNG VÀ TÊN NHÂN VIÊN PHỤ TRÁCH CỦA CÁC ĐƠN HÀNG TRONG BẢNG ORDERS. 
-- BAO GỒM CẢ CÁC ĐƠN HÀNG KHÔNG CÓ NHÂN VIÊN PHỤ TRÁCH

SELECT O.OrderID, C.CompanyName, E.FirstName + ' ' + E.LastName AS "TÊN NHÂN VIÊN"
FROM Orders AS O
LEFT JOIN Employees AS E
ON O.EmployeeID = E.EmployeeID
LEFT JOIN Customers AS C
ON C.CustomerID = O.CustomerID

-- BÀI TẬP 3 (RIGHT JOIN):

SELECT O.OrderID, C.CompanyName, E.FirstName + ' ' + E.LastName AS "TÊN NHÂN VIÊN"
FROM Orders AS O
RIGHT JOIN Employees AS E
ON O.EmployeeID = E.EmployeeID
RIGHT JOIN Customers AS C
ON C.CustomerID = O.CustomerID

-- Bài tập 4 (FULL JOIN): Liệt kê tên danh mục và tên 
-- nhà cung cấp của các sản phẩm trong bảng "Products". 
-- Bao gồm cả các danh mục và nhà cung cấp không có sản phẩm. 
-- Sử dụng FULL JOIN hoặc kết hợp LEFT JOIN và RIGHT JOIN để lấy  
-- thông tin về danh mục và nhà cung cấp.

SELECT DISTINCT C.CategoryName, S.CompanyName, P.ProductID
FROM Products AS P
FULL JOIN Categories AS C
ON C.CategoryID = P.CategoryID
FULL JOIN Suppliers AS S
ON S.SupplierID = P.SupplierID

-- BÀI TẬP 5: LIỆT KÊ TÊN KHÁCH HÀNG VÀ TÊN SẢN PHẨM ĐÃ ĐƯỢC ĐẠT HÀNG TRONG BẢNG ORDERS VÀ ORDER DETAILS.

SELECT DISTINCT C.CustomerID, ProductName, O.OrderID
FROM Orders AS O
JOIN [Order Details] AS D
ON O.OrderID = D.OrderID
JOIN Customers AS C
ON C.CustomerID = O.CustomerID
JOIN Products AS P
ON P.ProductID = D.ProductID

-- BÀI TẬP 6: LIỆT KÊ TÊN NHÂN VIÊN VÀ TÊN KHÁCH HÀNG CỦA CÁC ĐƠN HÀNG TRONG BẢNG ORDERS. BAO GỒM CẢ CÁC ĐƠN HÀNG KHÔNG CÓ NHÂN VIÊN HOẶC KHÁCH HÀNG TƯƠNG ỨNG

SELECT E.FirstName, C.CompanyName, O.OrderID
FROM ORDERS AS O
LEFT JOIN Employees AS E
ON E.EmployeeID = O.EmployeeID
LEFT JOIN Customers AS C
ON C.CustomerID = O.CustomerID


















