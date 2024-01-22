SELECT cst.[customer_id]
      ,[first_name]
      ,[last_name]
      ,[email]
	  ,ca.[address_id]
      ,ca.[status_id]
	  ,adds.[address_status]
      ,a.[street_number]
      ,a.[street_name]
      ,a.[city]
      ,a.[country_id]
	  ,c.[country_name]
  FROM [gravity_books].[dbo].[customer] cst
  LEFT JOIN [gravity_books].[dbo].[customer_address] ca
  ON  ca.customer_id = cst.customer_id
  LEFT JOIN [gravity_books].[dbo].[address_status] adds
  ON  adds.status_id = ca.status_id
  LEFT JOIN [gravity_books].[dbo].[address] a
  ON  ca.address_id= a.address_id
  LEFT JOIN [gravity_books].[dbo].[country] c
  ON a.country_id = c.country_id

 