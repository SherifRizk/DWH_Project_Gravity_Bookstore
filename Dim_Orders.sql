
SELECT co.[order_id]
      ,co.[order_date]
      ,co.[customer_id]
      ,co.[shipping_method_id]
	  ,oh.[history_id]
      ,oh.[status_id]
      ,oh.[status_date]
	  ,os.[status_value]
      ,m.[method_name]
      ,m.[cost]
	  ,a.[address_id]
      ,a.[street_number]
      ,a.[street_name]
      ,a.[city]
      ,a.[country_id]
	  ,c.[country_name]
  FROM [gravity_books].[dbo].[cust_order] co
  LEFT JOIN [gravity_books].[dbo].[order_history] oh 
  ON co.order_id = oh.order_id
  LEFT JOIN [gravity_books].[dbo].[order_status] os
  ON oh.status_id = os.status_id
  LEFT JOIN [gravity_books].[dbo].[shipping_method] m
  ON m.method_id = co.shipping_method_id
  LEFT JOIN [gravity_books].[dbo].[address] a
  ON co.dest_address_id = a.address_id
  LEFT JOIN [gravity_books].[dbo].[country] c
  ON a.country_id = c.country_id

