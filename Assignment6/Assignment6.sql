using hospital;

CREATE TABLE patient(
    ID INT NOT NULL AUTO_INCREMENT,
    ssn CHAR(9) NOT NULL UNIQUE,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone CHAR(10) NOT NULL,
    insuranceId INT,
    insuranceAct INT,
    pcp INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (insuranceId) REFERENCES insurance(ID),
    FOREIGN KEY (pcp) REFERENCES physician(employeeID)
);

ALTER TABLE patient AUTO_INCREMENT = 100;

select employeeId, lastName from physician
order by lastName;

 select ID, companyName from insurance order by companyName;

INSERT INTO patient (ssn, lastName, firstName ,address, phone, insuranceId, insuranceAct,pcp)
VALUES ('100000001', 'Smith', 'John', '42 Foobar Lane', '1235550256', 1000, 68476213, 24) ,
('100000002', 'Ritchie', 'Grace', '37 Snafu Drive', '1235550512', 1011, 36546321, 23),
('100000003', 'Patient', 'Random', '101 Omgbbq Street', '1235551204', 1018, 65465421, 21),
('100000004', 'Doe', 'Dennis', '1100 Foobaz Avenue', '1235552048', 1005, 68421879, 22);
