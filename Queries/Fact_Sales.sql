SELECT o.[line_id]
      ,c.[order_id]
      ,o.[book_id]
      ,o.[price]
	  ,c.[order_date]
      ,c.[customer_id]
	  , sm.cost
  FROM [gravity_books].[dbo].[cust_order] c
  LEFT join [gravity_books].[dbo].[order_line] o
  on c.order_id = o.order_id
  LEFT join [gravity_books].[dbo].[shipping_method] sm
  on sm.method_id = c.shipping_method_id
  
   where o.line_id >  --user variable last_load_date
   and c.order_date >=       --user variable last_load_date
   and c.order_date <    --System variable startTime
  

  

