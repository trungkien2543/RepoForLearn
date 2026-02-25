-- DÙNG ĐỂ XÓA DỮ LIỆU TRONG TABLE

--SELECT *
--INTO CUSTOMERS1
--FROM Customers

SELECT *
FROM CUSTOMERS1

-- XÓA ĐI KHÁCH HÀNG 'ALFKI'

DELETE FROM CUSTOMERS1 WHERE [CustomerID] LIKE 'ALFKI'


-- XÓA TOÀN BỘ KHÁCH HÀNG CÓ QUỐC GIA BẮT ĐẦU BẰNG U
SELECT DISTINCT [Country] FROM CUSTOMERS1


DELETE FROM CUSTOMERS1 WHERE [Country] LIKE 'U%'

-- XÓA SẠCH 1 BẢNG

DELETE FROM CUSTOMERS1

-- CÂU HỎI:
-- DELETE FROM KHÁC GÌ CÂU LỆNH TRUNCATE

--Đặc điểm:
--Xoá từng dòng
--Có thể dùng WHERE
--Ghi log từng dòng
--Có thể rollback
--Không reset IDENTITY

--Đặc điểm:
--Xoá toàn bộ dữ liệu
--Không dùng WHERE
--Xoá theo page data
--Nhanh hơn nhiều
--Reset IDENTITY về ban đầu




