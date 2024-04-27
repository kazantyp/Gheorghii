create database data_norm;
use data_norm;
create table Surgery(
DoctorID varchar(10),
DoctorName varchar(50),
Region varchar(20),
PatientID varchar (10),
PatientName varchar(50),
SurgeryNumber int, 
Counchil int(20),
Postcode varchar(10),
SlotID varchar(5),
TotalCost Decimal);
drop table Surgery;
create table Surgery(
DoctorID varchar(10),
DoctorName varchar(50),
Region varchar(20),
PatientID varchar (10),
PatientName varchar(50),
SurgeryNumber int, 
Counchil varchar(20),
Postcode varchar(10),
SlotID varchar(5),
TotalCost Decimal);

insert into Surgery (DoctorID, DoctorName, Region, PatientID, PatientName, SurgeryNumber, Counchil, Postcode, SlotID, TotalCost) values 
("D1", "Karl", "West London", "P1", "Rami Kim Nora", 3, "Harrow", "HA9SDE", "A1", 15000),
("D1", "karl", "East London", "P4", "Karamel Sami", 4, "Hackney", "E16AW", "A2", 2500),
("D2", "Mark", "East London", "P5", "Sami Norma", 4, "Hackney", "E16AV", "A3", 1500),
("D2", "Mark", "West London", "P7", "Rose Rami", 5, "Harrow", "HA862E", "A5", 1000);
select * from Surgery;
create table Patient (PatientID varchar(10) not null,
PatientName varchar(50), SlotID varchar(10) not null, TotalCost decimal,
constraint PK_Patient primary key (PatientID, SlotID)); 
insert into Patient (PatientID, PatientName, SlotID, TotalCost) values 
("P1", "Rami", "A1", 1500), ("P2", "Kim", "A2", 1200),
("P3", "Nora", "A3", 1600), ("P4", "Kamel", "A1", 2500),
("P5", "Sami", "A2", 1000), ("P6", "Norma", "A5", 2000),
("P7", "Rose", "A6", 1000);
Select * from Patient;
Show columns from patient;
show tables from data_norm;
select * from patent, surgery;	
select * from patent;
select * from surgery;

