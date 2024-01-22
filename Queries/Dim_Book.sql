SELECT b.[book_id]
      ,b.[title]
      ,b.[isbn13]
      ,b.[language_id]
      ,b.[num_pages]
      ,b.[publication_date]
      ,b.[publisher_id]
	  ,ba.[author_id]
	  ,[author_name]
	  ,[publisher_name]
	  ,[language_code]
      ,[language_name]
  FROM [gravity_books].[dbo].[book] b 
  LEFT JOIN [gravity_books].[dbo].[book_author] ba
  ON b.book_id = ba.book_id
  LEFT JOIN [gravity_books].[dbo].[author] a
  ON a.author_id = ba.author_id
  LEFT JOIN [gravity_books].[dbo].[publisher] p
  ON p.publisher_id = b.publisher_id
  LEFT JOIN [gravity_books].[dbo].[book_language] bl
  ON bl.language_id = b.language_id

