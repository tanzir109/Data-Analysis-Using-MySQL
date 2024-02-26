create or replace view number_of_patient_per_doctor as
select doctor_employee_id, s.first_name, jt.title, count(admission_id) total
from admission a
join staff s
on a.doctor_employee_id = s.employee_id
join job_title jt using(title_id)
group by doctor_employee_id, s.first_name
