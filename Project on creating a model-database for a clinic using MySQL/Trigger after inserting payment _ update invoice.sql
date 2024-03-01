DELIMITER $$
create trigger payment_after_insert
after insert on payment
for each row

begin
update invoice_general
set payment_total = payment_total + NEW.amount
where invoice_id = NEW.invoice_id;
END $$

DELIMITER ;