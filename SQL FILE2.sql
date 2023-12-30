use j_jothika;

delimiter &&
drop procedure if exists delete_v;&&
create procedure  delete_v
( 
in ERRORInfo varchar(255)
)
begin 
DELETE FROM `j_jothika`.`syst_info`
WHERE ERROR=ERRORInfo;

end &&
delimiter ;
call  delete_v('not supported');
select * from syst_info;

delimiter ##
drop procedure if exists drop_a;##
create procedure drop_a(
in table_n varchar(200), 
in column_n varchar(200))
begin
set @statement=concat(' alter table ',table_n,' drop column ',column_n);
prepare stmt from @statement;
execute stmt;
end ##
delimiter ;

call drop_a('syst_info','Ram');
alter table syst_info add column Ram varchar(100);

delimiter $$
drop procedure if exists add_a;$$
create procedure add_a(
in table_n varchar(200), 
in column_n varchar(200))
begin
set @statement=concat(' alter table ',table_n,' add column ',column_n);
prepare stmt from @statement;
execute stmt;
end $$
delimiter ;
call add_a('syst_info','Ram');