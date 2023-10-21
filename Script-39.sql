select 'update public.department set sname =* ' ||  fname || ' ' || lname  
  || '* where mgr_ssn= ' || ssn ||';'
from employee 
where ssn in
(select distinct(super_ssn) from employee 
where super_ssn is not null)


/* RESULT */
update public.department set sname ='Franklin Wong' where mgr_ssn like '333445555';
update public.department set sname ='Jennifer Wallace' where mgr_ssn like '987654321';
update public.department set sname ='James Borg' where mgr_ssn like '888665555';

select 'update public.employee set supname =* ' ||  fname || ' ' || lname  
  || '* where super_ssn= ' || ssn ||';'
from employee 
where ssn in
(select distinct(super_ssn) from employee 
where super_ssn is not null)


/* RESULT */
update public.employee set supname ='Franklin Wong' where super_ssn like '333445555';
update public.employee set supname ='Jennifer Wallace' where super_ssn like '987654321';
update public.employee set supname ='James Borg' where super_ssn like '888665555';