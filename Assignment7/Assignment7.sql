USE hospital

ALTER TABLE roomType 
ADD COLUMN cost DECIMAL(7,2) NOT NULL default 0.0;

UPDATE roomType
SET cost = 3528.00
where ID = 1;

UPDATE roomType
SET cost = 1791.00
where ID = 2;

UPDATE roomType
SET cost = 895.50
where ID = 3;

ALTER TABLE room
DROP COLUMN cost;

INSERT INTO roomType (roomDesc)
VALUES ('Exam');

INSERT INTO room (roomNumber, roomType, blockFloor, blockCode, available)
VALUES (140,4,1,4,0),(141,4,1,4,1),(142,4,1,4,0),(143,4,1,4,0),(144,4,1,4,1),(145,4,1,4,0),(146,4,1,4,1),(147,4,1,4,0),(148,4,1,4,1),(149,4,1,4,0);

CREATE TABLE appointment(

    ID INTEGER NOT NULL AUTO_INCREMENT,
    patient INT NOT NULL,
    prepNurse INT,
    physician INT NOT NULL,
    startDateTime TIMESTAMP NOT NULL,
    endDateTime TIMESTAMP NOT NULL,
    examRoom INT NOT NULL,
    cost DECIMAL(7,2) NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(patient) REFERENCES patient(ID),
    FOREIGN KEY(physician) REFERENCES physician(employeeId),
    FOREIGN KEY(prepNurse) REFERENCES nurse(employeeId),
    FOREIGN KEY(examRoom) REFERENCES room(roomNumber)
);

CREATE TABLE prescription(
    physicianId INT NOT NULL,
    patientId INT NOT NULL,
    medicationId INT NOT NULL,
    prescribeDate DATE NOT NULL,
    appointmentId INT NOT NULL,
    dose INT NOT NULL,
    PRIMARY KEY(physicianId, patientId, medicationId,prescribeDate),
    FOREIGN KEY(patientId) REFERENCES patient(ID),
    FOREIGN KEY(physicianId) REFERENCES physician(employeeId),
    FOREIGN KEY(medicationId) REFERENCES medication(code),
    FOREIGN KEY(appointmentId) REFERENCES appointment(ID)
);

CREATE TABLE admitted(
    ID INT NOT NULL AUTO_INCREMENT,
    patientId INT NOT NULL,
    roomNumber INT NOT NULL,
    startDateTime TIMESTAMP NOT NULL,
    endDateTime TIMESTAMP NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (patientId) REFERENCES patient(ID),
    FOREIGN KEY (roomNumber) REFERENCES room(roomNumber)
);

ALTER TABLE admitted AUTO_INCREMENT = 3000;

CREATE TABLE underGoes(
    patientId INT NOT NULL,
    procedureCode INT NOT NULL,
    admittedId INT NOT NULL,
    procedureDate TIMESTAMP NOT NULL,
    physicianId INT NOT NULL,
    nurseId INT NOT NULL,
    PRIMARY KEY(patientId, procedureCode, procedureDate),
    FOREIGN KEY(patientId) REFERENCES patient(ID),
    FOREIGN KEY(physicianId) REFERENCES physician(employeeId),
    FOREIGN KEY(admittedId) REFERENCES admitted(ID),
    FOREIGN KEY(nurseId) REFERENCES nurse(employeeId),
    FOREIGN KEY(procedureCode) REFERENCES medicalProcedure(code)
);