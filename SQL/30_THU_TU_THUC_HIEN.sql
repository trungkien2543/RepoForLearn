-- 1. FROM
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT
-- 6. ORDER BY
-- 7. LIMIT

--SELECT DISTINCT 9 TOP 11, , 8
--FROM 1
--FULL/L/R 4 JOIN 2 ON 3
--WHERE 5
--GROUP BY 6
--HAVING 7
--ORDER BY 10

select top 3 p.ProductID, o.Discount, o2.ShipCountry --> B7 :chọn cột và dòng cần lấy --> B9: lấy ra top 3
from [dbo].[Products] p --> B1: kiểm tra bảng Products
inner join [dbo].[Order Details] o --> B2: kiểm tra bảng Order Details
on p.ProductID = o.ProductID --> B3: kiểm tra điều kiện từ 2 bảng Products và Order Details
inner join [dbo].[Orders] o2 --> B4: kiểm tra bảng Orders
on o.OrderID = o2.OrderID --> B5: kiểm tra điều kiện từ 2 bảng Orders và Order Details
where o.Discount = 0.25 and o2.ShipCountry = 'Germany' --> B6: kiểm tra các điều kiện WHERE
order by p.ProductID desc --> B8: sắp xếp dữ liệu theo p.ProductID