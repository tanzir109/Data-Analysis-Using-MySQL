drop procedure if exists invoice_total_per_client;
delimiter $$
create procedure invoice_total_per_client(patient_id int)
begin
select sum(invoice_total)
from invoice_general ig
where ig.patient_id = patient_id;
end $$
delimiter ;
