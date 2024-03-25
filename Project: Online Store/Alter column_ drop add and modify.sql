-- drop and then add column "cause_of_return" to the table "return_items"
-- modify it by changing varchar(50) to varchar(100) and placing the column after unit_price column

alter table return_items
drop column cause_of_return;

alter table return_items
add column cause_of_return varchar(50) not null after unit_price;

alter table return_items
modify column cause_of_return varchar(100) default " "