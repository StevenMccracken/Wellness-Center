create table State
(
state varchar(2) 				NOT NULL,
constraint pk_State primary key (state)
);

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

CREATE TABLE Person
( 
personID 		varchar(20) 	NOT NULL,
firstName 		varchar(20) 	NOT NULL,
lastName 		varchar(20) 	NOT NULL,
birthDate 		date 			NOT NULL,
phone 			varchar(10) 	NOT NULL,
streetAddress 	varchar(50) 	NOT NULL,
city 			varchar(50) 	NOT NULL,
state 			varchar(2) 		NOT NULL,
zipCode 		varchar(10) 	NOT NULL,
constraint fk_State_Person foreign key (state) references State(state),
constraint pk_Person primary key (personID)
);

insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00001','Barbara','Streisand','1985-10-23','7145558686','5898 Marian St','Cypress','CA','90630');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00002','Linda','Wringwald','1960-06-17','5628809999','6161 Lee St','Cerritos','CA','90703');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00003','Dave','Brown','1987-10-10','3815559898','3434 Right Ln','Jacksonville','WY','83001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00004','Stan','Smith','1980-03-28','7142299562','1111 Beach Dr','Miami','FL','33101');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00005','Cathy','Neudebocker','1969-09-13','9094056218','2323 ImWalkinHere St','New York City','NY','10001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00006','Arya','Stark','1985-10-20','7145550202','6000 Flannigan St','Phoenix','AZ','85001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00007','Sansa','Stark','1986-09-24','7145550000','5555 Sherwock St','Montgomery','AL','36101');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00008','Jon','Snow','1970-03-14','7145550001','1432 Elmo St','Detroit','MI','48201');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00009','Eddard','Stark','1955-07-01','7145550002','4444 Candy Ln','Pittsburgh','PA','15201');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00010','Theon','Grayjoy','1988-02-28','7145550003','3131 Huston St, Apt# 3','Houston','TX','77001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00011','Tyrion','Lannister','1977-07-05','7145550004','4000 Shady Oaks Dr','Anchorage','AK','99501');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00012','Tywin','Lannister','1979-10-27','7145550005','1345 Jamboree St','Irvine','CA','92602');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00013','Jamie','Lannister','1984-06-11','7145550006','6767 Applewood Ln','Denton','TX','76201');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00014','Cersie','Lannister','1980-02-19','7145550007','6666 Sandy Toes Ave','Gilbert','AZ','85233');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00015','Robert','Baratheon','1981-03-20','7145550008','13 Elm St','Boston','MA','02108');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00016','Stannis','Baratheon','1982-04-23','7145550009','8989 Broadway Ave','New York City','NY','10001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00017','Sterling','Archer','1980-08-12','7145550010','9999 Danger Zone','Providence','RI','02901');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00018','Malory','Archer','1975-09-01','7145550011','10010 Pacific Coast Highway','Newport Beach','CA','92658');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00019','Lana','Kane','1960-03-05','7145550012','3333 Wildern St','Lynchburg','TN','37352');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00020','Cyril','Figgis','1964-05-13','7145550013','2222 Sowma St','Boulder','CO','80301');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00021','Cheryl','Tunt','1974-11-05','7145550014','4545 Atherton St','Long Beach','CA','90801');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00022','Pam','Poovey','1986-12-25','7145550015','6890 Grindlay St','Las Vegas','NV','89101');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00023','Ray','Gilette','1972-01-16','7145550016','5555 Belle St','Honolulu','HI','96813');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00024','James','Krieger','1940-03-15','7145550017','1357 Cathy St','Denver','CO','80123');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00025','Phillip','Fry','1955-05-23','7145550018','7878 Chapman Ave','Los Angeles','CA','90001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00026','Bender','Rodriguez','1960-04-08','7145550019','3434 Katella Ave','Lincoln','NE','68501');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00027','Turanga','Leela','1966-11-01','7145550020','5123 Knott Ave','Los Angeles','CA','90001');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00028','Hermes','Conrad','1968-04-27','7145550021','9642 Valley View St','Fullerton','CA','92831');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00029','Amy','Wong','1988-10-04','7145550022','2345 Electric Ave','Salt Lake City','UT','84101');
insert into Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode) values('00030','Alfred','Hitchcock','1960-12-04','7145550023','2333 Geode Rd','Los Angeles','CA','90001');

CREATE TABLE Employee
(
employeeID 	VARCHAR(20) 		NOT NULL,
hireDate 	DATE 				NOT NULL,
CONSTRAINT fk_Person_Employee foreign key(employeeID) references Person(personID),
CONSTRAINT pk_Employee PRIMARY KEY (employeeID)
);

insert into Employee(employeeID,hireDate) values ('00001','2015-02-04');
insert into Employee(employeeID,hireDate) values ('00002','2012-03-03');
insert into Employee(employeeID,hireDate) values ('00003','2010-06-24');
insert into Employee(employeeID,hireDate) values ('00004','2011-07-13');
insert into Employee(employeeID,hireDate) values ('00005','2013-03-04');
insert into Employee(employeeID,hireDate) values ('00006','2015-08-04');
insert into Employee(employeeID,hireDate) values ('00007','2014-10-04');
insert into Employee(employeeID,hireDate) values ('00008','2015-12-04');
insert into Employee(employeeID,hireDate) values ('00009','2013-05-04');
insert into Employee(employeeID,hireDate) values ('00010','2014-05-16');
insert into Employee(employeeID,hireDate) values ('00011','2013-06-23');
insert into Employee(employeeID,hireDate) values ('00012','2015-07-14');
insert into Employee(employeeID,hireDate) values ('00013','2014-08-03');
insert into Employee(employeeID,hireDate) values ('00014','2013-09-05');
insert into Employee(employeeID,hireDate) values ('00015','2014-10-17');
insert into Employee(employeeID,hireDate) values ('00016','2014-11-29');
insert into Employee(employeeID,hireDate) values ('00017','2014-12-08');

create table Physician
(
physicianID 	varchar(20) 	NOT NULL,
specialty 		varchar(20) 	NOT NULL,
pagerNumber 	varchar(20) 	NOT NULL,
constraint fk_Person_Physician foreign key(physicianID) references Person(personID),
constraint pk_Physician primary key (physicianID)
);

#insert physicians
insert into Physician(physicianID,specialty,pagerNumber) values ('00024','General','111');
insert into Physician(physicianID,specialty,pagerNumber) values ('00025','Toxicology','222');
insert into Physician(physicianID,specialty,pagerNumber) values ('00026','General','333');
insert into Physician(physicianID,specialty,pagerNumber) values ('00027','Cardiovasular','444');
insert into Physician(physicianID,specialty,pagerNumber) values ('00028','Gastrointestinal','555');

create table Patient
(
patientID 	varchar(20) 		NOT NULL,
contactDate date 				NOT NULL,
treatingPhysicianID varchar(20) NOT NULL,
constraint fk_Person_Patient foreign key(patientID) references Person(personID),
constraint fk_Physician_Patient foreign key (treatingPhysicianID) references Physician(physicianID),
constraint pk_Patient primary key (patientID)
);

#insert patients
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('00018','2010-02-03','00025');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('00019','2009-02-23','00026');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('00020','2000-04-28','00026');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('00021','2008-07-17','00024');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('00022','2011-11-25','00027');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('00023','2012-05-03','00028');
insert into Patient(patientID,contactDate,treatingPhysicianID) values ('00030','2013-10-13','00025');

create table Volunteer
(
volunteerID varchar(20) 		NOT NULL,
constraint fk_Person_Volunteer foreign key(volunteerID) references Person(personID),
constraint pk_Volunteer primary key (volunteerID)
);

#insert volunteers
insert into Volunteer(volunteerID) values ('00029');
insert into Volunteer(volunteerID) values ('00019');
insert into Volunteer(volunteerID) values ('00013');


create table Nurse
(
nurseID 		varchar(20) 	NOT NULL,
certificate 	bool 			NOT NULL,
careCenterName 	varchar(20) 	NOT NULL,
constraint fk_Employee_Nurse foreign key(nurseID) references Employee(employeeID),
constraint pk_Nurse primary key (nurseID)
);

#insert nurses
insert into Nurse(nurseID,certificate,careCenterName) values ('00001',true,'Cardiology');
insert into Nurse(nurseID,certificate,careCenterName) values ('00002',false,'Cardiology');
insert into Nurse(nurseID,certificate,careCenterName) values ('00003',true,'Oncology');
insert into Nurse(nurseID,certificate,careCenterName) values ('00004',true,'Radiology');
insert into Nurse(nurseID,certificate,careCenterName) values ('00005',true,'Radiology');
insert into Nurse(nurseID,certificate,careCenterName) values ('00006',false,'Oncology');

create table RegisteredNurse
(
nurseID varchar(20) 			NOT NULL,
constraint fk_Nurse_RegisteredNurse foreign key(nurseID) references Nurse(nurseID),
constraint pk_Nurse primary key (nurseID)
);

#insert registered nurses
insert into RegisteredNurse(nurseID) values ('00001');
insert into RegisteredNurse(nurseID) values ('00003');
insert into RegisteredNurse(nurseID) values ('00004');
insert into RegisteredNurse(nurseID) values ('00005');

create table CareCenter
(
careCenterName 		varchar(20) NOT NULL,
careCenterLocation 	varchar(20) NOT NULL,
headNurseID 		varchar(20),
constraint fk_RegisteredNurse_CareCenter foreign key (headNurseID) references RegisteredNurse(nurseID),
constraint pk_CareCenter primary key (careCenterName)
);

#insert care centers
# 00004 is RN but is not head nurse
insert into CareCenter(headNurseID,careCenterLocation,careCenterName) values ('00001','West Wing','Cardiology');
insert into CareCenter(headNurseID,careCenterLocation,careCenterName) values ('00003','East Wing','Oncology');
insert into CareCenter(headNurseID,careCenterLocation,careCenterName) values ('00005','North Wing','Radiology');


alter table Nurse 
add constraint fk_CareCenter_Nurse foreign key (careCenterName) references CareCenter(careCenterName);

create table Room
(
careCenterName 	varchar(20) 	NOT NULL,
roomNumber 		int(10) 		NOT NULL,
constraint fk_CareCenter_Room foreign key (careCenterName) references CareCenter(careCenterName),
constraint pk_Room primary key (careCenterName, roomNumber)
);

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

create table Resident
(
patientID 		varchar(20) 	NOT NULL,
admittedDate 	date 			NOT NULL,
constraint fk_Patient_Resident foreign key (patientID) references Patient(patientID),
constraint pk_Resident primary key (patientID)
);

#insert resident patients
insert into Resident(patientID,admittedDate) values ('00019','2013-03-04');
insert into Resident(patientID,admittedDate) values ('00020','2014-05-16');
insert into Resident(patientID,admittedDate) values ('00021','2015-12-23');

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

#insert beds
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values (NULL,'Cardiology',10010,385);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values ('00019','Cardiology',10010,400);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values ('00020','Oncology',30027,445);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values ('00021','Oncology',10030,221);
insert into Bed(patientID,careCenterName,roomNumber,bedNumber) values (NULL,'Radiology',30022,123);


create table Staff
(
staffID 	varchar(20) 		NOT NULL,
jobClass 	varchar(20) 		NOT NULL,
constraint fk_Employee_Staff foreign key (staffID) references Employee(employeeID),
constraint pk_Staff primary key (staffID)
);

#insert staff
insert into Staff(staffID,jobClass) values ('00007','Janitor');
insert into Staff(staffID,jobClass) values ('00008','Janitor');
insert into Staff(staffID,jobClass) values ('00009','Receptionist');

create table Pharmacist
(
pharmacistID varchar(20) 		NOT NULL,
constraint fk_Employee_Pharmacist foreign key (pharmacistID) references Employee(employeeID),
constraint pk_Pharmacist primary key (pharmacistID)
);

#insert pharmcists
insert into Pharmacist(pharmacistID) values ('00010');
insert into Pharmacist(pharmacistID) values ('00011');

create table Technician
(
technicianID varchar(20) 		NOT NULL,
constraint fk_Employee_Technician foreign key (technicianID) references Employee(employeeID),
constraint pk_Technician primary key (technicianID)
);

#insert technicians
insert into Technician(technicianID) values ('00012');
insert into Technician(technicianID) values ('00013');
insert into Technician(technicianID) values ('00014');
insert into Technician(technicianID) values ('00015');
insert into Technician(technicianID) values ('00016');
insert into Technician(technicianID) values ('00017');

create table TechnicalSkills
(
skillName varchar(20) 			NOT NULL,
constraint pk_TechnicalSkills primary key(skillName)
);

#enumerate TechnicalSkills table
insert into TechnicalSkills (skillName) values('Electrical');
insert into TechnicalSkills (skillName) values('HVAC');
insert into TechnicalSkills (skillName) values('Carpentry');
insert into TechnicalSkills (skillName) values('Welding');

create table TechnicianTechnicialSkills
(
technicianID varchar(20) 		NOT NULL,
skillName varchar(20)			NOT NULL,
constraint fk_Technician_TechnicianTechnicalSkills foreign key (technicianID) references Technician(technicianID),
constraint fk_TechnicalSkills_TechncianTechnicalSkills foreign key (skillName) references TechnicalSkills(skillName),
constraint pk_Technical_Skills primary key (technicianID,skillName)
);

#insert technician-technicalskills
# 00015 has no technical skills
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00012','Welding');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00014','Welding');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00012','HVAC');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00013','HVAC');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00016','HVAC');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00014','Electrical');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00017','Electrical');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00017','Carpentry');
insert into TechnicianTechnicialSkills(technicianID,skillName) values ('00016','Carpentry');

create table Laboratory
(
headTechnicianID 	varchar(20) NOT NULL,
labName 			varchar(20) NOT NULL,
labLocation 		varchar(20) NOT NULL,
constraint pk_Laboratory primary key (labName)
);

#insert labs
insert into Laboratory(labName,headTechnicianID,labLocation) values ('Lab A','00013','West Wing');
insert into Laboratory(labName,headTechnicianID,labLocation) values ('Lab B','00012','East Wing');
insert into Laboratory(labName,headTechnicianID,labLocation) values ('Lab C','00016','North Wing');


create table TechnicianLab
(
technicianID 	varchar(20) 	NOT NULL,
labName 	varchar(20) 		NOT NULL,
constraint fk_Technician_TechnicianLab foreign key (technicianID) references Technician(technicianID),
constraint fk_Laboratory_TechnicianLab foreign key (labName) references Laboratory(labName),
constraint pk_TechnicianLab primary key (technicianID,labName)
);

#insert technician-lab
# 00012 is assigned to Lab A and Lab B
insert into TechnicianLab(technicianID,labName) values ('00012','Lab A');
insert into TechnicianLab(technicianID,labName) values ('00013','Lab A');
insert into TechnicianLab(technicianID,labName) values ('00014','Lab A');
insert into TechnicianLab(technicianID,labName) values ('00012','Lab B');
insert into TechnicianLab(technicianID,labName) values ('00015','Lab B');
insert into TechnicianLab(technicianID,labName) values ('00016','Lab C');
insert into TechnicianLab(technicianID,labName) values ('00017','Lab C');

alter table Laboratory
add constraint fk_TechnicianLab_Laboratory foreign key (headTechnicianID,labName) references TechnicianLab(technicianID,labName);

create table Deceased
(
patientID 	varchar(20) 		NOT NULL,
toeTag 		varchar(20) 		NOT NULL,
constraint fk_Patient_Deceased foreign key (patientID) references Patient(patientID),
constraint pk_Deceased primary key (patientID)
);

#insert deceased patients
insert into Deceased(patientID,toeTag) values ('00018','01345');

create table Outpatient
(
patientID varchar(20) 			NOT NULL,
constraint fk_Patient_Outpatient foreign key(patientID) references Patient(patientID),
constraint pk_Outpatient primary key (patientID)
);

#insert outpatients
insert into Outpatient(patientID) values ('00022');
insert into Outpatient(patientID) values ('00023');
insert into Outpatient(patientID) values ('00030');

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

#insert visits
insert into Visit(patientID,physicianID,visitDate,comments) values ('00022','00024','2014-10-28','Patient had a dark red rash on forearm. Told patient to wash forearm every 6 hours.');
insert into Visit(patientID,physicianID,visitDate,comments) values ('00022','00026','2014-11-07','Checkup. Patients rash has cleared up.');
insert into Visit(patientID,physicianID,visitDate,comments) values ('00023','00026','2015-09-27','Patient is experiencing dizziness and headaches.');
insert into Visit(patientID,physicianID,visitDate,comments) values ('00030','00025','2014-08-14','Patient is fainting. Having trouble with blood sugar levels.');

create table Inventory
(
inStock 	bool NOT NULL,
drugName 	varchar(20) 		NOT NULL,
units 		varchar(20) 		NOT NULL,
constraint pk_Inventory primary key (drugName,units)
);

#insert drugs into inventory
insert into Inventory(drugName,units, inStock) values ('Ibuprofen','milligrams',true);
insert into Inventory(drugName,units, inStock) values ('Insulin','cubic centimeters',true);
insert into Inventory(drugName,units, inStock) values ('Vicodin','milligrams',false);

create table Prescription
(
patientID 		varchar(20) 	NOT NULL,
physicianID 	varchar(20) 	NOT NULL,
visitDate 		date 			NOT NULL,
drugName 		varchar(20)		NOT NULL,
units 			varchar(20)		NOT NULL,
quantity 		int(5)			NOT NULL,
pharmacistID 	varchar(20)		NOT NULL,
constraint fk_Visit_Prescription foreign key (patientID,physicianID,visitDate) references Visit(patientID,physicianID,visitDate),
constraint fk_Inventory_Prescription foreign key (drugName,units) references Inventory(drugName,units),
constraint fk_Pharmacist_Prescription foreign key (pharmacistID) references Pharmacist(pharmacistID),
constraint pk_Prescription primary key (patientID,physicianID,visitDate,drugName)
);

#insert prescriptions
insert into Prescription(pharmacistID,patientID,physicianID,visitDate,drugName,units,quantity) values ('00010','00023','00026','2015-09-27','Ibuprofen','milligrams','400');
insert into Prescription(pharmacistID,patientID,physicianID,visitDate,drugName,units,quantity) values ('00011','00030','00025','2014-08-14','Insulin','cubic centimeters','10');

create table Surgeon
(
physicianID varchar(20) 		NOT NULL,
constraint fk_Physician_Surgeon foreign key (physicianID) references Physician(physicianID),
constraint pk_Surgeon primary key (physicianID)
);

#insert surgeons
insert into Surgeon(physicianID) values ('00028');
insert into Surgeon(physicianID) values ('00027');

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

#insert surgery
insert into Surgery(physicianID,patientID,surgeryDate,reason) values ('00028','00018','2013-01-04','Removed appendix'); #patient died and is classified deceased
insert into Surgery(physicianID,patientID,surgeryDate,reason) values ('00027','00023','2014-03-13','Heart bypass');

create table VolunteerSkills
(
skillName varchar(20) 			NOT NULL,
constraint pk_Skill primary key (skillName)
);

#enumerate VolunteerSkills table
insert into VolunteerSkills (skillName) values('CPR Training');
insert into VolunteerSkills (skillName) values('Leadership');
insert into VolunteerSkills (skillName) values('Teamwork');
insert into VolunteerSkills (skillName) values('Customer Service');


create table VolunteerVolunteerSkills
(
volunteerID 	varchar(20) 	NOT NULL,
skillName 		varchar(20)		NOT NULL,
constraint fk_Volunteer_VolunteerVolunteerSkills foreign key (volunteerID) references Volunteer(volunteerID),
constraint fk_VolunteerSkills_VolunteerVolunteerSkills foreign key (skillName) references VolunteerSkills(skillName),
constraint pk_VolunteerSkill primary key (volunteerID,skillName)
);

#insert volunteer skills
insert into VolunteerVolunteerSkills(volunteerID,skillName) values ('00029','CPR Training');
insert into VolunteerVolunteerSkills(volunteerID,skillName) values ('00029','Leadership');
insert into VolunteerVolunteerSkills(volunteerID,skillName) values ('00019','CPR Training');
insert into VolunteerVolunteerSkills(volunteerID,skillName) values ('00019','Leadership');
insert into VolunteerVolunteerSkills(volunteerID,skillName) values ('00019','Teamwork');
insert into VolunteerVolunteerSkills(volunteerID,skillName) values ('00013','Customer Service');


#-----------------------------------------------------------------
# create views

# VIEW 1
CREATE VIEW EmployeeHired AS 
	SELECT firstName, lastName, hireDate FROM Person
    INNER JOIN Employee ON Person.personID = Employee.employeeID;

# VIEW 2
CREATE VIEW NursesInCharge AS
	SELECT careCenterName, firstName, lastName, phone FROM CareCenter
	INNER JOIN Person ON CareCenter.headNurseID = Person.personID;

# VIEW 3
CREATE VIEW GoodTechnician AS
	SELECT DISTINCT firstName, lastName FROM TechnicianTechnicialSkills
	INNER JOIN Person ON TechnicianTechnicialSkills.technicianID = Person.personID;

# VIEW 5
CREATE VIEW OutPatientsNotVisited AS
	SELECT firstName, lastName FROM Outpatient
	INNER JOIN Person ON Outpatient.patientID = Person.personID
	WHERE patientID NOT IN
		(SELECT patientID FROM Visit);

#-----------------------------------------------------------------
#create queries





#----------------------------------------------
#drop tables
/*
drop table Bed;
drop table Room;
alter table CareCenter drop foreign key fk_RegisteredNurse_CareCenter;
alter table RegisteredNurse drop foreign key fk_Nurse_RegisteredNurse;
alter table Nurse drop foreign key fk_CareCenter_Nurse;
drop table CareCenter;
drop table RegisteredNurse;
drop table Nurse;
drop table Staff;
drop table Prescription;
drop table Pharmacist;
alter table Laboratory drop foreign key fk_TechnicianLab_Laboratory;
alter table TechnicianLab drop foreign key fk_Technician_TechnicianLab;
alter table TechnicianLab drop foreign key fk_Laboratory_TechnicianLab;
drop table Laboratory;
drop table TechnicianLab;
alter table TechnicianTechnicialSkills drop foreign key fk_TechnicalSkills_TechncianTechnicalSkills;
alter table TechnicianTechnicialSkills drop foreign key fk_Technician_TechnicianTechnicalSkills;
drop table TechnicalSkills;
alter table Technician drop foreign key fk_Employee_Technician;
drop table TechnicianTechnicialSkills;
drop table Technician;
drop table Employee;
drop table Inventory;
drop table Visit;
drop table Outpatient;
drop table Resident;
drop table Deceased;
drop table Surgery;
drop table Surgeon;
drop table Patient;
drop table Physician;
alter table Volunteer drop foreign key fk_Person_Volunteer;
drop table VolunteerVolunteerSkills;
drop table VolunteerSkills;
drop table Volunteer;
drop table Person;
drop table State;
*/