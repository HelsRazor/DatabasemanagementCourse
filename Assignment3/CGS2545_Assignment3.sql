INSERT INTO medication(name, brand, cost, description)
VALUE ('Acetaminophen', 'Gemini Pharmaceuticals', 69.80,'pain reliever and a fever 
reducer'),
('Adderall', 'Shire Pharmaceuticals', 71.90,'treat attention deficit hyperactivity 
disorder (ADHD) and narcolepsy'),
('Ciprofloxacin', 'Pfizer', 19.95,'treat different types of bacterial infections'),
('Clonazepam', 'Watson Pharmaceuticals', 35.56,'treat seizures and certain types of
anxiety disorders'),
('Doxycycline', 'Pfizer', 81.50,'treat many different bacterial infections'),
('Gabapentin', 'Pfizer', 68.67,'treat neuropathic pain (nerve pain)'),
('Hydrochlorothiazide', 'Jubilant Cadista Pharmaceuticals', 16.77,'used to treat 
fluid retention (edema)'),
('Lexapro', 'Forest Laboratories', 260.00,'used to treat anxiety in adults'),
('Meloxicam', 'Boehringer Ingelheim Pharmaceuticals', 50.00,'used to treat pain or 
inflammation caused by rheumatoid arthritis and osteoarthritis'),
('Omeprazole', 'Kremers Urban Pharmaceuticals', 60.00,'used to treat symptoms of 
gastroesophageal reflux disease (GERD)'),
('Oxycodone', 'Purdue Pharma', 80.50,'used to treat moderate to severe pain'),
('Pantoprazole', 'Pfizer', 68.84,'used to treat erosive esophagitis (damage to the 
esophagus from stomach acid)'),
('Trazodone', 'PubChem', 14.63,'used to treat major depressive disorder'),
('Zoloft', 'Pfizer', 34.99,'used to treat depression, obsessive-compulsive 
disorder, panic disorder, anxiety disorders');

CREATE TABLE position
(
    ID INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE roomType
(
    ID INT NOT NULL AUTO_INCREMENT,
    roomDesc VARCHAR(15) NOT NULL,
    PRIMARY KEY(ID)
);

UPDATE nurse
SET position = 'Nurse'
where lastName ='Lockhart' AND firstName ='Abby';

UPDATE nurse
SET ssn = '998745622'
WHERE lastName = 'Spenser' AND firstName = 'Bobbie';

INSERT into roomType(roomDesc)
SELECT DISTINCT RoomType
FROM room;

INSERT INTO position (title)
SELECT DISTINCT position
FROM nurse;

INSERT INTO position (title)
SELECT DISTINCT position
FROM physician;