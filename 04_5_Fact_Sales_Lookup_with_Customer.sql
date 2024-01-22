SELECT [Pk_customer_id_Sk]
      ,[customer_id_bk]
     
  FROM [gravity_books_DWH].[dbo].[Dim_customers]
  where is_current = 1