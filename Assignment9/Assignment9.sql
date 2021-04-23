USE hospital

CREATE VIEW patient_prescriptions AS
SELECT concat(ph.firstname, " ", ph.lastname) AS Doctor,
       concat(pa.firstname, " ", pa.lastname) AS Patient,
       m.name AS Medication,
       pr.prescribeDate AS Date,
       concat(pr.dose, " mg") AS Dosage
FROM prescription pr, physician ph, patient pa, medication m, appointment a
WHERE pr.physicianId = ph.employeeId
AND pr.patientId = pa.id
AND pr.medicationId = m.code
AND pr.appointmentId = a.id;

CREATE VIEW nurse_schedule AS
SELECT concat(n.firstname," ",n.lastname) AS Nurse,
       date(o.startdatetime) AS Date,
       time(o.startdatetime) As 'Start Time',
       time(o.enddatetime) As 'End Time',
       o.blockFloor AS Floor,
       o.blockCode AS Section
FROM nurse n, oncall o
WHERE o.nurse = n.employeeId;

CREATE VIEW patient_appointments AS
SELECT concat(pa.firstname, " ", pa.lastname) AS Patient,
       concat(n.firstname, " ", n.lastname) AS Nurse,
       concat(ph.firstname, " ", ph.lastname) AS Doctor,
       date(a.startdatetime) AS Date,
       time(a.startdatetime) AS "Start Time",
       time(a.enddatetime) AS "End Time",
       a.examRoom AS Room
FROM appointment a, physician ph, patient pa, nurse n
WHERE a.physician = ph.employeeId
AND a.patient = pa.id
AND a.prepNurse = n.employeeId;

CREATE VIEW patient_insurance AS
SELECT concat(pa.firstname, " ", pa.lastname) AS Patient,
       i.companyName AS "Insurance Company",
       i.phone AS "Phone Number",
       pa.insuranceAcct AS "Insurance ID",
       (case i.inNetwork
             WHEN 1 THEN 'true'
             ELSE 'false'
       end) AS "In Network"
From patient pa, insurance i
WHERE pa.insuranceId = i.ID
ORDER BY Patient;

CREATE VIEW department_heads AS
SELECT d.name AS Department,
       concat(ph.firstname, " ", ph.lastname) AS Head
FROM physician ph, department d
WHERE d.head = ph.employeeId
ORDER BY Department;