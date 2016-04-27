CREATE TABLE Person
( 
personID 		varchar(20) 	NOT NULL,
firstName 		varchar(20) 	NOT NULL,
lastName 		varchar(20) 	NOT NULL,
birthDate 		date 			NOT NULL,
phone 			varchar(10) 	NOT NULL,
streetAddress 	varchar(20) 	NOT NULL,
city 			varchar(20) 	NOT NULL,
state 			varchar(2) 		NOT NULL,
zipCode 		varchar(10) 	NOT NULL,
constraint fk_State_Person foreign key (state) references State(state),
constraint pk_Person primary key (personID)
);

create table State
(
state varchar(2) 				NOT NULL,
constraint pk_State primary key (state)
);

CREATE TABLE Employee
(
employeeID 	VARCHAR(20) 		NOT NULL,
hireDate 	DATE 				NOT NULL,
CONSTRAINT fk_Person_Employee foreign key(employeeID) references Person(personID),
CONSTRAINT pk_Employee PRIMARY KEY (employeeID)
);

create table Patient
(
patientID 	varchar(20) 		NOT NULL,
contactDate date 				NOT NULL,
constraint fk_Person_Patient foreign key(patientID) references Person(personID),
constraint pk_Patient primary key (patientID)
);

alter table Patient
add treatingPhysicianID varchar(20) NOT NULL;

alter table Patient
add constraint fk_Physician_Patient foreign key (treatingPhysicianID) references Physician(physicianID);

create table Physician
(
physicianID 	varchar(20) 	NOT NULL,
specialty 		varchar(20) 	NOT NULL,
pagerNumber 	varchar(20) 	NOT NULL,
constraint fk_Person_Physician foreign key(physicianID) references Person(personID),
constraint pk_Physician primary key (physicianID)
);

create table Volunteer
(
volunteerID varchar(20) 		NOT NULL,
constraint fk_Person_Volunteer foreign key(volunteerID) references Person(personID),
constraint pk_Volunteer primary key (volunteerID)
);

create table Nurse
(
nurseID 		varchar(20) 	NOT NULL,
certificate 	bool 			NOT NULL,
careCenterName 	varchar(20) 	NOT NULL,
constraint fk_Employee_Nurse foreign key(nurseID) references Employee(employeeID),
constraint pk_Nurse primary key (nurseID)
);

alter table Nurse 
add constraint fk_CareCenter_Nurse foreign key (careCenterName) references CareCenter(careCenterName);

create table RegisteredNurse
(
nurseID varchar(20) 			NOT NULL,
constraint fk_Nurse_RegisteredNurse foreign key(nurseID) references Nurse(nurseID),
constraint pk_Nurse primary key (nurseID)
);

create table CareCenter
(
careCenterName 		varchar(20) NOT NULL,
careCenterLocation 	varchar(20) NOT NULL,
headNurseID 		varchar(20) NOT NULL,
constraint fk_RegisteredNurse_CareCenter foreign key (headNurseID) references RegisteredNurse(nurseID),
constraint pk_CareCenter primary key (careCenterName)
);

create table Room
(
careCenterName 	varchar(20) 	NOT NULL,
roomNumber 		int(10) 		NOT NULL,
constraint fk_CareCenter_Room foreign key (careCenterName) references CareCenter(careCenterName),
constraint pk_Room primary key (careCenterName, roomNumber)
);

create table Bed
(
careCenterName 	varchar(20) 	NOT NULL,
roomNumber 		int(10) 		NOT NULL,
bedNumber 		int(10) 		NOT NULL,
patientID 		varchar(20),
constraint fk_Room_Bed foreign key (careCenterName,roomNumber) references Room(careCenterName,roomNumber),
constraint fk_Resident_Bed foreign key (patientID) references Resident(patientID),
constraint pk_Bed primary key (careCenterName, roomNumber, bedNumber)
);

create table Staff
(
staffID 	varchar(20) 		NOT NULL,
jobClass 	varchar(20) 		NOT NULL,
constraint fk_Employee_Staff foreign key (staffID) references Employee(employeeID),
constraint pk_Staff primary key (staffID)
);

create table Pharmacist
(
pharmacistID varchar(20) 		NOT NULL,
constraint fk_Employee_Pharmacist foreign key (pharmacistID) references Employee(employeeID),
constraint pk_Pharmacist primary key (pharmacistID)
);

create table Technician
(
technicianID varchar(20) 		NOT NULL,
constraint fk_Employee_Technician foreign key (technicianID) references Employee(employeeID),
constraint pk_Technician primary key (technicianID)
);

create table TechnicianTechnicialSkills
(
technicianID varchar(20) 		NOT NULL,
skillName varchar(20),
constraint fk_Technician_TechnicianTechnicalSkills foreign key (technicianID) references Technician(technicianID),
constraint fk_TechnicalSkills_TechncianTechnicalSkills foreign key (skillName) references TechnicalSkills(skillName),
constraint pk_Technical_Skills primary key (technicianID,skillName)
);

create table TechnicalSkills
(
skillName varchar(20) 			NOT NULL,
constraint pk_TechnicalSkills primary key(skillName)
);

create table TechnicianLab
(
technicianID 	varchar(20) 	NOT NULL,
labName 	varchar(20) 		NOT NULL,
constraint fk_Technician_TechnicianLab foreign key (technicianID) references Technician(technicianID),
constraint fk_Laboratory_TechnicianLab foreign key (labName) references Laboratory(labName),
constraint pk_TechnicianLab primary key (technicianID,labName)
);

create table Laboratory
(
headTechnicianID 	varchar(20) NOT NULL,
labName 			varchar(20) NOT NULL,
labLocation 		varchar(20) NOT NULL,
constraint pk_Laboratory primary key (labName)
);

alter table Laboratory
add constraint fk_TechnicianLab_Laboratory foreign key (headTechnicianID,labName) references TechnicianLab(technicianID,labName);

create table Deceased
(
patientID 	varchar(20) 		NOT NULL,
toeTag 		varchar(20) 		NOT NULL,
constraint fk_Patient_Deceased foreign key (patientID) references Patient(patientID),
constraint pk_Deceased primary key (patientID)
);

create table Resident
(
patientID 		varchar(20) 	NOT NULL,
admittedDate 	date 			NOT NULL,
constraint fk_Patient_Resident foreign key (patientID) references Patient(patientID),
constraint pk_Resident primary key (patientID)
);

create table Outpatient
(
patientID varchar(20) 			NOT NULL,
constraint fk_Patient_Outpatient foreign key(patientID) references Patient(patientID),
constraint pk_Outpatient primary key (patientID)
);

create table Visit
(
patientID 		varchar(20) 	NOT NULL,
physicianID 	varchar(20) 	NOT NULL,
visitDate 		date 			NOT NULL,
comments 		varchar(100),
constraint fk_Outpatient_Visit foreign key (patientID) references Outpatient (patientID),
constraint fk_Physician_Visit foreign key (physicianID) references Physician (physicianID),
constraint pk_Visit primary key (patientID,physicianID,visitDate)
);

create table Inventory
(
inStock 	bool NOT NULL,
drugName 	varchar(20) 		NOT NULL,
units 		varchar(20) 		NOT NULL,
constraint pk_Inventory primary key (drugName,units)
);

create table Prescription
(
patientID 		varchar(20) 	NOT NULL,
physicianID 	varchar(20) 	NOT NULL,
visitDate 		date 			NOT NULL,
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
physicianID varchar(20) 		NOT NULL,
constraint fk_Physician_Surgeon foreign key (physicianID) references Physician(physicianID),
constraint pk_Surgeon primary key (physicianID)
);

create table Surgery
(
physicianID 	varchar(20) 	NOT NULL,
patientID 		varchar(20) 	NOT NULL,
surgeryDate 	date 			NOT NULL,
reason 			varchar(100),
constraint fk_Surgeon_Surgery foreign key (physicianID) references Surgeon(physicianID),
constraint fk_Patient_Surgery foreign key (patientID) references Patient(patientID),
constraint pk_Surgery primary key (physicianID,patientID,surgeryDate)
);



create table VolunteerSkills
(
skillName varchar(20) 			NOT NULL,
constraint pk_Skill primary key (skillName)
);

create table VolunteeerVolunteerSkills
(
volunteerID 	varchar(20) 	NOT NULL,
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

#----------------------------------------------------------------

# insert people
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00001','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00002','Linda','Wringwald',06-17-1960,'5628809999','6161 Lee St','Cerritos','CA','90701');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00003','Dave','Brown',10-10-1987,'3815559898','3434 Right Ln','Jacksonville','WY','83001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00004','Stan','Smith',03-28-1990,'7142299562','1111 Beach Dr','Miami','FL','33101');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00005','Cathy','Streisand',09-13-1969,'9094056218','2323 ImWalkinHere St','New York City','NY','10001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('N12345','Barbara','Streisand',10-23-1985,'7145558686','5898 Marian St','Cypress','CA','90630');

# insert employees
# asuume hospital opened in 2000 so we don't need to worry about employees being too young
insert into Employee(employeeID,hireDate) values ('',02-04-2005);
insert into Employee(employeeID,hireDate) values ('',03-03-2002);
insert into Employee(employeeID,hireDate) values ('',06-24-2008);
insert into Employee(employeeID,hireDate) values ('',07-13-2003);
insert into Employee(employeeID,hireDate) values ('',03-04-2005);
insert into Employee(employeeID,hireDate) values ('',08-04-2008);
insert into Employee(employeeID,hireDate) values ('',10-04-2004);
insert into Employee(employeeID,hireDate) values ('',12-04-2007);
insert into Employee(employeeID,hireDate) values ('',05-04-2007);

#insert nurses
insert into Nurse(nurseID,certificate,careCenterName) values ('',true,'Cardiology');
insert into Nurse(nurseID,certificate,careCenterName) values ('',false,'Cardiology');
insert into Nurse(nurseID,certificate,careCenterName) values ('',true,'Oncology');
insert into Nurse(nurseID,certificate,careCenterName) values ('',true,'Radiology');

#insert registered nurses
insert into RegisteredNurse(nurseID) values ('');
insert into RegisteredNurse(nurseID) values ('');
insert into RegisteredNurse(nurseID) values ('');

#insert care centers
insert into CareCenter(headNurseID,careCenterLocation,careCenterName) values ('','West Wing','Cardiology');
insert into CareCenter(headNurseID,careCenterLocation,careCenterName) values ('','East Wing','Oncology');
insert into CareCenter(headNurseID,careCenterLocation,careCenterName) values ('','North Wing','Radiology');

#insert rooms
insert into Room(careCenterName,roomNumber) values ('Cardiology',10010);
insert into Room(careCenterName,roomNumber) values ('Cardiology',20035);
insert into Room(careCenterName,roomNumber) values ('Cardiology',20044);
insert into Room(careCenterName,roomNumber) values ('Oncology',30027);
insert into Room(careCenterName,roomNumber) values ('Oncology',20014);
insert into Room(careCenterName,roomNumber) values ('Oncology',10030);
insert into Room(careCenterName,roomNumber) values ('Radiology',10047);
insert into Room(careCenterName,roomNumber) values ('Radiology',10046);
insert into Room(careCenterName,roomNumber) values ('Radiology',30022);

#insert beds
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values (NULL,'Cardiology',10010,385);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values ('','Cardiology',10010,400);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values ('','Oncology',30027,445);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values ('','Oncology',10030,221);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values ('','Radiology',30022,123);

#insert staff
insert into Staff(staffID,jobClass) values ('','Janitor');
insert into Staff(staffID,jobClass) values ('','Receptionist');

#insert pharmcists
insert into Pharmacist(pharmacistID) values ('');
insert into Pharmacist(pharmacistID) values ('');

#insert technicians
insert into Technician(technicianID) values ('');
insert into Technician(technicianID) values ('');
insert into Technician(technicianID) values ('');
insert into Technician(technicianID) values ('');

#insert technician-technicalskills
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('','Welding');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('','HVAC');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('','Welding');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('','Electrical');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('','Electrical');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('','Carpentry');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('','Carpentry');

#insert technician-lab
insert into TechnicianLab(technicianID,labName) values ('','');
insert into TechnicianLab(technicianID,labName) values ('','');
insert into TechnicianLab(technicianID,labName) values ('','');
insert into TechnicianLab(technicianID,labName) values ('','');

#insert labs
insert into Laboratory(labName,headTechnicianID,labLocation) values ('','','West Wing');
insert into Laboratory(labName,headTechnicianID,labLocation) values ('','','East Wing');
insert into Laboratory(labName,headTechnicianID,labLocation) values ('','','North Wing');

#insert patients
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('',02-03-2010,'');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('',02-23-2009,'');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('',04-28-2000,'');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('',07-17-2008,'');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('',11-25-2011,'');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('',05-03-2012,'');

#insert deceased patients
insert into Deceased(patientID,toeTag) values ('','01345');

#insert resident patients
insert into Resident(patientID,admittedDate) values ('',03-04-2013);
insert into Resident(patientID,admittedDate) values ('',05-16-2014);

#insert outpatients
insert into Outpatient(patientID) values ('');
insert into Outpatient(patientID) values ('');
insert into Outpatient(patientID) values ('');

#insert visits
insert into Visit(patientID,physicianID,visitDate,comments) values ('','',10-28-2014,'Patient had a dark red rash on forearm.');
insert into Visit(patientID,physicianID,visitDate,comments) values ('','',11-07-2014,'Checkup. Patients rash has cleared up.');
insert into Visit(patientID,physicianID,visitDate,comments) values ('','',09-27-2015,'Patient is experiencing dizziness and headaches.');

#insert drugs into inventory
insert into Inventory(drugName,units, inStock) values ('Ibuprofen','milligrams',true);
insert into Inventory(drugName,units, inStock) values ('Insulin','cubic centimeters',true);
insert into Inventory(drugName,units, inStock) values ('Vicodin','milligrams',false);

#insert prescriptions
insert into Prescription(pharmacistID,patientID,physicianID,visitDate,drugName,units,quantity) values ('','','',03-08-2014,'Ibuprofen','milligrams','400');
insert into Prescription(pharmacistID,patientID,physicianID,visitDate,drugName,units,quantity) values ('','','',03-13-2014,'Insulin','cubic centimeters','10');
insert into Prescription(pharmacistID,patientID,physicianID,visitDate,drugName,units,quantity) values ('','','',05-27-2015,NULL,NULL,NULL);

#insert physicians
insert into Physician(physicianID,specialty,pagerNumber) values ('','Addiction','111');
insert into Physician(physicianID,specialty,pagerNumber) values ('','Toxicology','222');
insert into Physician(physicianID,specialty,pagerNumber) values ('','General','333');
insert into Physician(physicianID,specialty,pagerNumber) values ('','Cardiovasular','444');
insert into Physician(physicianID,specialty,pagerNumber) values ('','Gastrointestinal','555');

#insert surgeons
insert into Surgeon(surgeonID) values ('');
insert into Surgeon(surgeonID) values ('');

#insert surgery
insert into Surgery(surgeonID,patientID,surgeryDate,reason) values ('','',01-04-2013,'Removed appendix');
insert into Surgery(surgeonID,patientID,surgeryDate,reason) values ('','',03-13-2014,'Heart bypass');

#insert volunteers
insert into Volunteer(volunteerID) values ('');
insert into Volunteer(volunteerID) values ('');
insert into Volunteer(volunteerID) values ('');

#insert volunteer skills
insert into VolunteerVolunteerSkill(volunteerId,skillName) values ('','');
insert into VolunteerVolunteerSkill(volunteerId,skillName) values ('','');
insert into VolunteerVolunteerSkill(volunteerId,skillName) values ('','');
insert into VolunteerVolunteerSkill(volunteerId,skillName) values ('','');
insert into VolunteerVolunteerSkill(volunteerId,skillName) values ('','');
insert into VolunteerVolunteerSkill(volunteerId,skillName) values ('','');
