# 1. Retrieve Joyce A. English’s SSN
#select SSN, FName, Minit, LName
#from employee
#where FName = 'Joyce' AND Minit = 'A' AND LName = 'English'

# 2. Retrieve employees’ first name, middle initial, and last name who were born after 1960.
#select FName, Minit, LName, DOB
#from employee
#where DOB > '1960-12-31'
# 3. Retrieve employees’ SSN who works more than 20 hours
#select ESSN
#from works_on
#where Hours > 20
# 4. Retrieve Franklin T. Wong’s son’s name

#select
#emp.FName, emp.Minit, emp.LName, dep.Dependent_Name, dep.Sex, dep.Relationship
#from dependent dep
#inner join employee emp on emp.SSN = dep.Employee_SSN
#where emp.FName = 'Franklin' AND emp.Minit = 'T' AND emp.LName = 'Wong' AND dep.Sex = 'M'

# 5. Retrieve Project names which the research department controls
select pro.Pname, dep.Dname, pro.DNUM
from project pro
inner join department dep on pro.DNUM = dep.Dnumber
where dep.Dname = 'Research'