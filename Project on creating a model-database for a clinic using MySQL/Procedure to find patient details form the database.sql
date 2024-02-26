drop procedure if exists patient_details;
delimiter $$
create procedure pateint_details(patient_id int)
begin
select p.first_name as patient_first_name, p.last_name as patient_last_name, s.first_name as doctors_first_name, d.name
from patient p
join admission a using(patient_id)
join staff s on
a.doctor_employee_id = s.employee_id
join department d using(department_id)
where p.patient_id = patient_id;
end $$
delimiter ;
