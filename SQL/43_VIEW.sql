-- SỰ TRÌNH BÀY DATA THEO Ý MUỐN ĐƯỢC TRÍCH XUẤT TỪ MỘT HOẶC NHIỀU TABLE/VIEW KHÁC.
-- VIEW KHÔNG LƯU DATA NÊN ĐƯỢC BIẾT ĐẾN VỚI CÁI TÊN BẢNG ẢO
-- Nó không lưu dữ liệu vật lý (trừ một số loại đặc biệt như indexed view), mà chỉ lưu câu truy vấn.

-- CÚ PHÁP

-- CREAT VIEW VIEW_NAME AS
-- SELECT COL1, COL2, ...
-- FROM TABLE_NAME
-- WHERE CONDITION;

CREATE VIEW MONTHLY_SALES AS 
SELECT YEAR(OrderDate) AS 'YEAR', MONTH(OrderDate) AS 'MONTH', COUNT(OrderID) AS 'SO LUONG DON HANG'
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate);

-- TRUY VẤN ĐẾN VIEW
SELECT * FROM MONTHLY_SALES

-- TƯƠNG ĐƯƠNG
SELECT * FROM (
	SELECT YEAR(OrderDate) AS 'YEAR', MONTH(OrderDate) AS 'MONTH', COUNT(OrderID) AS 'SO LUONG DON HANG'
	FROM Orders
	GROUP BY YEAR(OrderDate), MONTH(OrderDate)
) AS TEMP

-->  2 CÂU LỆNH ĐỀU CÓ TỐC ĐỘ CHẠY NHƯ NHAU VÌ VIEW KHÔNG LƯU TRỮ DATA THẬT SỰ NÊN KHI RUN THÌ NÓ PHẢI RUN LẠI CÂU TRUY VẤN

-- CHECK OPTION LÀ MỘT ĐIỀU KIỆN CHO PHÉP BẠN XÁC ĐỊNH RÀNG BUỘC VỀ VIỆC CẬP NHẬT HOẶC CHÈN DỮ LIỆU VÀO VIEW. NÓ ĐẢM BẢO RẰNG 
-- CÁC DÒNG DỮ LIỆU ĐƯỢC CHÈN HOẶC CẬP NHẬT QUA VIEW SẼ TUÂN THEO MỘT ĐIỀU KIỆN CỤ THỂ

-- CHỈ ĐƯỢC UPDATE VIEW KHÔNG CHỨA CÁC PHÉP TOÁN SET,UNION,DISTINCT,HOẶC GROUP BY

-- ƯU ĐIỂM:
-- ĐƠN GIẢN HÓA QUERY, GIỚI HẠN DATA, CUNG CẤP THÊM 1 LỚP BẢO MẬT


SELECT YEAR(O.OrderDate) AS 'NAM', O.EmployeeID, SUM(D.Quantity * D.UnitPrice) AS 'DOANH SO'
FROM Employees AS E
JOIN Orders AS O
ON E.EmployeeID = O.EmployeeID
JOIN [Order Details] AS D
ON D.OrderID = O.OrderID
GROUP BY YEAR(O.OrderDate), O.EmployeeID





 
