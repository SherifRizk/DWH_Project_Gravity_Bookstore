SELECT  [Pk_ Book_id_Sk]
      ,[book_id_bk]
  FROM [gravity_books_DWH].[dbo].[Dim_Book]
  where is_current = 1