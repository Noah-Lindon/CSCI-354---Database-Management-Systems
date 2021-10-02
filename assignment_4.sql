#1. Get supplier names and numbers for all suppliers who supplied P3 and whose name begins with letter A
/*select S.sname, S.sid
from supplier as S, part as P, spj
where S.sid = spj.supplier_sid AND P.pid=spj.part_pid AND spj.part_pid='P3' AND S.sname LIKE 'A%'*/

#2. Get supplier names and numbers for all suppliers whose name begins with letter A and who supplied parts whose name begins with letter S
/*select distinct S.sname, S.sid
from supplier as S, part as P,
where S.sname LIKE 'A%' AND P.pname LIKE 'S%'*/

/*select distinct S.sname, S.sid
from supplier as S, part as P, spj
where S.sid=spj.supplier_sid AND Sname LIKE 'A%' AND P.pname LIKE 'S%'*/

#3. Get supplier names for suppliers who supplied for J2 (Use a sub query)
/*select S.sname
from supplier as S
where S.sid IN (select spj.supplier_sid from spj where spj.job_jid='J2')*/

/*select SName
from supplier as S
where 'J2' IN (select job_jid from spj, where supplier.SID=spj.Supplier_SID)*/

#4. Get supplier names for suppliers who supplied for jobs in Athens (Use a sub query)
/*select S.sname
from supplier as S
where S.sid IN (select spj.supplier_sid from spj, job where job.jid=spj.job_jid AND job.city='Athens')*/

/*select S.sname
from supplier as S
where 'Athens' IN (select job.city from job, spj where job.jid=spj.jid AND S.sid=spj.sid*/

#5. Get part names for parts that are not supplied for J3 (Use a sub query)
/*select P.pname
from part as P
where P.pid NOT IN (select spj.part_pid from spj, part as P where spj.part_pid = P.pid AND spj.job_jid='J3')*/

/*select P.pname
from part as P
where P.pid NOT IN (select spj.part_pid from spj where spj.job_jid = 'J3')*/

#6. Get supplier numbers for suppliers with status lower than that of S1
/*select SID
from supplier where status < 20*/

/*select SID
from supplier
where supplier.status < (select supplier.status from supplier where supplier.sid='S1')*/

#7. Get supplier numbers and names for suppliers whose status is greater than status values of
# all suppliers in located Paris
/*select S.sID, S.sname
from supplier as S
where status > (select max(status) from supplier where supplier.city='Paris')*/

#8. Caclulate each supplier's sales quantity and get the sales person's name if the sales person
# supplies parts more than 1,000 units in total. (Inner join: supplier and spj)
/*select S.sname, SUM(spj.qty) as Total_Quantity
from supplier as S
join S.sid=spj.supplier_sid
on S.side=spj.supplier_sid
group by S.sname
having SUM(spj.qty)> 1000*/

#9. Get job numbers for jobs whose city is first in the alphabetical list of the job cities
/*select job.jid
from job
where job.city IN (select MIN(job.city) from job)*/

/*select job.jid
from job
where job.city IN (select MIN(job.city) from job where job.city LIKE 'A%')*/

#10. Increase the status values of suppliers by 5 who are located in Paris
/*select S.status+5 as Increase_Status
from supplier as S
where S.city='Paris'*/

#11. Change the name to 'Hammer' of parts that are Red and located in London and
# whose name was Screw (Use update and Set Operator)
/*update part
set part.pname='Hammer'
where part.Color='Red' AND part.city='London' AND part.pname='Screw'*/

#12. Delete all jobs in Rome and all corresponding part shipments (Use 2 queries)
delete from spj
where spj.job_JID IN (select job.jid from job where job.city='Rome')
