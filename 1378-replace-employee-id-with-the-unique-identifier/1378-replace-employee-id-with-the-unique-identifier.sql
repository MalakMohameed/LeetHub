select unique_id , name 
from Employees as Emp left join EmployeeUNI as EmpUNI
on EmpUNI.id = Emp.id;