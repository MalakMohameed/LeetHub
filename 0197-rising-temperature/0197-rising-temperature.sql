select w1.id from weather as w1
left join weather as w2 
on DATEDIFF(w1.recordDate, w2.recordDate)=1
where w1.temperature > w2.temperature; 

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna