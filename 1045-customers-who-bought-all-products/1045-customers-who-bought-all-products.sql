SELECT customer_id 
FROM Customer
group by customer_id
having count(DISTINCT product_key) = (select count(*) from Product)