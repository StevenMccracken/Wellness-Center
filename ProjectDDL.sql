CREATE TABLE Person
( 
personID 	VARCHAR(20) NOT NULL,
firstName 	VARCHAR(20),
lastName 	VARCHAR(20),
birthDate 	DATE,
phone 		VARCHAR(10),
CONSTRAINT pk_Person PRIMARY KEY (personID)
);

CREATE TABLE Employee
(
employeeID VARCHAR(20),
hireDate DATE,
CONSTRAINT fk_Person_Employee foreign key(employeeID) references Person(personID),
CONSTRAINT pk_Employee PRIMARY KEY (employeeID)
);

create table Patient
(
patientID varchar(20),
contactDate date,
constraint fk_Person_Patient foreign key(patientID) references Person(personID),
constraint pk_Patient primary key (patientID)
);

create table Physician
(
physicianID varchar(20),
specialty varchar(20),
pagerNumber varchar(20),
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
employeeID varchar(20),
certificate bool,
careCenterName varchar(20),
constraint fk_Employee_Nurse foreign key(employeeID) references Employee(employeeID),
constraint fk_CareCenter_Nurse foreign key(careCenterName) references CareCenter(careCenterName),
constraint pk_Nurse primary key (employeeID)
);

create table RegisteredNurse
(
employeeID varchar(20),
constraint fk_Nurse_RegisteredNurse foreign key(employeeID) references Nurse(employeeID),
constraint pk_Nurse primary key (employeeID)
);

create table CareCenter
(
careCenterName varchar(20),
careCenterLocation varchar(20),
headNurseID varchar(20),
constraint fk_RegisteredNurse_CareCenter foreign key (headNurseID) references RegisteredNurse(employeeID),
constraint pk_CareCenter primary key (careCenterName)
);

create table Room
(
careCenterName varchar(20),
roomNumber int(10),
constraint fk_CareCenter_Room foreign key (careCenterName) references CareCenter(careCenterName),
constraint pk_Room primary key (careCenterName, roomNumber)
);

create table Bed
(
careCenterName varchar(20),
roomNumber int(10),
bedNumber int(10),
patientID varchar(20),
constraint fk_Room_Bed foreign key (careCenterName,roomNumber) references Room(careCenterName,roomNumber),
constraint fk_Patient_Bed foreign key (patientID) references Resident(patientID),
constraint pk_Bed primary key (careCenterName, roomNumber, bedNumber)
);

create table Staff
(
employeeID varchar(20),
jobClass varchar(20),
constraint fk_Employee_Staff foreign key (employeeID) references Employee(employeeID),
constraint pk_Staff primary key (employeeID)
);

create table Pharmacist
(
employeeID varchar(20),
constraint fk_Employee_Pharmacist foreign key (employeeID) references Employee(employeeID),
constraint pk_Pharmacist primary key (employeeID)
);

create table Technician
(
employeeID varchar(20),
constraint fk_Employee_Technician foreign key (employeeID) references Employee(employeeID),
constraint pk_Technician primary key (employeeID)
);

create table TechnicianLab
(
employeeID varchar(20),
labName varchar(20),
constraint fk_Technician_TechnicianLab foreign key (employeeID) references Technician(employeeID),
constraint fk_Laboratory_TechnicianLab foreign key (labName) references Laboratory(labName),
constraint pk_TechnicianLab primary key (employeeID,labName)
);

create table Laboratory
(
headTechnicianID varchar(20),
labName varchar(20),
labLocation varchar(20),
constraint fk_TechnicianLab_Laboratory foreign key (headTechnicianID,labName) references TechnicianLab(employeeID,labName),
constraint pk_Laboratory primary key (labName)
);

create table Deceased
(
patientID varchar(20),
toeTag varchar(20),
constraint fk_Patient_Deceased foreign key (patientID) references Patient(patientID),
constraint pk_Deceased primary key (patientID)
);

create table Resident
(
patientID varchar(20),
admittedDate date,
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
patientID varchar(20),
physicianID varchar(20),
visitDate date,
comments varchar(100),
constraint fk_Outpatient_Visit foreign key (patientID) references Outpatient (patientID),
constraint fk_Physician_Visit foreign key (physicianID) references Physician (physicianID),
constraint pk_Visit primary key (patientID,physicianID,visitDate)
);

create table Inventory
(
inStock bool,
drugName varchar(20),
units varchar(20),
constraint pk_Inventory primary key (drugName,units)
);

create table Prescription
(
patientID varchar(20),
physicianID varchar(20),
visitDate date,
drugName varchar(20),
units varchar(20),
quantity int(5),
pharmacistID varchar(20),
constraint fk_Visit_Prescription foreign key (patientID,physicianID,visitDate) references Visit(patientID,physicianID,visitDate),
constraint fk_Inventory_Prescription foreign key (drugName,units) references Inventory(drugName,units),
constraint fk_Pharmacist_Prescription foreign key (pharmacistID) references Pharmacist(employeeID),
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
physicianID varchar(20),
patientID varchar(20),
surgeryDate date,
reason varchar(100),
constraint fk_Surgeon_Surgery foreign key (physicianID) references Surgeon(physicianID),
constraint fk_Patient_Surgery foreign key (patientID) references Patient(patientID),
constraint pk_Surgery primary key (physicianID,patientID,surgeryDate)
);

create table VolunteerSkill
(
volunteerID varchar(20),
skillName varchar(20),
constraint fk_Volunteer_VolunteerSkill foreign key (volunteerID) references Volunteer(volunteerID),
constraint fk_Skills_VolunteerSkill foreign key (skillName) references Skill(skillName),
constraint pk_VolunteerSkill primary key (volunteerID,skillName)
);

create table Skill
(
skillName varchar(20),
constraint pk_Skill primary key (skillName)
);
