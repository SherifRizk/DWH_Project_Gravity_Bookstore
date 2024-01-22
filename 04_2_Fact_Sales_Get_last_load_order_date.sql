SELECT 
  [Last_load_date]
  FROM [gravity_books_DWH].[dbo].[Meta_Control_Fact_Sales_Load]
  where [SalesOrderLine] = 'OrderLine'