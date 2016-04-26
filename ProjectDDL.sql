CREATE TABLE Person
( 
personID 		varchar(20) NOT NULL,
firstName 		varchar(20),
lastName 		varchar(20),
birthDate 		date,
phone 			varchar(10),
streetAddress 	varchar(20),
city 			varchar(20),
state 			varchar(2),
zipCode 		varchar(10),
constraint fk_State_Person foreign key (state) references State(state),
constraint pk_Person primary key (personID)
);

create table State
(
state varchar(2),
constraint pk_State primary key (state)
);

CREATE TABLE Employee
(
employeeID 	VARCHAR(20),
hireDate 	DATE,
CONSTRAINT fk_Person_Employee foreign key(employeeID) references Person(personID),
CONSTRAINT pk_Employee PRIMARY KEY (employeeID)
);

create table Patient
(
patientID 	varchar(20),
contactDate date,
constraint fk_Person_Patient foreign key(patientID) references Person(personID),
constraint pk_Patient primary key (patientID)
);

alter table Patient
add treatingPhysicianID varchar(20);

alter table Patient
add constraint fk_Physician_Patient foreign key (treatingPhysicianID) references Physician(physicianID);

create table Physician
(
physicianID 	varchar(20),
specialty 		varchar(20),
pagerNumber 	varchar(20),
constraint fk_Person_Physician foreign key(physicianID) references Person(personID),
constraint pk_Physician primary key (physicianID)
);

create table Volunteer
(
volunteerID varchar(20),
constraint fk_Person_Volunteer foreign key(volunteerID) references Person(personID),
constraint pk_Volunteer primary key (volunteerID)
);

create table Nurse
(
nurseID 		varchar(20),
certificate 	bool,
careCenterName 	varchar(20),
constraint fk_Employee_Nurse foreign key(nurseID) references Employee(employeeID),
constraint pk_Nurse primary key (nurseID)
);

alter table Nurse 
add constraint fk_CareCenter_Nurse foreign key (careCenterName) references CareCenter(careCenterName);

create table RegisteredNurse
(
nurseID varchar(20),
constraint fk_Nurse_RegisteredNurse foreign key(nurseID) references Nurse(nurseID),
constraint pk_Nurse primary key (nurseID)
);

create table CareCenter
(
careCenterName 		varchar(20),
careCenterLocation 	varchar(20),
headNurseID 		varchar(20),
constraint fk_RegisteredNurse_CareCenter foreign key (headNurseID) references RegisteredNurse(nurseID),
constraint pk_CareCenter primary key (careCenterName)
);

create table Room
(
careCenterName 	varchar(20),
roomNumber 		int(10),
constraint fk_CareCenter_Room foreign key (careCenterName) references CareCenter(careCenterName),
constraint pk_Room primary key (careCenterName, roomNumber)
);

create table Bed
(
careCenterName 	varchar(20),
roomNumber 		int(10),
bedNumber 		int(10),
patientID 		varchar(20),
constraint fk_Room_Bed foreign key (careCenterName,roomNumber) references Room(careCenterName,roomNumber),
constraint fk_Resident_Bed foreign key (patientID) references Resident(patientID),
constraint pk_Bed primary key (careCenterName, roomNumber, bedNumber)
);

create table Staff
(
staffID 	varchar(20),
jobClass 	varchar(20),
constraint fk_Employee_Staff foreign key (staffID) references Employee(employeeID),
constraint pk_Staff primary key (staffID)
);

create table Pharmacist
(
pharmacistID varchar(20),
constraint fk_Employee_Pharmacist foreign key (pharmacistID) references Employee(employeeID),
constraint pk_Pharmacist primary key (pharmacistID)
);

create table Technician
(
technicianID varchar(20),
constraint fk_Employee_Technician foreign key (technicianID) references Employee(employeeID),
constraint pk_Technician primary key (technicianID)
);

create table TechnicianTechnicialSkills
(
technicianID varchar(20),
skillName varchar(20),
constraint fk_Technician_TechnicianTechnicalSkills foreign key (technicianID) references Technician(technicianID),
constraint fk_TechnicalSkills_TechncianTechnicalSkills foreign key (skillName) references TechnicalSkills(skillName),
constraint pk_Technical_Skills primary key (technicianID,skillName)
);

create table TechnicalSkills
(
skillName varchar(20),
constraint pk_TechnicalSkills primary key(skillName)
);

create table TechnicianLab
(
technicianID 	varchar(20),
labName 	varchar(20),
constraint fk_Technician_TechnicianLab foreign key (technicianID) references Technician(technicianID),
constraint fk_Laboratory_TechnicianLab foreign key (labName) references Laboratory(labName),
constraint pk_TechnicianLab primary key (technicianID,labName)
);

create table Laboratory
(
headTechnicianID 	varchar(20),
labName 			varchar(20),
labLocation 		varchar(20),
constraint pk_Laboratory primary key (labName)
);

alter table Laboratory
add constraint fk_TechnicianLab_Laboratory foreign key (headTechnicianID,labName) references TechnicianLab(technicianID,labName);

create table Deceased
(
patientID 	varchar(20),
toeTag 		varchar(20),
constraint fk_Patient_Deceased foreign key (patientID) references Patient(patientID),
constraint pk_Deceased primary key (patientID)
);

create table Resident
(
patientID 		varchar(20),
admittedDate 	date,
constraint fk_Patient_Resident foreign key (patientID) references Patient(patientID),
constraint pk_Resident primary key (patientID)
);

create table Outpatient
(
patientID varchar(20),
constraint fk_Patient_Outpatient foreign key(patientID) references Patient(patientID),
constraint pk_Outpatient primary key (patientID)
);

create table Visit
(
patientID 		varchar(20),
physicianID 	varchar(20),
visitDate 		date,
comments 		varchar(100),
constraint fk_Outpatient_Visit foreign key (patientID) references Outpatient (patientID),
constraint fk_Physician_Visit foreign key (physicianID) references Physician (physicianID),
constraint pk_Visit primary key (patientID,physicianID,visitDate)
);

create table Inventory
(
inStock 	bool,
drugName 	varchar(20),
units 		varchar(20),
constraint pk_Inventory primary key (drugName,units)
);

create table Prescription
(
patientID 		varchar(20),
physicianID 	varchar(20),
visitDate 		date,
drugName 		varchar(20),
units 			varchar(20),
quantity 		int(5),
pharmacistID 	varchar(20),
constraint fk_Visit_Prescription foreign key (patientID,physicianID,visitDate) references Visit(patientID,physicianID,visitDate),
constraint fk_Inventory_Prescription foreign key (drugName,units) references Inventory(drugName,units),
constraint fk_Pharmacist_Prescription foreign key (pharmacistID) references Pharmacist(pharmacistID),
constraint pk_Prescription primary key (patientID,physicianID,visitDate,drugName)
);

create table Surgeon
(
physicianID varchar(20),
constraint fk_Physician_Surgeon foreign key (physicianID) references Physician(physicianID),
constraint pk_Surgeon primary key (physicianID)
);

create table Surgery
(
physicianID 	varchar(20),
patientID 		varchar(20),
surgeryDate 	date,
reason 			varchar(100),
constraint fk_Surgeon_Surgery foreign key (physicianID) references Surgeon(physicianID),
constraint fk_Patient_Surgery foreign key (patientID) references Patient(patientID),
constraint pk_Surgery primary key (physicianID,patientID,surgeryDate)
);



create table VolunteerSkills
(
skillName varchar(20),
constraint pk_Skill primary key (skillName)
);

create table VolunteeerVolunteerSkills
(
volunteerID 	varchar(20),
skillName 		varchar(20),
constraint fk_Volunteer_VolunteerVolunteerSkills foreign key (volunteerID) references Volunteer(volunteerID),
constraint fk_VolunteerSkills_VolunteerVolunteerSkills foreign key (skillName) references VolunteerSkills(skillName),
constraint pk_VolunteerSkill primary key (volunteerID,skillName)
);


#-----------------------------------------------------------------
create view EmployeeHired as 
select firstName, lastName, hireDate
from Person inner join Employee on Person.personID = Employee.employeeID;

select * 
from EmployeeHired;
#-----------------------------------------------------------------

#enumerate State table
insert into State (state) values('AL');
insert into State (state) values('AK');
insert into State (state) values('AZ');
insert into State (state) values('AR');
insert into State (state) values('CA');
insert into State (state) values('CO');
insert into State (state) values('CT');
insert into State (state) values('DE');
insert into State (state) values('FL');
insert into State (state) values('GA');
insert into State (state) values('HI');
insert into State (state) values('ID');
insert into State (state) values('IL');
insert into State (state) values('IN');
insert into State (state) values('IA');
insert into State (state) values('KS');
insert into State (state) values('KY');
insert into State (state) values('LA');
insert into State (state) values('ME');
insert into State (state) values('MD');
insert into State (state) values('MA');
insert into State (state) values('MI');
insert into State (state) values('MN');
insert into State (state) values('MS');
insert into State (state) values('MO');
insert into State (state) values('MT');
insert into State (state) values('NE');
insert into State (state) values('NV');
insert into State (state) values('NH');
insert into State (state) values('NJ');
insert into State (state) values('NM');
insert into State (state) values('NY');
insert into State (state) values('NC');
insert into State (state) values('ND');
insert into State (state) values('OH');
insert into State (state) values('OK');
insert into State (state) values('OR');
insert into State (state) values('PA');
insert into State (state) values('RI');
insert into State (state) values('SC');
insert into State (state) values('SD');
insert into State (state) values('TN');
insert into State (state) values('TX');
insert into State (state) values('UT');
insert into State (state) values('VT');
insert into State (state) values('VA');
insert into State (state) values('WA');
insert into State (state) values('WV');
insert into State (state) values('WI');
insert into State (state) values('WY');

#enumerate TechnicalSkills table
insert into TechnicalSkills (skillName) values('Electrical');
insert into TechnicalSkills (skillName) values('HVAC');
insert into TechnicalSkills (skillName) values('Carpentry');
insert into TechnicalSkills (skillName) values('Welding');

#enumerate VolunteerSkills table
insert into VolunteerSkills (skillName) values('CPR training');
insert into VolunteerSkills (skillName) values('Leadership');
insert into VolunteerSkills (skillName) values('Teamwork');
insert into VolunteerSkills (skillName) values('Customer Service');


insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');

