select emp1.employee_id, emp1.name, count(emp2.reports_to) as reports_count, round(avg(emp2.age)) as average_age
from employees as emp1 
join employees as emp2
on emp1.employee_id = emp2.reports_to  
group by emp1.employee_id, emp1.name
order by emp1.employee_id ASC