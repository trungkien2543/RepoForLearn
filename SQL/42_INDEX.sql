-- LÀ MỘT CẤU TRÚC DỮ LIỆU ĐƯỢC DÙNG ĐỂ ĐỊNH VỊ VÀ TRUY CẬP NHANH NHẤT VÀO DỮ LIỆU TRONG CÁC BẢNG DATABASE
-- ĐƯỢC DÙNG ĐỂ TỐI ƯU HIỆU SUẤT

-- CẤU TRÚC CỦA SINGLE INDEX
 
-- A SINGLE INDEX = SEARCH KEY + DATA REFERENCE

-- 1/ CÁC KIỂU INDEX

-- HASH INDEX
-- ĐƯỢC TỔ CHỨC DƯỚI DẠNG KEY-VALUE LÀ KẾT QUẢ HASH VALUE CỦA COL ĐƯỢC ĐÁNH INDEX VÀ VALUE SẼ CHỨA 1 CON TRỎ ĐẾN CHÍNH XÁC ROW TƯƠNG ƯỚNG
-- RẤT MẠNH VỚI =, !=, IN, NOT IN
-- TUY NHIÊN, KHÔNG HỮU ÍCH VỚI >, <, LIKE, ORDER BY

-- B-TREE
-- TỔ CHỨC DƯỚI DẠNG CÂY
-- CƠ CHẾ ĐÁNH INDEX : 
--		1. TÌM VỊ TRÍ ĐỂ CHÈN DỮ LIỆU MỚI
--		2. CHÈN DỮ LIỆU MỚI VÀO LÁ PHÙ HỢP
--		3. PHÂN CHIA NÚT LÁ TRÀN
--		4. LẬP LẠI QUÁ TRÌNH NẾU CẦN THIẾT

-- 2/ CÚ PHÁP

--CREATE INDEX INDEX_NAME
--ON TABLE_NAME (COL1, COL2, ...)

--CREATE UNIQUE INDEX INDEX_NAME
--ON TABLE_NAME (COL1, COL2, ...)


-- 3/ LƯU Ý
-- INDEX THÌ LÀM TỐN THÊM BỘ NHỚ
-- LÀM CHẬM CÁC HOẠT ĐỘNG KHÁC KHI INSERT, UPDATE => INDEX CẦN THỜI GIAN ĐỂ ĐIỀU CHỈNH
-- ĐÁNH INDEX BỪA BÃI, LỘN XỘN CÓ THỂ GÂY RA GIẢM HIỆU NĂNG HOẠT ĐỘNG

-- 4/ TÌNH HUỐNG NÊN ĐÁNH INDEX 
-- NHỮNG BẢNG CÓ DỮ LIỆU VỪA VÀ LỚN (> 100 NGHÌN)
-- CÁC COLUMN THƯỜNG XUYÊN SỬ DỤNG TRONG MỆNH ĐỀ WHERE, JOIN VÀ ORDER BY

-- 5/ CÁC TRƯỜNG HỢP KHÔNG NÊN ĐÁNH INDEX
-- CƠ SỞ DỮ LIỆU NHỎ, ÍT
-- DỮ LIỆU THAY ĐỔI THƯỜNG XUYÊN
-- CỘT CHỨA DỮ LIỆU KHÔNG ĐA DẠNG
-- CỘT CHỨA DỮ LIỆU TEXT QUÁ DÀI (VÍ DỤ NHƯ DESCRIPTION)

-- 6/ TỰ ĐỘNG ĐÁNH INDEX
-- KHÓA CHÍNH, KHÓA NGOẠI, CÁC CỘT UNIQUE

-- THỰC HÀNH 1:
-- RESTORE LẠI CƠ SỞ DỮ LIỆU MỚI
-- https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms

-- BẬT HIỂN THỊ THỐNG KÊ TÀI NGUYÊN I/O
SET STATISTICS IO ON;

-- TRUY VẤN
SELECT *
FROM Sales.SalesOrderDetail
WHERE CarrierTrackingNumber = '1B2B-492F-A9'

SET STATISTICS IO OFF;

-- TẠO INDEX 
CREATE INDEX INX_CARRIER_TRACKING_NUMBER
ON [Sales].[SalesOrderDetail] ([CarrierTrackingNumber])

-- BÀI TẬP
SET STATISTICS IO ON;

SELECT *
FROM Person.Address
WHERE AddressLine1 LIKE '%V%'

-- TẠO INDEX
CREATE INDEX INX_ADDRESS
ON Person.Address (AddressLine1)






















