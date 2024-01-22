SELECT 
   [Last_Load_OrderLineID_BK]
  FROM [gravity_books_DWH].[dbo].[Meta_Control_Fact_Sales_Load]
  where [SalesOrderLine] = 'OrderLine'