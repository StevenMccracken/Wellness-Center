/*---------------------- DDL & DML ----------------------*/

CREATE TABLE State (
    state 	VARCHAR(2) NOT NULL,
    CONSTRAINT pk_State PRIMARY KEY (state)
);

INSERT INTO State (state) VALUES ('AL');
INSERT INTO State (state) VALUES ('AK');
INSERT INTO State (state) VALUES ('AZ');
INSERT INTO State (state) VALUES ('AR');
INSERT INTO State (state) VALUES ('CA');
INSERT INTO State (state) VALUES ('CO');
INSERT INTO State (state) VALUES ('CT');
INSERT INTO State (state) VALUES ('DE');
INSERT INTO State (state) VALUES ('FL');
INSERT INTO State (state) VALUES ('GA');
INSERT INTO State (state) VALUES ('HI');
INSERT INTO State (state) VALUES ('ID');
INSERT INTO State (state) VALUES ('IL');
INSERT INTO State (state) VALUES ('IN');
INSERT INTO State (state) VALUES ('IA');
INSERT INTO State (state) VALUES ('KS');
INSERT INTO State (state) VALUES ('KY');
INSERT INTO State (state) VALUES ('LA');
INSERT INTO State (state) VALUES ('ME');
INSERT INTO State (state) VALUES ('MD');
INSERT INTO State (state) VALUES ('MA');
INSERT INTO State (state) VALUES ('MI');
INSERT INTO State (state) VALUES ('MN');
INSERT INTO State (state) VALUES ('MS');
INSERT INTO State (state) VALUES ('MO');
INSERT INTO State (state) VALUES ('MT');
INSERT INTO State (state) VALUES ('NE');
INSERT INTO State (state) VALUES ('NV');
INSERT INTO State (state) VALUES ('NH');
INSERT INTO State (state) VALUES ('NJ');
INSERT INTO State (state) VALUES ('NM');
INSERT INTO State (state) VALUES ('NY');
INSERT INTO State (state) VALUES ('NC');
INSERT INTO State (state) VALUES ('ND');
INSERT INTO State (state) VALUES ('OH');
INSERT INTO State (state) VALUES ('OK');
INSERT INTO State (state) VALUES ('OR');
INSERT INTO State (state) VALUES ('PA');
INSERT INTO State (state) VALUES ('RI');
INSERT INTO State (state) VALUES ('SC');
INSERT INTO State (state) VALUES ('SD');
INSERT INTO State (state) VALUES ('TN');
INSERT INTO State (state) VALUES ('TX');
INSERT INTO State (state) VALUES ('UT');
INSERT INTO State (state) VALUES ('VT');
INSERT INTO State (state) VALUES ('VA');
INSERT INTO State (state) VALUES ('WA');
INSERT INTO State (state) VALUES ('WV');
INSERT INTO State (state) VALUES ('WI');
INSERT INTO State (state) VALUES ('WY');

CREATE TABLE Person (
	personID 		VARCHAR(20) NOT NULL,
	firstName 		VARCHAR(20) NOT NULL,
	lastName 		VARCHAR(20) NOT NULL,
	birthDate 		DATE 		NOT NULL,
	phone 			VARCHAR(10) NOT NULL,
    streetAddress 	VARCHAR(50) NOT NULL,
    city 			VARCHAR(50) NOT NULL,
    state 			VARCHAR(2) 	NOT NULL,
    zipCode 		VARCHAR(10) NOT NULL,
    CONSTRAINT fk_State_Person FOREIGN KEY (state)
        REFERENCES State (state),
    CONSTRAINT pk_Person PRIMARY KEY (personID)
);

ALTER TABLE Person ADD CONSTRAINT
	uk_Person UNIQUE (firstName,lastName,birthDate,streetAddress,city,state,zipCode);

INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00001','Barbara','Streisand','1985-10-23','7145558686','5898 Marian St','Cypress','CA','90630');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00002','Linda','Wringwald','1960-06-17','5628809999','6161 Lee St','Cerritos','CA','90703');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00003','Dave','Brown','1987-10-10','3815559898','3434 Right Ln','Jacksonville','WY','83001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00004','Stan','Smith','1980-03-28','7142299562','1111 Beach Dr','Miami','FL','33101');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00005','Cathy','Neudebocker','1969-09-13','9094056218','2323 ImWalkinHere St','New York City','NY','10001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00006','Arya','Stark','1985-10-20','7145550202','6000 Flannigan St','Phoenix','AZ','85001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00007','Sansa','Stark','1986-09-24','7145550000','5555 Sherwock St','Montgomery','AL','36101');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00008','Jon','Snow','1970-03-14','7145550001','1432 Elmo St','Detroit','MI','48201');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00009','Eddard','Stark','1955-07-01','7145550002','4444 Candy Ln','Pittsburgh','PA','15201');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00010','Theon','Grayjoy','1988-02-28','7145550003','3131 Huston St,Apt# 3','Houston','TX','77001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00011','Tyrion','Lannister','1977-07-05','7145550004','4000 Shady Oaks Dr','Anchorage','AK','99501');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00012','Tywin','Lannister','1979-10-27','7145550005','1345 Jamboree St','Irvine','CA','92602');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00013','Jamie','Lannister','1984-06-11','7145550006','6767 Applewood Ln','Denton','TX','76201');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00014','Cersie','Lannister','1980-02-19','7145550007','6666 Sandy Toes Ave','Gilbert','AZ','85233');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00015','Robert','Baratheon','1981-03-20','7145550008','13 Elm St','Boston','MA','02108');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00016','Stannis','Baratheon','1982-04-23','7145550009','8989 Broadway Ave','New York City','NY','10001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00017','Sterling','Archer','1980-08-12','7145550010','9999 Danger Zone','Providence','RI','02901');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00018','Malory','Archer','1975-09-01','7145550011','10010 Pacific Coast Highway','Newport Beach','CA','92658');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00019','Lana','Kane','1960-03-05','7145550012','3333 Wildern St','Lynchburg','TN','37352');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00020','Cyril','Figgis','1964-05-13','7145550013','2222 Sowma St','Boulder','CO','80301');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00021','Cheryl','Tunt','1974-11-05','7145550014','4545 Atherton St','Long Beach','CA','90801');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00022','Pam','Poovey','1986-12-25','7145550015','6890 Grindlay St','Las Vegas','NV','89101');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00023','Ray','Gilette','1972-01-16','7145550016','5555 Belle St','Honolulu','HI','96813');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00024','James','Krieger','1940-03-15','7145550017','1357 Cathy St','Denver','CO','80123');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00025','Phillip','Fry','1955-05-23','7145550018','7878 Chapman Ave','Los Angeles','CA','90001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00026','Bender','Rodriguez','1960-04-08','7145550019','3434 Katella Ave','Lincoln','NE','68501');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00027','Turanga','Leela','1966-11-01','7145550020','5123 Knott Ave','Los Angeles','CA','90001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00028','Hermes','Conrad','1968-04-27','7145550021','9642 Valley VIEW St','Fullerton','CA','92831');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00029','Amy','Wong','1988-10-04','7145550022','2345 Electric Ave','Salt Lake City','UT','84101');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('00030','Alfred','Hitchcock','1960-12-04','7145550023','2333 Geode Rd','Los Angeles','CA','90001');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49000','Justin','Calomeni','1980-04-10','4086794321','1738 Wave Street','San Jose','CA','95113');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49001','Dylan','Steele','1975-05-05','4088088065','111 Miller Way','Santa Clara','CA','95050');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49002','Joey','Sanfilippo','1984-06-21','4083735564','1153 Cameo Drive','Campbell','CA','95008');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49003','Nick','Jackson','1984-05-13','4089876543','8008 PineVIEW Drive','Santa Clara','CA','95050');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49004','Linda','Light','1955-09-09','3187109832','101 Oldish Court','Boston','MA','02108');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49005','Morgan','Moreno','1983-02-18','4158128128','409 Ocean Drive','Long Beach','CA','90801');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49006','Sammie','Meilano','1980-09-12','1062308593','9100 Quest Street','Albany','NY','12201');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49007','Natalie','Long','1979-01-01','5409827539','2 Sunny Road','Santa Monica','CA','90401');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49008','Tony','Gonzales','1974-02-15','4086872314','47 Bent Drive','Campbell','CA','95008');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49009','Justin','Bermudez','1983-12-24','4089602185','1901 Boone Drive','Fremont','CA','94536');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49010','Alex','Jacobsen','1979-03-04','5032196604','100 Santa Fe Street','Sunnyvale','CA','94085');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49011','Claire','Cecilio','1985-05-08','5553453456','811 Yale Road','San Mateo','CA','94401');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49012','Sharon','Mansha','1985-03-23','4086879000','24255 Pacific Coast Highway','Malibu','CA','90263');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49013','Dayanne','Gonzales','1961-10-10','8917564011','24255 Pacific Coast Highway','Malibu','CA','90263');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49014','Desmond','Herring','1985-02-07','6691236789','24255 Pacific Coast Highway','Malibu','CA','90263');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49015','Jasmine','Carter','1963-10-17','6691002358','24255 Pacific Coast Highway','Malibu','CA','90263');
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES('49016','Megan','Gavitt','1974-05-02','7149087542','24255 Pacific Coast Highway','Malibu','CA','90263');

CREATE TABLE Employee (
    employeeID 	VARCHAR(20) NOT NULL,
    hireDate 	DATE 		NOT NULL,
    CONSTRAINT fk_Person_Employee FOREIGN KEY (employeeID)
        REFERENCES Person (personID),
    CONSTRAINT pk_Employee PRIMARY KEY (employeeID)
);

INSERT INTO Employee (employeeID,hireDate) VALUES ('00001','2015-02-04');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00002','2012-03-03');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00003','2010-06-24');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00004','2011-07-13');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00005','2013-03-04');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00006','2015-08-04');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00007','2014-10-04');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00008','2015-12-04');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00009','2013-05-04');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00010','2014-05-16');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00011','2013-06-23');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00012','2015-07-14');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00013','2014-08-03');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00014','2013-09-05');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00015','2014-10-17');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00016','2014-11-29');
INSERT INTO Employee (employeeID,hireDate) VALUES ('00017','2014-12-08');

CREATE TABLE Physician (
    physicianID 	VARCHAR(20) NOT NULL,
    specialty 		VARCHAR(20) NOT NULL,
    pagerNumber 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Person_Physician FOREIGN KEY (physicianID)
        REFERENCES Person (personID),
    CONSTRAINT pk_Physician PRIMARY KEY (physicianID)
);

#insert physicians
INSERT INTO Physician (physicianID,specialty,pagerNumber) VALUES ('00024','General','111');
INSERT INTO Physician (physicianID,specialty,pagerNumber) VALUES ('00025','Toxicology','222');
INSERT INTO Physician (physicianID,specialty,pagerNumber) VALUES ('00026','General','333');
INSERT INTO Physician (physicianID,specialty,pagerNumber) VALUES ('00027','Cardiovasular','444');
INSERT INTO Physician (physicianID,specialty,pagerNumber) VALUES ('00028','Gastrointestinal','555');

CREATE TABLE Patient (
    patientID 				VARCHAR(20) NOT NULL,
    contactDate 			DATE 		NOT NULL,
    treatingPhysicianID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Person_Patient FOREIGN KEY (patientID)
        REFERENCES Person (personID),
    CONSTRAINT fk_Physician_Patient FOREIGN KEY (treatingPhysicianID)
        REFERENCES Physician (physicianID),
    CONSTRAINT pk_Patient PRIMARY KEY (patientID)
);

#insert patients
INSERT INTO Patient (patientID,contactDate,treatingPhysicianID) VALUES ('00018','2010-02-03','00025');
INSERT INTO Patient (patientID,contactDate,treatingPhysicianID) VALUES ('00019','2015-02-23','00026');
INSERT INTO Patient (patientID,contactDate,treatingPhysicianID) VALUES ('00020','2014-05-16','00026');
INSERT INTO Patient (patientID,contactDate,treatingPhysicianID) VALUES ('00021','2016-01-13','00024');
INSERT INTO Patient (patientID,contactDate,treatingPhysicianID) VALUES ('00022','2011-11-25','00027');
INSERT INTO Patient (patientID,contactDate,treatingPhysicianID) VALUES ('00023','2012-05-03','00028');
INSERT INTO Patient (patientID,contactDate,treatingPhysicianID) VALUES ('00030','2013-10-13','00025');

CREATE TABLE Volunteer (
    volunteerID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Person_Volunteer FOREIGN KEY (volunteerID)
        REFERENCES Person (personID),
    CONSTRAINT pk_Volunteer PRIMARY KEY (volunteerID)
);

#insert volunteers
INSERT INTO Volunteer (volunteerID) VALUES ('00029');
INSERT INTO Volunteer (volunteerID) VALUES ('00019');
INSERT INTO Volunteer (volunteerID) VALUES ('00013');
INSERT INTO Volunteer (volunteerID) VALUES ('49011');


CREATE TABLE Nurse (
    nurseID 		VARCHAR(20) NOT NULL,
    certificate 	BOOLEAN 	NOT NULL,
    careCenterName 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Employee_Nurse FOREIGN KEY (nurseID)
        REFERENCES Employee (employeeID),
    CONSTRAINT pk_Nurse PRIMARY KEY (nurseID)
);

#insert nurses
INSERT INTO Nurse (nurseID,certificate,careCenterName) VALUES ('00001',TRUE,'Cardiology');
INSERT INTO Nurse (nurseID,certificate,careCenterName) VALUES ('00002',FALSE,'Cardiology');
INSERT INTO Nurse (nurseID,certificate,careCenterName) VALUES ('00003',TRUE,'oncology');
INSERT INTO Nurse (nurseID,certificate,careCenterName) VALUES ('00004',TRUE,'Radiology');
INSERT INTO Nurse (nurseID,certificate,careCenterName) VALUES ('00005',TRUE,'Radiology');
INSERT INTO Nurse (nurseID,certificate,careCenterName) VALUES ('00006',FALSE,'oncology');

CREATE TABLE RegisteredNurse (
    nurseID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Nurse_RegisteredNurse FOREIGN KEY (nurseID)
        REFERENCES Nurse (nurseID),
    CONSTRAINT pk_Nurse PRIMARY KEY (nurseID)
);

#insert registered nurses
INSERT INTO RegisteredNurse (nurseID) VALUES ('00001');
INSERT INTO RegisteredNurse (nurseID) VALUES ('00003');
INSERT INTO RegisteredNurse (nurseID) VALUES ('00004');
INSERT INTO RegisteredNurse (nurseID) VALUES ('00005');

CREATE TABLE CareCenter (
    careCenterName 		VARCHAR(20) NOT NULL,
    careCenterLocation 	VARCHAR(20) NOT NULL,
    headNurseID 		VARCHAR(20),
    CONSTRAINT fk_RegisteredNurse_CareCenter FOREIGN KEY (headNurseID)
        REFERENCES RegisteredNurse (nurseID),
    CONSTRAINT pk_CareCenter PRIMARY KEY (careCenterName)
);

#insert care centers
# 00004 is RN but is not head nurse
INSERT INTO CareCenter (headNurseID,careCenterLocation,careCenterName) VALUES ('00001','West Wing','Cardiology');
INSERT INTO CareCenter (headNurseID,careCenterLocation,careCenterName) VALUES ('00003','East Wing','oncology');
INSERT INTO CareCenter (headNurseID,careCenterLocation,careCenterName) VALUES ('00005','North Wing','Radiology');

ALTER TABLE Nurse ADD CONSTRAINT
	fk_CareCenter_Nurse FOREIGN KEY (careCenterName)
    REFERENCES CareCenter(careCenterName);

CREATE TABLE Room (
    careCenterName 	VARCHAR(20) NOT NULL,
    roomNumber 		INT(10) 	NOT NULL,
    CONSTRAINT fk_CareCenter_Room FOREIGN KEY (careCenterName)
        REFERENCES CareCenter (careCenterName),
    CONSTRAINT pk_Room PRIMARY KEY (careCenterName,roomNumber)
);

#insert rooms
INSERT INTO Room (careCenterName,roomNumber) VALUES ('Cardiology',10010);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('Cardiology',20035);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('Cardiology',20044);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('oncology',30027);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('oncology',20014);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('oncology',10030);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('Radiology',10047);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('Radiology',10046);
INSERT INTO Room (careCenterName,roomNumber) VALUES ('Radiology',30022);

CREATE TABLE Resident (
    patientID 		VARCHAR(20) NOT NULL,
    admittedDate 	DATE 		NOT NULL,
    CONSTRAINT fk_Patient_Resident FOREIGN KEY (patientID)
        REFERENCES Patient (patientID),
    CONSTRAINT pk_Resident PRIMARY KEY (patientID)
);

#insert resident patients
INSERT INTO Resident (patientID,admittedDate) VALUES ('00019','2015-02-24');
INSERT INTO Resident (patientID,admittedDate) VALUES ('00020','2014-05-16');
INSERT INTO Resident (patientID,admittedDate) VALUES ('00021','2015-12-23');

CREATE TABLE Bed (
    careCenterName 	VARCHAR(20) NOT NULL,
    roomNumber 		INT(10) 	NOT NULL,
    bedNumber 		INT(10) 	NOT NULL,
    patientID 		VARCHAR(20),
    CONSTRAINT fk_Room_Bed FOREIGN KEY (careCenterName,roomNumber)
        REFERENCES Room (careCenterName,roomNumber),
    CONSTRAINT fk_Resident_Bed FOREIGN KEY (patientID)
        REFERENCES Resident (patientID),
    CONSTRAINT pk_Bed PRIMARY KEY (careCenterName,roomNumber,bedNumber)
);

#insert beds
INSERT INTO Bed (patientID,careCenterName,roomNumber,bedNumber) VALUES (NULL,'Cardiology',10010,385);
INSERT INTO Bed (patientID,careCenterName,roomNumber,bedNumber) VALUES ('00019','Cardiology',10010,400);
INSERT INTO Bed (patientID,careCenterName,roomNumber,bedNumber) VALUES ('00020','oncology',30027,445);
INSERT INTO Bed (patientID,careCenterName,roomNumber,bedNumber) VALUES ('00021','oncology',10030,221);
INSERT INTO Bed (patientID,careCenterName,roomNumber,bedNumber) VALUES (NULL,'Radiology',30022,123);


CREATE TABLE Staff (
    staffID 	VARCHAR(20) NOT NULL,
    jobClass 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Employee_Staff FOREIGN KEY (staffID)
        REFERENCES Employee (employeeID),
    CONSTRAINT pk_Staff PRIMARY KEY (staffID)
);

#insert staff
INSERT INTO Staff (staffID,jobClass) VALUES ('00007','Janitor');
INSERT INTO Staff (staffID,jobClass) VALUES ('00008','Janitor');
INSERT INTO Staff (staffID,jobClass) VALUES ('00009','Receptionist');

CREATE TABLE Pharmacist (
    pharmacistID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Employee_Pharmacist FOREIGN KEY (pharmacistID)
        REFERENCES Employee (employeeID),
    CONSTRAINT pk_Pharmacist PRIMARY KEY (pharmacistID)
);

#insert pharmcists
INSERT INTO Pharmacist(pharmacistID) VALUES ('00010');
INSERT INTO Pharmacist(pharmacistID) VALUES ('00011');

CREATE TABLE Technician (
    technicianID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Employee_Technician FOREIGN KEY (technicianID)
        REFERENCES Employee (employeeID),
    CONSTRAINT pk_Technician PRIMARY KEY (technicianID)
);

#insert technicians
INSERT INTO Technician (technicianID) VALUES ('00012');
INSERT INTO Technician (technicianID) VALUES ('00013');
INSERT INTO Technician (technicianID) VALUES ('00014');
INSERT INTO Technician (technicianID) VALUES ('00015');
INSERT INTO Technician (technicianID) VALUES ('00016');
INSERT INTO Technician (technicianID) VALUES ('00017');

CREATE TABLE TechnicalSkills (
    skillName 	VARCHAR(20) NOT NULL,
    CONSTRAINT pk_TechnicalSkills PRIMARY KEY (skillName)
);

#enumerate TechnicalSkills TABLE
INSERT INTO TechnicalSkills (skillName) VALUES('Electrical');
INSERT INTO TechnicalSkills (skillName) VALUES('HVAC');
INSERT INTO TechnicalSkills (skillName) VALUES('Carpentry');
INSERT INTO TechnicalSkills (skillName) VALUES('Welding');

CREATE TABLE TechnicianTechnicialSkills (
    technicianID 	VARCHAR(20) NOT NULL,
    skillName 		VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Technician_TechnicianTechnicalSkills FOREIGN KEY (technicianID)
        REFERENCES Technician (technicianID),
    CONSTRAINT fk_TechnicalSkills_TechncianTechnicalSkills FOREIGN KEY (skillName)
        REFERENCES TechnicalSkills (skillName),
    CONSTRAINT pk_Technical_Skills PRIMARY KEY (technicianID,skillName)
);

#insert technician-technicalskills
# 00015 has no technical skills
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00012','Welding');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00014','Welding');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00012','HVAC');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00013','HVAC');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00016','HVAC');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00014','Electrical');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00017','Electrical');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00017','Carpentry');
INSERT INTO TechnicianTechnicialSkills (technicianID,skillName) VALUES ('00016','Carpentry');

CREATE TABLE Laboratory (
    headTechnicianID 	VARCHAR(20) NOT NULL,
    labName 			VARCHAR(20) NOT NULL,
    labLocation 		VARCHAR(20) NOT NULL,
    CONSTRAINT pk_Laboratory PRIMARY KEY (labName)
);

#insert labs
INSERT INTO Laboratory (labName,headTechnicianID,labLocation) VALUES ('Lab A','00013','West Wing');
INSERT INTO Laboratory (labName,headTechnicianID,labLocation) VALUES ('Lab B','00012','East Wing');
INSERT INTO Laboratory (labName,headTechnicianID,labLocation) VALUES ('Lab C','00016','North Wing');


CREATE TABLE TechnicianLab (
    technicianID 	VARCHAR(20) NOT NULL,
    labName 		VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Technician_TechnicianLab FOREIGN KEY (technicianID)
        REFERENCES Technician (technicianID),
    CONSTRAINT fk_Laboratory_TechnicianLab FOREIGN KEY (labName)
        REFERENCES Laboratory (labName),
    CONSTRAINT pk_TechnicianLab PRIMARY KEY (technicianID,labName)
);

#insert technician-lab
# 00012 is assigned to Lab A and Lab B
INSERT INTO TechnicianLab (technicianID,labName) VALUES ('00012','Lab A');
INSERT INTO TechnicianLab (technicianID,labName) VALUES ('00013','Lab A');
INSERT INTO TechnicianLab (technicianID,labName) VALUES ('00014','Lab A');
INSERT INTO TechnicianLab (technicianID,labName) VALUES ('00012','Lab B');
INSERT INTO TechnicianLab (technicianID,labName) VALUES ('00015','Lab B');
INSERT INTO TechnicianLab (technicianID,labName) VALUES ('00016','Lab C');
INSERT INTO TechnicianLab (technicianID,labName) VALUES ('00017','Lab C');

ALTER TABLE Laboratory ADD CONSTRAINT
	fk_TechnicianLab_Laboratory FOREIGN KEY (headTechnicianID,labName)
    REFERENCES TechnicianLab(technicianID,labName);

CREATE TABLE Deceased (
    patientID 	VARCHAR(20) NOT NULL,
    toeTag 		VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Patient_Deceased FOREIGN KEY (patientID)
        REFERENCES Patient (patientID),
    CONSTRAINT pk_Deceased PRIMARY KEY (patientID)
);

#insert deceased patients
INSERT INTO Deceased(patientID,toeTag) VALUES ('00018','01345');

CREATE TABLE Outpatient (
    patientID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Patient_Outpatient FOREIGN KEY (patientID)
        REFERENCES Patient (patientID),
    CONSTRAINT pk_Outpatient PRIMARY KEY (patientID)
);

#insert outpatients
INSERT INTO Outpatient (patientID) VALUES ('00022');
INSERT INTO Outpatient (patientID) VALUES ('00023');
INSERT INTO Outpatient (patientID) VALUES ('00030');

CREATE TABLE Visit (
    patientID 		VARCHAR(20) NOT NULL,
    physicianID 	VARCHAR(20) NOT NULL,
    visitDate 		DATE 		NOT NULL,
    comments 		VARCHAR(100),
    CONSTRAINT fk_Outpatient_Visit FOREIGN KEY (patientID)
        REFERENCES Outpatient (patientID),
    CONSTRAINT fk_Physician_Visit FOREIGN KEY (physicianID)
        REFERENCES Physician (physicianID),
    CONSTRAINT pk_Visit PRIMARY KEY (patientID,physicianID,visitDate)
);

#insert visits
INSERT INTO Visit (patientID,physicianID,visitDate,comments)
	VALUES ('00022','00024','2014-10-28','Patient had a dark red rash on forearm. Told patient to wash forearm every 6 hours.');
INSERT INTO Visit (patientID,physicianID,visitDate,comments)
	VALUES ('00022','00026','2014-11-07','Checkup. Patients rash has cleared up.');
INSERT INTO Visit (patientID,physicianID,visitDate,comments)
	VALUES ('00023','00026','2015-09-27','Patient is experiencing dizziness and headaches.');
INSERT INTO Visit (patientID,physicianID,visitDate,comments)
	VALUES ('00030','00025','2014-08-14','Patient is fainting. Having trouble with blood sugar levels.');

CREATE TABLE Inventory (
    inStock 	BOOLEAN 	NOT NULL,
    drugName 	VARCHAR(20) NOT NULL,
    units 		VARCHAR(20) NOT NULL,
    CONSTRAINT pk_Inventory PRIMARY KEY (drugName,units)
);

#insert drugs into inventory
INSERT INTO Inventory (drugName,units,inStock) VALUES ('Ibuprofen','milligrams',TRUE);
INSERT INTO Inventory (drugName,units,inStock) VALUES ('Insulin','cubic centimeters',TRUE);
INSERT INTO Inventory (drugName,units,inStock) VALUES ('Vicodin','milligrams',FALSE);

CREATE TABLE Prescription (
    patientID 		VARCHAR(20) NOT NULL,
    physicianID 	VARCHAR(20) NOT NULL,
    visitDate 		DATE 		NOT NULL,
    drugName 		VARCHAR(20) NOT NULL,
    units 			VARCHAR(20) NOT NULL,
    quantity 		INT(5) 		NOT NULL,
    pharmacistID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Visit_Prescription FOREIGN KEY (patientID,physicianID,visitDate)
        REFERENCES Visit (patientID ,physicianID ,visitDate),
    CONSTRAINT fk_Inventory_Prescription FOREIGN KEY (drugName ,units)
        REFERENCES Inventory (drugName ,units),
    CONSTRAINT fk_Pharmacist_Prescription FOREIGN KEY (pharmacistID)
        REFERENCES Pharmacist (pharmacistID),
    CONSTRAINT pk_Prescription PRIMARY KEY (patientID ,physicianID ,visitDate ,drugName)
);

#insert prescriptions
INSERT INTO Prescription (pharmacistID,patientID,physicianID,visitDate,drugName,units,quantity)
	VALUES ('00010','00023','00026','2015-09-27','Ibuprofen','milligrams','400');
INSERT INTO Prescription (pharmacistID,patientID,physicianID,visitDate,drugName,units,quantity)
	VALUES ('00011','00030','00025','2014-08-14','Insulin','cubic centimeters','10');

CREATE TABLE Surgeon (
    physicianID 	VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Physician_Surgeon FOREIGN KEY (physicianID)
        REFERENCES Physician (physicianID),
    CONSTRAINT pk_Surgeon PRIMARY KEY (physicianID)
);

#insert surgeons
INSERT INTO Surgeon (physicianID) VALUES ('00028');
INSERT INTO Surgeon (physicianID) VALUES ('00027');

CREATE TABLE Surgery (
    physicianID 	VARCHAR(20) NOT NULL,
    patientID 		VARCHAR(20) NOT NULL,
    surgeryDate 	DATE 		NOT NULL,
    reason 			VARCHAR(100),
    CONSTRAINT fk_Surgeon_Surgery FOREIGN KEY (physicianID)
        REFERENCES Surgeon (physicianID),
    CONSTRAINT fk_Patient_Surgery FOREIGN KEY (patientID)
        REFERENCES Patient (patientID),
    CONSTRAINT pk_Surgery PRIMARY KEY (physicianID,patientID,surgeryDate)
);

#insert surgery
INSERT INTO Surgery (physicianID,patientID,surgeryDate,reason) VALUES ('00028','00018','2013-01-04','Removed appendix'); #patient died and is classified deceased
INSERT INTO Surgery (physicianID,patientID,surgeryDate,reason) VALUES ('00027','00023','2014-03-13','Heart bypass');

CREATE TABLE VolunteerSkills (
    skillName 	VARCHAR(20) NOT NULL,
    CONSTRAINT pk_Skill PRIMARY KEY (skillName)
);

#enumerate VolunteerSkills TABLE
INSERT INTO VolunteerSkills (skillName) VALUES('CPR Training');
INSERT INTO VolunteerSkills (skillName) VALUES('Leadership');
INSERT INTO VolunteerSkills (skillName) VALUES('Teamwork');
INSERT INTO VolunteerSkills (skillName) VALUES('Customer Service');


CREATE TABLE VolunteerVolunteerSkills (
    volunteerID 	VARCHAR(20) NOT NULL,
    skillName 		VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Volunteer_VolunteerVolunteerSkills FOREIGN KEY (volunteerID)
        REFERENCES Volunteer (volunteerID),
    CONSTRAINT fk_VolunteerSkills_VolunteerVolunteerSkills FOREIGN KEY (skillName)
        REFERENCES VolunteerSkills (skillName),
    CONSTRAINT pk_VolunteerSkill PRIMARY KEY (volunteerID,skillName)
);

#insert volunteer skills
INSERT INTO VolunteerVolunteerSkills (volunteerID,skillName) VALUES ('00029','CPR Training');
INSERT INTO VolunteerVolunteerSkills (volunteerID,skillName) VALUES ('00029','Leadership');
INSERT INTO VolunteerVolunteerSkills (volunteerID,skillName) VALUES ('00019','CPR Training');
INSERT INTO VolunteerVolunteerSkills (volunteerID,skillName) VALUES ('00019','Leadership');
INSERT INTO VolunteerVolunteerSkills (volunteerID,skillName) VALUES ('00019','Teamwork');
INSERT INTO VolunteerVolunteerSkills (volunteerID,skillName) VALUES ('00013','Customer Service');


/*---------------------- VIEWS ----------------------*/

# AUXILIARY VIEWS

CREATE VIEW TotalBeds AS
    SELECT 
        CareCenter.careCenterName,COUNT(bedNumber) AS 'totalBeds'
    FROM
        CareCenter
            INNER JOIN
        Room ON CareCenter.careCenterName = Room.careCenterName
            INNER JOIN
        Bed ON Room.careCenterName = Bed.careCenterName
    GROUP BY CareCenter.careCenterName;

CREATE VIEW FilledBeds AS
    SELECT 
        CareCenter.careCenterName,COUNT(bedNumber) AS 'filledBeds'
    FROM
        CareCenter
            INNER JOIN
        Room ON CareCenter.careCenterName = Room.careCenterName
            INNER JOIN
        Bed ON Room.careCenterName = Bed.careCenterName
    WHERE
        Bed.patientID IS NOT NULL
    GROUP BY CareCenter.careCenterName;

CREATE VIEW CareCenter_TotalBeds_FilledBeds AS
    SELECT 
        careCenterName,
        totalBeds,
        IF(filledBeds IS NULL,0,filledBeds) filledBeds
    FROM
        TotalBeds
            LEFT OUTER JOIN
        FilledBeds USING (careCenterName);

# REQUIRED VIEWS

# VIEW 1
CREATE VIEW EmployeesHired AS
    SELECT 
        CONCAT(firstName,' ',lastName) AS 'Hospital Employee',
        hireDate AS 'Hire date'
    FROM
        Person
            INNER JOIN
        Employee ON Person.personID = Employee.employeeID;

# VIEW 2
CREATE VIEW NursesInCharge AS
    SELECT 
        careCenterName AS 'Care Center',
        CONCAT(firstName," ",lastName) AS 'Head Nurse',
        phone AS 'Nurse phone number'
    FROM
        CareCenter
            INNER JOIN
        Person ON CareCenter.headNurseID = Person.personID;

# VIEW 3
CREATE VIEW GoodTechnician AS
    SELECT DISTINCT
        firstName,lastName
    FROM
        TechnicianTechnicialSkills
            INNER JOIN
        Person ON technicianID = personID;

# VIEW 4
CREATE VIEW CareCenterBeds AS
    SELECT 
        careCenterName AS 'Care Center',
        filledBeds AS 'Occupied beds',
        (totalBeds - filledBeds) AS 'Free beds',
        totalBeds AS 'Total number of beds'
    FROM
        CareCenter_TotalBeds_FilledBeds;

# VIEW 5 NEEDS BETTER DATA
CREATE VIEW OutpatientsNotVisited AS
    SELECT 
        firstName,lastName
    FROM
        Outpatient
            INNER JOIN
        Person ON Outpatient.patientID = Person.personID
    WHERE
        patientID NOT IN (SELECT 
                patientID
            FROM
                Visit);

/*---------------------- QUERIES ----------------------*/

# TEST VIEW OUTPUT
SELECT * FROM TotalBeds; # Aux View 1
SELECT * FROM FilledBeds; # Aux View 2
SELECT * FROM CareCenter_TotalBeds_FilledBeds; # Aux View 3

SELECT * FROM EmployeesHired; # Required view 1
SELECT * FROM NursesInCharge; # Required view 2
SELECT * FROM GoodTechnician; # Required view 3
SELECT * FROM CareCenterBeds; # Required view 4
SELECT * FROM OutpatientsNotVisited; # Required view 5

# QUERY 1
SELECT 
    jobClass,firstName,lastName
FROM
    Staff
        INNER JOIN
    Person ON staffID = personID;

# QUERY 2
SELECT 
    CONCAT(firstName,' ',lastName) AS 'Volunteers without skills'
FROM
    Volunteer
        INNER JOIN
    Person ON volunteerID = personID
WHERE
    volunteerID NOT IN (SELECT 
            volunteerID
        FROM
            VolunteerVolunteerSkills);
    
# QUERY 3
SELECT 
    CONCAT(firstName," ",lastName) AS 'Patients who are volunteers'
FROM
    Patient
        INNER JOIN
    Volunteer ON patientID = volunteerID
        INNER JOIN
    Person ON volunteerID = personID;

# QUERY 4
SELECT 
    CONCAT(firstName," ",lastName) AS 'Outpatients visited exactly once'
FROM
    Visit
        INNER JOIN
    Person ON patientID = personID
GROUP BY CONCAT(firstName," ",lastName)
HAVING COUNT(patientID) = 1;

# QUERY 5
SELECT 
    VolunteerSkills.skillName,
    COUNT(VolunteerVolunteerSkills.skillName)
FROM
    VolunteerSkills
        LEFT OUTER JOIN
    VolunteerVolunteerSkills ON VolunteerSkills.skillName = VolunteerVolunteerSkills.skillName
GROUP BY VolunteerSkills.skillName 
UNION ALL
SELECT 
    TechnicalSkills.skillName,
    COUNT(TechnicianTechnicialSkills.skillName)
FROM
    TechnicianTechnicialSkills
        LEFT OUTER JOIN
    TechnicalSkills ON TechnicianTechnicialSkills.skillName = TechnicalSkills.skillName
GROUP BY TechnicalSkills.skillName;

# QUERY 6
SELECT 
    careCenterName AS 'Care Centers with no empty beds'
FROM
    CareCenter_TotalBeds_FilledBeds
WHERE
    totalBeds - filledBeds = 0;
    
# QUERY 7
SELECT 
    CONCAT(firstName," ",lastName) AS 'Registered Nurses not in charge of a Care Center'
FROM
    Nurse
        INNER JOIN
    Person ON nurseID = personID
WHERE
    certificate = TRUE
        AND nurseID NOT IN (SELECT 
            headNurseID
        FROM
            CareCenter);
    
# QUERY 8
SELECT 
    CareCenter.careCenterName AS 'Care Center',
    CONCAT(firstName,' ',lastName) AS 'Nurse in charge who also works there'
FROM
    Nurse
        INNER JOIN
    CareCenter ON Nurse.careCenterName = CareCenter.careCenterName
        INNER JOIN
    Person ON nurseID = personID
WHERE
    nurseID = headNurseID;

# QUERY 9
SELECT 
    Laboratory.labName
FROM
    Laboratory
WHERE
    labName NOT IN (SELECT 
            Laboratory.labName
        FROM
            Technician
                INNER JOIN
            TechnicianLab ON Technician.technicianID = TechnicianLab.technicianID
                INNER JOIN
            Laboratory ON TechnicianLab.labName = Laboratory.labName
        WHERE
            Technician.technicianID NOT IN (SELECT 
                    TechnicianTechnicialSkills.technicianID
                FROM
                    TechnicianTechnicialSkills));

# QUERY 10
SELECT 
    firstName,lastName,admittedDate
FROM
    Resident
        INNER JOIN
    Person ON Resident.patientID = Person.personID
WHERE
    admittedDate > (SELECT 
            MAX(hireDate)
        FROM
            Employee);
    
# QUERY 11
SELECT 
    firstName,lastName,contactDate,admittedDate
FROM
    Patient
        INNER JOIN
    Resident ON Patient.patientID = Resident.patientID
        INNER JOIN
    Person ON Patient.patientID = Person.personID
WHERE
    TIMESTAMPDIFF(DAY,contactDate,admittedDate) <= 7;

# QUERY 12
SELECT 
    firstName,lastName
FROM
    Patient
        INNER JOIN
    Person ON patientID = personID
WHERE
    patientID NOT IN (SELECT 
            patientID
        FROM
            Visit) 
UNION
SELECT 
    firstName,lastName
FROM
    Patient
        INNER JOIN
    Visit ON Patient.patientID = Visit.patientID
        INNER JOIN
    Person ON Patient.patientID = Person.personID
WHERE
    TIMESTAMPDIFF(DAY,contactDate,visitDate) > 7;

# QUERY 13 NEEDS BETTER DATA
SELECT 
    firstName,lastName,visitDate
FROM
    Physician
        INNER JOIN
    Visit ON Physician.physicianID = Visit.physicianID
        INNER JOIN
    Person ON Physician.physicianID = personID
GROUP BY Physician.physicianID ,visitDate
HAVING COUNT(Visit.physicianID) > 3;

# QUERY 14
SELECT 
    firstName,lastName,numResidentPatients,numOutpatients
FROM
    (SELECT 
        Physician.physicianID,
		COUNT(Resident.patientID) AS numResidentPatients,
		COUNT(Outpatient.patientID) AS numOutpatients
    FROM
        Physician
    INNER JOIN Patient ON Physician.physicianID = Patient.treatingPhysicianID
    LEFT OUTER JOIN Resident ON Patient.patientID = Resident.patientID
    LEFT OUTER JOIN Outpatient ON Patient.patientID = Outpatient.patientID
    GROUP BY Physician.physicianID) AS patientsOfPhysician
        INNER JOIN
    Person ON physicianID = Person.personID
WHERE
    patientsOfPhysician.numOutpatients > patientsOfPhysician.numResidentPatients;

# QUERY 15 (should I have select distinct?)
SELECT DISTINCT
    firstName,lastName
FROM
    Visit
        INNER JOIN
    Patient ON Visit.patientID = Patient.patientID
        INNER JOIN
    Person ON Visit.physicianID = Person.personID
WHERE
    Visit.physicianID != Patient.treatingPhysicianID;

# QUERY 16 (Show all the surgeries where the surgeon was not the patient's treating physician)
SELECT 
    firstName,lastName
FROM
    Surgery
        INNER JOIN
    Patient ON Surgery.patientID = Patient.patientID
        INNER JOIN
    Person ON Surgery.surgeonID = Person.personID
WHERE
    Surgery.surgeonID != Patient.treatingPhysicianID;

# QUERY 17 (Show the ID,first name,and last name for the Pharmacist who fills a prescription for a simple painkiller (Ibuprofen or acetaminophen))
SELECT 
    Prescription.physicianID,firstName,lastName,drugName
FROM
    Prescription
        INNER JOIN
    Pharmacist ON Prescription.pharmacistID = Pharmacist.pharmacistID
        INNER JOIN
    Person ON Pharmacist.pharmacistID = Person.personID
WHERE
    drugName = 'Ibuprofen'
        OR drugName = 'Acetaminophen';

# QUERY 18 (Show the lab and it's head technician if that head technician has 2 or more skills)
SELECT 
    firstName,lastName,Laboratory.labName
FROM
    TechnicianTechnicialSkills
        RIGHT OUTER JOIN
    Technician ON TechnicianTechnicialSkills.technicianID = Technician.technicianID
        INNER JOIN
    TechnicianLab ON Technician.technicianID = TechnicianLab.technicianID
        INNER JOIN
    Laboratory ON TechnicianLab.labName = Laboratory.labName
        INNER JOIN
    Person ON Technician.technicianID = personID
WHERE
    Technician.technicianID IN (SELECT 
            headTechnicianID
        FROM
            Laboratory)
GROUP BY Technician.technicianID
HAVING COUNT(TechnicianTechnicialSkills.technicianID) >= 2;

/*---------------------- TRIGGERS ----------------------*/

#DROP TRIGGER cecs323bg10.zipCode_BEFORE_INSERT;
DELIMITER $$
CREATE TRIGGER cecs323bg10.zipCode_BEFORE_INSERT BEFORE INSERT
ON Person FOR EACH ROW
BEGIN
	DECLARE message VARCHAR(100);
	DECLARE existingCity VARCHAR(50);
    DECLARE existingState VARCHAR(2);
    
	SELECT 
		city,state INTO existingCity ,existingState
	FROM
		Person
	WHERE
		zipCode = NEW.zipCode;
        
    IF (existingCity != NEW.city OR existingState != NEW.state) THEN
		BEGIN
			SET message = concat("Invalid city or state for zipcode ",NEW.zipCode);
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = message;
		END;
	END IF;
END;$$

#DROP TRIGGER cecs323bg10.prescription_BEFORE_INSERT;
CREATE TRIGGER cecs323bg10.prescription_BEFORE_INSERT BEFORE INSERT
ON Prescription FOR EACH ROW
BEGIN
	DECLARE message VARCHAR(100);
	DECLARE isDrugInStock BOOLEAN;
    
	SELECT 
		inStock INTO isDrugInStock
	FROM
		Inventory
	WHERE
		drugName = NEW.drugName;
        
    IF (!isDrugInStock) THEN
		BEGIN
			SET message = concat(NEW.drugName," is not in stock!");
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = message;
		END;
	END IF;
END;$$

#DROP TRIGGER cecs323bg10.registeredNurse_BEFORE_INSERT;
CREATE TRIGGER cecs323bg10.registeredNurse_BEFORE_INSERT BEFORE INSERT
ON RegisteredNurse FOR EACH ROW
BEGIN
	DECLARE message VARCHAR(100);
	DECLARE certifiedNurse BOOLEAN;
    
	SELECT 
		certificate INTO certifiedNurse
	FROM
		Nurse
	WHERE
		nurseID = NEW.nurseID;
        
    IF (!certifiedNurse) THEN
		BEGIN
			SET message = concat(NEW.nurseID," is not certified to be a RN!");
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = message;
		END;
	END IF;
END;$$
DELIMITER ;

# Test cecs323bg10.zipCode_BEFORE_INSERT trigger
SELECT city,state,zipCode FROM Person WHERE zipCode = '90630';
INSERT INTO Person (personID,firstName,lastName,birthDate,phone,streetAddress,city,state,zipCode)
	VALUES ('99999','Cletus','Hammer','1985-10-23','4930579033','5898 Jilian St','Narnia','CA','90630');

# Test cecs323bg10.registeredNurse_BEFORE_INSERT trigger
SELECT nurseID,certificate FROM Nurse WHERE nurseID = '00002';
INSERT INTO RegisteredNurse (nurseID) VALUES ('00002');

# Test cecs323bg10.prescription_BEFORE_INSERT trigger
SELECT drugName,inStock FROM Inventory WHERE drugName = 'Vicodin';
INSERT INTO Prescription (pharmacistID,patientID,physicianID,drugName,visitDate,units,quantity)
	VALUES ('00010','00030','00025','Vicodin','2014-08-14','milligrams','20');

#select * from information_schema.triggers where trigger_schema = 'whatever';
/*---------------------- DROP TABLES ----------------------*/

/*
DROP TABLE Bed;
DROP TABLE Room;
ALTER TABLE CareCenter DROP FOREIGN KEY fk_RegisteredNurse_CareCenter;
ALTER TABLE RegisteredNurse DROP FOREIGN KEY fk_Nurse_RegisteredNurse;
ALTER TABLE Nurse DROP FOREIGN KEY fk_CareCenter_Nurse;
DROP TABLE CareCenter;
DROP TABLE RegisteredNurse;
DROP TABLE Nurse;
DROP TABLE Staff;
DROP TABLE Prescription;
DROP TABLE Pharmacist;
ALTER TABLE Laboratory DROP FOREIGN KEY fk_TechnicianLab_Laboratory;
ALTER TABLE TechnicianLab DROP FOREIGN KEY fk_Technician_TechnicianLab;
ALTER TABLE TechnicianLab DROP FOREIGN KEY fk_Laboratory_TechnicianLab;
DROP TABLE Laboratory;
DROP TABLE TechnicianLab;
ALTER TABLE TechnicianTechnicialSkills DROP FOREIGN KEY fk_TechnicalSkills_TechncianTechnicalSkills;
ALTER TABLE TechnicianTechnicialSkills DROP FOREIGN KEY fk_Technician_TechnicianTechnicalSkills;
DROP TABLE TechnicalSkills;
ALTER TABLE Technician DROP FOREIGN KEY fk_Employee_Technician;
DROP TABLE TechnicianTechnicialSkills;
DROP TABLE Technician;
DROP TABLE Employee;
DROP TABLE Inventory;
DROP TABLE Visit;
DROP TABLE Outpatient;
DROP TABLE Resident;
DROP TABLE Deceased;
DROP TABLE Surgery;
DROP TABLE Surgeon;
DROP TABLE Patient;
DROP TABLE Physician;
ALTER TABLE Volunteer DROP FOREIGN KEY fk_Person_Volunteer;
DROP TABLE VolunteerVolunteerSkills;
DROP TABLE VolunteerSkills;
DROP TABLE Volunteer;
DROP TABLE Person;
DROP TABLE State;
*/

/*---------------------- NOTES ----------------------*/
# make after insert for registered nurse insert
# make triggers for date sensitive inserts,no future dates
# make trigger to limit number of beds in a room
# make trigger to enforce admittedDate for resident patient is on or after contactDate
# make trigger to prevent employees from being too young