SELECT s.user_id, ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END),2) AS confirmation_rate
FROM signups as s
LEFT JOIN confirmations as c
ON s.user_id = c.user_id
GROUP BY s.user_id
ORDER BY confirmation_rate ASC;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna