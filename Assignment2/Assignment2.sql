CREATE DATABASE hospital;
USE hospital;
CREATE TABLE insurance
(
    ID INT NOT NULL AUTO_INCREMENT,
    companyName VARCHAR(50) NOT NULL,
    phone   CHAR(10) NOT NULL,
    inNetwork TINYINT NOT NULL,
    PRIMARY KEY (ID)
);

ALTER TABLE insurance AUTO_INCREMENT=1000;

CREATE TABLE medicalProcedure
(
    code    INT NOT NULL AUTO_INCREMENT,
    name    VARCHAR(50) NOT NULL,
    cost    FLOAT(7,2) NOT NULL,
    PRIMARY KEY(code)
);

CREATE TABLE medication
(
    code INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    cost    FLOAT(7,2) NOT NULL,
    PRIMARY KEY(code)
);

CREATE TABLE nurse
(
    employeeId INT NOT NULL AUTO_INCREMENT,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    registered TINYINT NOT NULL,
    ssn CHAR(9) NOT NULL,
    PRIMARY KEY(employeeId)
);

ALTER TABLE nurse AUTO_INCREMENT=100;

CREATE TABLE physician
(
    employeeId INT NOT NULL AUTO_INCREMENT,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    ssn CHAR(9) NOT NULL,
    PRIMARY KEY (employeeId)
);

ALTER TABLE physician AUTO_INCREMENT = 500;

CREATE TABLE room
(
    roomNumber INT NOT NULL,
    roomType VARCHAR(30) NOT NULL,
    blockFloor INT NOT NULL,
    blockcode   INT NOT NULL,
    available   TINYINT NOT NULL,
    cost    FLOAT(7,2) DEFAULT NULL,
    PRIMARY KEY(roomNumber)
);

INSERT INTO insurance(companyName, phone, inNetwork) 
VALUES ('Unitedhealth Group', '8002587412', true),
('Wellpoint Inc. Group', '8008529632', true),
('Kaiser Foundation Group', '8003336666', true),
('Humana Group', '8001114444', true),
('Aetna Group', '8004447777', false),
('HCSC Group', '8007778888', true),
('Cigna Health Group', '8009996666', true),
('Highmark Group', '8006669999', true),
('Coventry Corp. Group', '8002225555', false),
('HIP Insurance Group', '8005558888', true),
('Independence Blue Cross Group', '8002228888', true),
('Blue Cross Blue Shield', '8008885555', false),
('Physicians Service', '8008882222', true),
('Health Net', '8007771111', true),
('Centene Corp Group', '8009993333', true),
('Carefirst Inc Group', '8001597532', false),
('Wellcare Group', '8009514789', true),
('UHC', '8003578963', true),
('Lifetime Healthcare Group', '8007536987', false);

INSERT INTO medicalprocedure(name, cost)
VALUES ('Reverse Rhinopodoplasty', 1500.00),
('Obtuse Pyloric Recombobulation', 3750.00),
('Folded Demiophtalmectomy ', 4500.00),
('Complete Walletectomy', 10000.00),
('Obfuscated Dermogastrotomy', 4899.00),
('Reversible Pancreomyoplasty', 5600.00),
('Follicular Demiectomy', 250.00),
('Cardiac dysrhythmias', 7178.00),
('Biliary tract disease', 4722.00),
('Fracture of neck of femur (hip),', 4861.00),
('Heart valve disorders', 5151.00),
('Pneumonia', 2501.00),
('Septicemia', 23663.00),
('Osteoarthritis', 16520.00),
('Liveborn', 13287.00),
('Congestive heart failure', 10218.00),
('Coronary atherosclerosis', 9003.00),
('Acute cerebrovascular disease', 8840.00),
('Mood disorders', 5246.00),
('Acute myocardial infarction', 12092.00);

INSERT INTO nurse(lastName, firstName, position, registered, ssn)
VALUES ('Espinosa', 'Carla', 'Head Nurse', true, '888226666'),
('Forman', 'Kitty', 'Head Nurse', true, '000112222'),
('Houlihan', 'Margaret', 'Head Nurse', true, '999551111'),
('Roberts', 'Laverne', 'Nurse', true, '777553333'),
('Flowers', 'Paul', 'Head Nurse', false, '559852222'),
('Hathaway', 'Carol', 'Nurse', true, '885231478'),
('Taggart', 'Samantha', 'Nurse', true, '357951478'),
('Lockhart', 'Abby', ' Nurse', true, '336541598'),
('Petrelli', 'Peter', 'Nurse', false, '225649874'),
('Peyton', 'Jackie', 'Nurse', true, '441523698'),
('Perkins', 'Ann', 'Nurse', false, '665412398'),
('Parker', 'Dell', 'Nurse', true, '554789632'),
('Chapel', 'Christine', 'Nurse', true, '885213647'),
('Hardy', 'Audrey', 'Nurse', true, '112365874'),
('Spenser', 'Bobbie', 'Nurse', true, '9987456'),
('Alden', 'Terri', 'Nurse', true, '775889632'),
('Young', 'Mary', 'Nurse', true, '159753684'),
('Fairhead', 'Charlie', 'Nurse', false, '987654321'),
('Seabrook', 'Tina', 'Nurse', true, '123456789');

INSERT INTO room(roomNumber, roomType, blockFloor, blockcode, available, cost)
VALUES (101, 'Critical', 1, 1, true, 3528.00),
(102, 'Critical', 1, 1, true, 3528.00),
(103, 'Critical', 1, 1, true, 3528.00),
(110, 'Critical', 1, 2, false, 3528.00),
(111, 'Critical', 1, 2, true, 3528.00),
(112, 'Critical', 1, 2, true, 3528.00),
(113, 'Critical', 1, 2, false, 3528.00),
(121, 'Critical', 1, 3, true, 3528.00),
(122, 'Critical', 1, 3, true, 3528.00),
(123, 'Critical', 1, 3, false, 3528.00),
(201, 'Private', 2, 1, false, 1791.00),
(202, 'Private', 2, 1, true, 1791.00),
(203, 'Private', 2, 1, true, 1791.00),
(210, 'Private', 2, 2, false, 1791.00),
(211, 'Private', 2, 2, true, 1791.00),
(212, 'Private', 2, 2, true, 1791.00),
(213, 'Private', 2, 2, false, 1791.00),
(221, 'Private', 2, 3, true, 1791.00),
(222, 'Private', 2, 3, false, 1791.00),
(223, 'Private', 2, 3, true, 1791.00),
(301, 'Semi-Private', 3, 1, false, 895.50),
(302, 'Semi-Private', 3, 1, true, 895.50),
(303, 'Semi-Private', 3, 1, true, 895.50),
(310, 'Semi-Private', 3, 2, false, 895.50),
(311, 'Semi-Private', 3, 2, true, 895.50),
(312, 'Semi-Private', 3, 2, true, 895.50),
(313, 'Semi-Private', 3, 2, false, 895.50),
(321, 'Semi-Private', 3, 3, true, 895.50),
(322, 'Semi-Private', 3, 3, true, 895.50),
(323, 'Semi-Private', 3, 3, false, 895.50),
(401, 'Semi-Private', 3, 1, false, 895.50),
(402, 'Semi-Private', 3, 1, false, 895.50),
(403, 'Semi-Private', 3, 1, false, 895.50),
(410, 'Semi-Private', 3, 2, false, 895.50),
(411, 'Semi-Private', 3, 2, false, 895.50),
(412, 'Semi-Private', 3, 2, true, 895.50),
(413, 'Semi-Private', 3, 2, true, 895.50),
(421, 'Semi-Private', 3, 3, true, 895.50),
(422, 'Semi-Private', 3, 3, true, 895.50),
(423, 'Semi-Private', 3, 3, true, 895.50);