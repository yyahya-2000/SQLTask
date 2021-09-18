SELECT product_name, category_name FROM Products p
left join (SELECT * from Categories c 
 LEFT JOIN ProductCategories pc 
 on c.category_id = pc.category_id) a
 on p.product_id = a.product_id;