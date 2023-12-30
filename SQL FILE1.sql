use j_jothika;

create table SYST_INFO 
(
Person_id int not null ,
Name varchar(100) not null,
System_no int not null primary key,
ERROR varchar(255),
OS_Name varchar(255)
);
select * from SYST_INFO;

delimiter !!
drop procedure if exists sys_info;!!
create procedure sys_info 
( 
in Person_idInfo int ,
in NameInfo varchar(100) ,
in System_noInfo int ,
in ERRORInfo varchar(255),
in OS_NameInfo varchar(255)
)
begin 
insert into SYST_INFO( Person_id,Name,System_no,ERROR,OS_Name)
values ( Person_idInfo,NameInfo,System_noInfo,ERRORInfo,OS_NameInfo);
end !!
delimiter ;

call sys_info(1,'Abdul Rahman  B',42,'working','windows 8.1 pro');
select * from SYST_INFO;
call sys_info(2,'Arun T',43,'working','windows 8.1');
call sys_info(3,'Gnanagowsalya K',14,'working','windows 10 ProN');
call sys_info(4,'Santhiya S',13,'not supported by this processor type','windows 10 pro');

delimiter &&
drop procedure if exists update_v;&&
create procedure update_v 
( in Person_idInfo int,
in ERRORInfo varchar(255)
)
begin 
update SYST_INFO set ERROR=ERRORInfo where Person_id=Person_idInfo;
end &&
delimiter ;
call update_v(4,'not supported');

delimiter ##
drop procedure if exists ts_update;##
create procedure ts_update 
( in table_n varchar(255),
 in column_n varchar(255),
 in value_n varchar(255),
 in id_n varchar(255),
 in id_INFO int
)
begin 
set @statement=concat('update ',table_n,' set ',column_n,'= \'',value_n,'\' ','where ',id_n,'=',id_INFO);
prepare stmt from @statement;
execute stmt;
end ##
delimiter ;

select * from SYST_INFO;

call ts_update('SYST_INFO','Name','jaya','Person_id',4);

DELETE FROM `j_jothika`.`syst_info`
WHERE ERROR=;
