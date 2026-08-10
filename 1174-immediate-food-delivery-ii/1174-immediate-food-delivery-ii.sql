SELECT 
    ROUND(AVG(t1.order_date = t1.customer_pref_delivery_date) * 100, 2) AS immediate_percentage 
FROM Delivery AS t1 
JOIN (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) AS t2 
  ON t1.customer_id = t2.customer_id 
 AND t1.order_date = t2.first_order_date;


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna