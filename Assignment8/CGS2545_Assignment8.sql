use hospital

ALTER TABLE patient
ADD CONSTRAINT insuranceAcct UNIQUE (insuranceAcct);

INSERT INTO patient (ssn, lastName, firstName, address, phone, insuranceId, insuranceAcct, pcp)
VALUES (100000005, 'Goodman', 'Yvonne', '12 Creekside St', 2025550103, 1000, 68476223, 20),
(100000006, 'Mackenzie', 'Dante', '137 Wall St', 2025550112, 1000, 36546341, 20),
(100000007, 'Rollins', 'Alysha', '411 Shirley St', 2025550115, 1001, 65465481, 20),
(100000008,' Gonzalez','Avaya', '7771 Border Court', 2025550119, 1001, 68421679, 20),
(100000009, 'Kelly', 'Haniya', '6 South Sulphur Springs Street', 2025550121, 1002, 68496213, 20),
(100000010, 'Chambers', 'Nathalie', '942 New Saddle Drive', 2025550122, 1002, 36545321, 20),
(100000011, 'Rollins', 'Dante', '9 Wrangler Ave', 2025550124, 1003, 654615421, 20 ),
(100000012, 'Mckee', 'Beverley', '7319 S. Greenview Drive', 2025550125, 1003, 78425879, 21),
(100000013, 'Lindsey', 'Paris', '763 West Mulberry St', 2025550132, 1004, 78476213, 21),
(100000014, 'Melia', 'Umaiza', '545 Ohio Ave', 2025550135, 1004, 26546321, 21),
(100000015, 'Prince', 'Nico', '20 Middle River Street', 2025550137, 1005, 15465421, 21),
(100000016, 'Rennie', 'Javan', '8112 North Country St', 2025550139, 1005, 58521879, 21),
(100000017, 'Waters', 'Ali', '83 Rockland Lane', 2025550144, 1006, 68472213, 21),
(100000018, 'Clarke', 'JohnPaul', '1 Riverside Lane', 2025550153, 1006, 76546321, 21),
(100000019, 'Kaiser', 'Dane', '694 Wall Road', 2025550155, 1007,65465431, 22),
(100000020, 'Newman', 'Hammad', '9970 State Court', 2025550157, 1007, 66421879, 22),
(100000021, 'Guthrie', 'Maha', '54 Woodsman Drive', 2025550161, 1008, 62421879, 22),
(100000022, 'Roberts', 'Tulisa', '7174 Studebaker Street', 2025550163, 1008, 98421879, 22),
(100000023, 'Solis', 'Robin', '8474 Wentworth Street', 2025550164, 1009, 68121879, 22),
(100000024, 'Heath', 'Kavita', '796 Hartford St', 2025550165, 1009, 68921879, 22),
(100000025, 'White', 'Meera', '484 Bridge St', 2025550166, 1010, 68491879, 22),
(100000026, 'Esparza', 'Bradlee', '7031 Gainsway St', 2025550173, 1010, 18421179, 23),
(100000027, 'Leonard', 'Leilani', '37 Monroe Street', 2025550175, 1011, 28421879, 23),
(100000028, 'Brook', 'Stefanie', '7990 West Surrey St', 2025550179, 1011, 38421879, 23),
(100000029, 'Squires', 'Grover', '7618 Madison Court', 2025550180, 1012, 48421879, 23),
(100000030, 'Kumar', 'Jonathan', '25 Annadale Court', 2025550182, 1012, 58421879, 23),
(100000031, 'Neville', 'Angus', '9841 Smith Drive', 2025550187, 1013, 78421879, 23),
(100000032, 'Sparrow', 'Uzair', '7999 Hall Street', 2025550188, 1013, 88421879, 23),
(100000033, 'Currie', 'Amari', '8411 Pleasant St', 2025550194, 1014, 18421879, 24),
(100000034, 'Wallace', 'Imaani', '33 Pierce Rd', 2025550195, 1014, 68421878, 24),
(100000035, 'House', 'Efe', '97 High Point Street', 2025550196, 1015, 68421877, 24),
(100000036, 'Atkinson', 'Atticus', '66 Harrison Dr', 2025550197, 1015, 68421876, 24),
(100000037, 'Ramirez', 'Michelle', '370 Hill Field Ave', 2025550198, 1016, 68421875, 24),
(100000038, 'Hassan', 'Remy', '249 Devon Lane', 2025550199, 1016, 68421874, 24),
(100000039, 'Beck', 'Jordana', '7911 Carson Lane', 2025550200, 1017, 68421873, 24);

INSERT INTO appointment(patient, prepNurse, physician, startDateTime, endDateTime, examRoom, cost)
VALUES (138, 100, 1, '2020-03-01 08:00:00', '2020-03-01 08:30:00', 140, 50.00),
(135, 100, 1, '2020-03-01 10:00:00', '2020-03-01 10:30:00', 141, 40.00),
(132, 100, 1,'2020-03-01 09:00:00', '2020-03-01 09:30:00', 142, 75.00),
(129, 100, 3, '2020-03-01 11:15:00', '2020-03-01 11:45:00', 143, 25.00),
(126, 100, 3, '2020-03-01 12:00:00', '2020-03-01 12:30:00', 144, 35.00),
(123, 102, 4, '2020-03-02 08:00:00', '2020-03-02 08:30:00', 145, 65.00),
(120, 102, 4, '2020-03-02 10:00:00', '2020-03-02 10:30:00', 146, 20.00),
(116, 102, 4, '2020-03-02 09:00:00', '2020-03-02 09:30:00', 147, 10.00),
(110, 102, 6, '2020-03-02 11:15:00','2020-03-02 11:45:00', 148, 80.00),
(107, 102, 6, '2020-03-02 12:00:00', '2020-03-02 12:30:00', 149, 55.00);

INSERT INTO prescription (physicianId, patientId, medicationId, prescribeDate, appointmentId,dose)
VALUES (1, 138, 1, '2020-03-01', 1, 250),
(1, 132, 3,  '2020-03-01', 3, 500),
(3, 126, 5,  '2020-03-01', 5, 200),
(4,123, 6,  '2020-03-02', 6, 800),
(4, 116, 8, '2020-03-02', 8, 10),
(6, 110, 9,  '2020-03-02', 9, 8);