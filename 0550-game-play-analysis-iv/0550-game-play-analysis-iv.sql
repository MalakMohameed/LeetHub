WITH first_login AS (
    SELECT 
        player_id ,
        MIN(event_date ) AS first_login_date 
    FROM Activity 
    GROUP BY player_id 
) 

SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 
        2
    ) AS fraction   
from Activity as a
join first_login
on a.player_id = first_login.player_id 
and datediff(a.event_date, first_login.first_login_date) = 1



-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna