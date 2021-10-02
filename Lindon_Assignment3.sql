# Noah Lindon
# CSCI 354
# 2/21/20
#1. Retrieve the DOB and address of the employee(s) whose name is ‘John B. Smith’.
/*select dob ,address
from mydb.employee
where fname ="john" and minit ="b" and lname = "smith";*/

#2. Retrieve the name and address of all employees who work for the ‘Research’ department
/*select fname,minit,lname,address 
from mydb.employee, mydb.department
where dname='research' AND employee.department_dnumber=department.dnumber;*/

#3. For every project located in ‘Stafford’, list the project number, the controlling department number,
# and the department manager’s last name, address, and DOB
/*select pnumber, project.department_dnumber as dnumber,lname,address,dob
from mydb.project, mydb.employee, mydb.department
where plocation= "stafford" and project.department_dnumber=department.dnumber
and employee.ssn=department.employee_ssn;*/
 
#4. For each employee, retrieve the employee’s first and last name, and the first and last name 
# of his or her immediate supervisor
/*select e.fname , e.lname, s.fname,s.lname
from mydb.employee as e , mydb.employee as s
where e.employee_ssn = s.ssn;*/

#5. Retrieve all employees whose address is in Houston, Texas 
/*select fname, lname, address
from mydb.employee
WHERE address like '%Houston%';*/

#6. Retrieve all employees who were born during the 1950s
/*select  fname, lname 
from mydb.employee
where dob like '%195_%';*/

#7. Show the resulting salaries if every employee working on the ‘ProductX’ project is given 
# a 10% raise 
/*SELECT distinct fname,lname ,salary*1.1 as increased_salary
FROM mydb.employee , mydb.project,mydb.works_on
where project.pnumber=works_on.project_pnumber and pname='productx' and employee.ssn=works_on.employee_ssn;*/

#8. Retrieve all employees in department 5 whose salary is between $30,000 and $40,000
/*select * from mydb.employee
where department_dnumber = '5' and salary between 30000 and 40000;*/

#9. Retrieve a list of employees and the projects they are working on, order by department and 
# within each department, order alphabetically by last name and first name
select  fname, lname,pname,dname
from mydb.employee, mydb.department,mydb.project,mydb.works_on
where employee.ssn=works_on.employee_ssn and project.Pnumber=works_on.project_Pnumber and department.dnumber=project.department_dnumber
order by dname, lname asc;