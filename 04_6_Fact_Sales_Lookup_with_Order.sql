SELECT [Pk_order_id_Sk]
      ,[order_id_bk]
  
  FROM [gravity_books_DWH].[dbo].[Dim_Order]
  where is_currnt = 1