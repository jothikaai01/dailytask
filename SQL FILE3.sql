use j_jothika;
show tables;

describe ai_batch01_listj;
describe j_system_info;

alter table ai_batch01_listj rename column SNO to Person_id;
alter table j_system_info rename column SNO to Person_id;

alter table j_system_info add column system_id int not null first;
alter table j_system_info add column _Person_id int not null after system_id;
alter table j_system_info modify column system_id int not null primary Key;
alter table j_system_info add foreign key (_Person_id) references ai_batch01_listj(Person_id);
alter table j_system_info modify column system_no int primary Key;

alter table j_system_info drop column system_id;
 modify column Person_id int foreign key

drop table j_system_info;
create table j_system_info
(
system_id int,
_Person_id int not null ,
Name varchar(100) not null,
System_no int not null primary key,
ERROR varchar(255),
OS_Name varchar(255),
RAM varchar(100),
HARD_DISK_SIZE long,
PROCESSOR varchar(255),
Mouse_Condition varchar(255),
Keyboard_Condition	varchar(255),
internet varchar(255),
foreign key (_Person_id) references ai_batch01_listj(Person_id)
);

show tables;

select * from j_system_info;

insert into j_system_info
( system_id,_Person_id,Name,System_no,ERROR,OS_Name,RAM,HARD_DISK_SIZE,PROCESSOR,Mouse_Condition,
Keyboard_Condition,internet) values (1,1,'Abdul Rahman  B',42,'working','windows 8.1 pro','2 Gb',null,'Intel Pentium','working','workimg','');

insert into j_system_info values
(13,13,'Kayalvizhi M',1,'visual C++2019','Windows 7 Ultimate','4.00 GB','','INTEL CORE i3','Working','working',''),
(22,22,'Sangari S',2,'Working','windows 8.1 pro','2.00 GB','','INTEL Pentium','working','Working',''),
(10,10,'Jayalakshmi R',3,'working','windows 8.1 pro','4.00 GB','','INTEL CORE i3','working','working',''),
(5,5,'Fathima M',4,'visual C++ 2019','windows 7 ultimate ','2.00GB','','Intel Core  i3','working','working',''),
(15,15,'LAVANYA M ',5,'visual C++ 2019','Windows 7 Ultimate','4.00 GB','','Intel Core i3','Working','Working',''),
(24,24,'Saranya N',6,'not supported by this processor type','Windows 7 Professional','2.00 GB','','INTEL CORE i3','Working','Working',''),
(4,4,'Bhavani R',8,'working','windows 10 pro','4.00 GB','','Intel Core i3','working','working',''),
(19,19,'Punithavathi D',9,'visual C++ 2019','windows 8.1 pro','2.00 GB','','Intel Core 2 Duo','working','working',''),
(26,26,'Snega D',10,'working','windows 10 pro','4.00 GB','','intel core i3','working','working',''),
(28,28,'Tamil V',11,'visual C++2019','windows 8.1','4.00 GB','','INTEL CORE i3','working','working',''),
(27,27,'Srinidhi S',12,'visual C++2019','windows 8.1','2.00 GB','','INTEL CORE i3','working','working',''),
(23,23,'Santhiya S',13,'not supported by this processor type','windows 10 pro','4.00 GB','','Intel Core 2 Duo','working','Working',''),
(7,7,'Gnanagowsalya K',14,'working','windows 10 ProN','8.00 GB','','INTEL CORE i5','working','working',''),
(11,11,'Jothika J',15,'working','Windows 8.1 Pro','4.00 GB','','INTEL CORE i3','working','working',''),
(8,8,'Hajeera Sithika L',16,'working','windows 8.1','2GB','','Intel Core 2 Duo','working','working',''),
(6,6,'Ghouse bi S',18,'working','Windows 8.1 Pro','4GB','','INTEL CORE i3',' working','working',''),
(29,29,'Vinu Andrews S',33,'working','windows 8.1','2gb','','Intel Core 2 Duo',' working','working',''),
(21,21,'Roobankumar  K',34,'processor not supported','windows 7 ultimate','2.00GB','','intel core 2 duo','working','working',''),
(3,3,'Aysha sithika L',17,'WORKING','windows 10 pro','2GB','','INTEL CORE i3','working','working',''),
(18,18,'Priya S',23,'not  support by this processer tryp','windows 7 proffessional','4.00GP','','INTEL CORE i3','working','working',''),
(14,14,'Komaladevi. S',7,'visualc++2019','Windows 8.1 Pro','4.00  GB','','Intel Pentium','Working','Working',''),
(12,12,'Kalaiarasan A',32,'working','Windows 8.1 Pro','4.00 GB','','INTEL CORE i3','working','working',''),
(2,2,'Arun T',43,'working','windows 8.1','2.00GB','','Intel Core 2 Duo','working','working',''),
(17,17,'Prasanth P',35,'C++2019','Windows 10 Pro','2.00 GB','','Intel Pentium','Working','working',''),
(30,30,'Yogarajan K',36,'Not supported by the processor','windows 10 pro','2 GB RAM ','','Intel Pentium','working','working',''),
(25,25,'Saravanan M',37,'Working','Windows 8.1 Pro','4.00 GB','','INTEL CORE i3','Working','Working',''),
(9,9,'HARIHARAN A',38,'working','windows 8.1 pro','4.00 GB','','INTEL CORE i3','working','working',''),
(20,20,'Raghul S',39,'not supported by the processor','windows 7','2.00 GB','','Intel Pentium','Working','working',''),
(16,16,'Narayanan S',19,'Working','windows 8.1','4.00GB','','INTEL CORE i3','working','working','');


select * from j_system_info;
select * from ai_batch01_listj;

select * from ai_batch01_listj j1 right join j_system_info j2 on j1.Person_id=j2._Person_id;