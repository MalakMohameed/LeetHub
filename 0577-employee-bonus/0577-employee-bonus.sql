SELECT e.name, b.bonus
FROM Employee AS e
LEFT JOIN Bonus as b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna