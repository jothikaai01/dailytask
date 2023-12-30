use ai_jothikar;
create table hospital_list (s_no int not null primary key, h_name varchar(255), location varchar(255));
select * from hospital_list;
show tables;
select * from players_list;

delimiter $$
create procedure j2()
begin 
  select * from hospital_list;
end $$
delimiter ;

insert into hospital_list(s_no, h_name, location) value (1,'Apollo Speciality Hospitals','Cbennai Bypass Road');
call j2();

insert into hospital_list value (2,'Maruti Hospital','Tennur');

update hospital_list set location='Chennai Bypass Road' where s_no=1;

insert into hospital_list value (3,'Kauvery Hospital','Trichy');
insert into hospital_list value (4,'Jeyam Multi Speciality Hospital','Woraiyur');
call j2();

update hospital_list set location='Trichy' where s_no>=1;
update hospital_list set location='Tennur' where s_no in (2,4);
alter table hospital_list add column out_patients varchar(50);
alter table hospital_list add column in_patients varchar(50);
call j2();

update hospital_list set out_patients='10';

update hospital_list set out_patients=
case s_no
when 1 then '10'
when 2 then '14'
when 3 then '6'
when 4 then '8'
end,
in_patients=
case s_no
when 1 then '25'
when 2 then '29'
when 3 then '30'
when 4 then '41'
end
call j2();
alter table hospital_list add column h_date date;
alter table hospital_list modify column h_time varchar(100);
update hospital_list set h_date='2023-12-02';

update hospital_list set h_time=
case s_no
when 1 then '11:00am'
when 2 then '10:30am'
when 3 then '02:00pm'
when 4 then '03:30pm'
end
where s_no in(2,4);

call j2();

insert into hospital_list (s_no, h_name, location, out_patients, in_patients, h_date, h_time) value (5,'Motherhood Hospital','Tennur','7','39','2023-12-02','11:15am');
insert into hospital_list value (6,'JJ Hospital','KK Nagar','5','69','2023-12-02','01:15pm');
insert into hospital_list value (6,'JJ Hospital','KK Nagar','5','69','2023-12-02','0:15pm');