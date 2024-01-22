
  UPDATE [dbo].[Meta_Control_Fact_Sales_Load]

   SET [Last_load_date] = ?
 , [Last_Load_OrderLineID_BK]=?
  
 WHERE  [SalesOrderLine] ='OrderLine'


