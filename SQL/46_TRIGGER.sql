-- LÀ MỘT ĐOẠN THỦ TỤC SQL ĐƯỢC THỰC THI TỰ ĐỘNG KHI MỘT SỰ KIỆN CỤ THỂ XẢY RA TRÊN MỘT BẢNG HOẶC DẠNG VIEW
-- CÁC SỰ KIỆN INSERT, UPDATE, DELETE, DDL, DML
-- CÓ 2 LOẠI LÀ BEFORE VÀ AFTER

-- CÚ PHÁP

-- CREATE TRIGGER TRIGGER_NAME
-- ON TABLE_NAME
-- FOR {INSERT | UPDATE | DELETE}
-- AS
-- BEGIN
-- 	     CODE THỰC THI
-- END;

-- CÁC LỚP TRIGGER TRONG SQL SERVER

-- 1. DDL TRIGGER: SẼ KÍCH HOẠT KHI NHỮNG SỰ KIỆN BỊ THAY ĐỔI CẤU TRÚC NHƯ TẠO, SỬA ĐỔI, BỎ BẢNG.
-- 2. DML TRIGGER: KÍCH HOẠT KHI THAY ĐỔI DỮ LIỆU

-- LƯU Ý

-- AFTER: ĐƯỢC KÍCH HOẠT SAU KHI INSERT, UPDATE, HOẶC DELETE

-- FOR: ĐƯỢC SỬ DỤNG ĐỂ KIỂM TRA HOẶC CAN THIỆP DỮ LIỆU TRƯỚC KHI ĐƯỢC CẬP NHẬT

-- INSTEAD OF: ĐƯỢC DÙNG ĐỂ THAY THẾ MỘT CÂU LỆNH KHÁC

-- Khi insert thì dòng mới thêm sẽ có trong bảng inserted, update thì có 2 bảng là inserted và deleted

-- THỨ TỰ CỦA TRIGGER


-- VIẾT HOA TÊN SẢN PHẨM SAU KHI THÊM MỚI

CREATE TRIGGER MAKE_PRODUCT_NAME_UPPERCASE
ON [dbo].[Products]
AFTER INSERT
AS
BEGIN
	UPDATE Products
	SET ProductName = UPPER(i.ProductName) 
	FROM inserted i
	WHERE Products.ProductID = i.ProductID
END;

INSERT Products(ProductName, SupplierID, CategoryID)
VALUES ('test name',1,1);


-- KHÔNG ĐƯỢC CẬP NHẬT DISCOUNT NHỎ HƠN 0
CREATE TRIGGER PREVENT_NEGATIVE_DISCOUNTED
ON [dbo].[Products]
FOR UPDATE
AS
BEGIN
	IF UPDATE(Discontinued)
	IF EXISTS (SELECT 1 FROM inserted WHERE Discontinued < 0)
	BEGIN 
		THROW 50001, N'Discontinued KHÔNG THỂ NHỎ HƠN 0', 1;
	END
END;

UPDATE Products
SET Discontinued = -1
WHERE ProductID = 79

-- THROW error_number, message, state;

-- VIẾT TRIGGER ĐỂ CẬP NHẬT SỐ LƯỢNG TỒN KHO KHI MỘT CHI TIẾT ĐƠN HÀNG MỚI ĐƯỢC THÊM VÀO
CREATE TRIGGER UPDATE_PRODUCT_INVENTORY
ON [dbo].[Order Details]
AFTER INSERT
AS
BEGIN
	UPDATE P
	SET UnitsInStock = UnitsInStock - T.[TOTAL QUANTITY]
	FROM Products AS P
	JOIN (
		SELECT I.ProductID, SUM(Quantity) AS 'TOTAL QUANTITY'
		FROM inserted AS I
		GROUP BY I.ProductID
	) AS T
	ON T.ProductID = P.ProductID
END;

INSERT INTO [Order Details]
VALUES (10248,78,10,50,0)

-- ƯU ĐIỂM
-- BẮT LỖI Ở MỨC BUSINESS, THAY THẾ VIỆC THỰC HIỆN NHỮNG CÔNG VIỆC HẸN GIỜ THEO LỊCH, KIỂM SOÁT NHỮNG THAY ĐỔI TRONG BẢNG

-- NHƯỢC ĐIỂM
-- CHỈ LÀ MỘT PHẦN MỞ RỘNG KIỂM TRA, CHỈ HOẠT ĐỘNG NGẦM Ở CSDL, THƯỜNG XUYÊN THỰC HIỆN CÓ THỂ KHIẾN HỆ THỐNG BỊ CHẬM LẠI

-- BÀI TẬP 
-- 1. THÊM TRIGGER ĐỂ SAU KHI THÊM HOẶC UPDATE SẢN PHẨM THÌ TỰ ĐỘNG CẬP NHẬT LAST MODIFIED
CREATE TRIGGER UPDATE_LASTMODIFIED
ON [dbo].[Products]
AFTER INSERT, UPDATE
AS 
BEGIN
	UPDATE P
	SET P.[LastModified] = GETDATE()
	FROM Products AS P, inserted AS I
	WHERE P.ProductID = I.ProductID
END;

UPDATE Products
SET ProductName = 'MI'
WHERE ProductID = 78

INSERT Products(ProductName, SupplierID, CategoryID)
VALUES ('test name',1,1);

-- TẠO TRIGGER INSTEAD OF DELETE KIỂM TRA XEM CÓ ĐƯỢC XÓA KHÁCH HÀNG HAY KHÔNG
SELECT *
FROM Customers AS C
LEFT JOIN Orders AS O
ON O.CustomerID = C.CustomerID
WHERE O.OrderID IS NULL




CREATE TRIGGER CHECK_ORDERS_OF_CUSTOMER_BEFORE_DELETE
ON [dbo].[Customers]
INSTEAD OF DELETE
AS
BEGIN
	IF EXISTS(
		SELECT 1 FROM Orders AS O, deleted AS D
		WHERE O.CustomerID = D.CustomerID
	)
	BEGIN
		THROW 50001, N'KHÔNG ĐƯỢC XÓA KHÁCH ĐÃ CÓ ĐƠN HÀNG', 1;
	END
	ELSE
	BEGIN
		DELETE C
		FROM Customers C
		JOIN deleted D ON C.CustomerID = D.CustomerID;
	END
END;

-- XÓA KHÁCH HÀNG
DELETE FROM Customers WHERE  CustomerID = 'ALFKI'

DELETE FROM Customers WHERE  CustomerID = 'KH125'

-- TẠO TRIGGER KHÔNG CHO PHÉP ĐẶT HÀNG NHIỀU HƠN SỐ LƯỢNG TỒN KHO
CREATE TRIGGER CHECK_UNIT_IN_STOCK
ON [dbo].[Order Details]
FOR INSERT, UPDATE
AS
BEGIN 
	IF EXISTS(
		SELECT 1
		FROM Products AS P
		JOIN (
			SELECT 
                I.ProductID,
                SUM(I.Quantity - ISNULL(D.Quantity,0)) AS QuantityChange
            FROM inserted I
            LEFT JOIN deleted D 
                ON I.ProductID = D.ProductID
            GROUP BY I.ProductID
		) AS T
		ON T.ProductID = P.ProductID
		WHERE P.UnitsInStock < T.QuantityChange
	)
	BEGIN
		THROW 500001, 'SỐ LƯỢNG SẢN PHẨM KHÔNG ĐỦ ĐỂ THÊM MỚI HOẶC CẬP NHẬT', 1
	END;
END;


INSERT INTO [Order Details]
VALUES (10248,79,10,60,0)

UPDATE D 
SET D.Quantity = 60
FROM [Order Details] AS D
WHERE D.ProductID = 78 AND D.OrderID = 10248


EXEC sp_settriggerorder
    @triggername = 'UPDATE_PRODUCT_INVENTORY',
    @order = 'LAST',
    @stmttype = 'INSERT';

































































