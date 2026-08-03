select product_name, year, price
from Sales as s, Product as p
where p.product_id = s.product_id
