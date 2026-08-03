SELECT a1.name 
FROM Employee AS a1
LEFT JOIN Employee AS a2
ON a1.id = a2.managerId
GROUP BY a1.id 
HAVING COUNT(a1.id) >= 5

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna