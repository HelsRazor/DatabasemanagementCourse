use hospital

ALTER TABLE physician
ADD UNIQUE (ssn);

ALTER TABLE nurse
ADD UNIQUE (ssn);

ALTER TABLE insurance
ADD UNIQUE (companyName);

ALTER TABLE medicalProcedure
ADD UNIQUE (name);

ALTER TABLE medication
ADD UNIQUE (name);

ALTER TABLE position
ADD UNIQUE (title);

ALTER TABLE roomType
ADD UNIQUE (roomDesc);

DESC position;

INSERT INTO position (title)
VALUE ('General Medicine');

SELECT * FROM position
WHERE title = 'General Medicine';

INSERT INTO physician (lastName, firstName, position, ssn)
VALUE ('Philip', 'Buck', 17, 111223333),
('Apostol', 'Robert', 17, 222334444),
('Badola', 'Jesus', 17, 333445555),
('Altino', 'Rosa', 17, 444556666),
('Hamilton', 'Ann', 17, 555667777);

CREATE TABLE department(
    ID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    head INT NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (head) REFERENCES physician(employeeId)
);

SELECT * FROM physician;

INSERT INTO department (name,head)
VALUES ('General Medicine', 21),
('Surgery', 2),
('Psychiatry', 9),
('Pediatrics', 10),
('Intensive Care Unit', 11),
('Emergency',16),
('Oncology', 4),
('Cardiology', 5),
('Neurology', 12),
('Materinity', 23);

CREATE TABLE onCall(
    ID INT NOT NULL AUTO_INCREMENT,
    nurse INT NOT NULL,
    blockFloor INT NOT NULL,
    blockCode INT NOT NULL,
    startDateTime TIMESTAMP NOT NULL,
    endDateTime TIMESTAMP NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(nurse) REFERENCES nurse(employeeId)
);

SELECT * FROM nurse;

INSERT INTO onCall(nurse,blockFloor,blockCode,startDateTime,endDateTime)
VALUE (100, 1, 1, '2020-03-01 07:00:00', '2020-03-01 19:00:00'),
 (101, 1, 2, '2020-03-01 19:00:00', '2020-03-02 07:00:00'),
  (102, 1, 3, '2020-03-02 07:00:00', '2020-03-02 19:00:00'),
   (103, 2, 1, '2020-03-02 19:00:00', '2020-03-03 07:00:00'),
    (104, 2, 2, '2020-03-03 07:00:00', '2020-03-03 19:00:00'),
     (105, 2, 3, '2020-03-03 19:00:00', '2020-03-04 07:00:00'),
      (106, 3, 1, '2020-03-04 07:00:00', '2020-03-04 19:00:00'),
       (107, 3, 2, '2020-03-04 19:00:00', '2020-03-05 07:00:00'),
        (108, 3, 3, '2020-03-05 07:00:00', '2020-03-05 19:00:00'),
         (109, 1, 1, '2020-03-05 19:00:00', '2020-03-06 07:00:00'),
          (110, 1, 2, '2020-03-06 07:00:00', '2020-03-06 19:00:00'),
           (111, 1, 3, '2020-03-06 19:00:00', '2020-03-07 07:00:00'),
            (112, 2, 1, '2020-03-07 07:00:00', '2020-03-07 19:00:00'),
             (113, 2, 2, '2020-03-07 19:00:00', '2020-03-08 07:00:00'),
              (114, 2, 3, '2020-03-08 07:00:00', '2020-03-08 19:00:00'),
               (115, 3, 1, '2020-03-08 19:00:00', '2020-03-09 07:00:00'),
                (116, 3, 2, '2020-03-09 07:00:00', '2020-03-09 19:00:00'),
                 (117, 3, 3, '2020-03-09 19:00:00', '2020-03-10 07:00:00'),
                  (118, 1, 1, '2020-03-10 07:00:00', '2020-03-10 19:00:00');