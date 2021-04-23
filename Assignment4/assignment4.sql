use hospital

select * from roomtype;

update room
set roomtype = 1 
where roomtype = 'Critical';

update room
set roomtype = 2
where roomtype = 'Private';

update room
set roomtype = 3
where roomtype = 'Semi-Private';

Alter Table room
MODIFY COLUMN roomtype INT NOT NULL;

Alter TABLE room
ADD foreign key (roomtype) references roomtype (id);

select * from position;
desc nurse;

update nurse
set position = 1
where position = "Head Nurse";

update nurse
set position = 2
where position = "Nurse";

Alter Table nurse
Modify column position INT NOT NULL;

alter table nurse
add foreign key (position) references position (id);

desc physician;
select * from physician;

update physician
set position = 3
where position = "Staff Internist";

update physician
set position = 4
where position = "Attending Physician";

update physician
set position = 5
where position = "Surgical Attending Physician";

update physician
set position = 6
where position = "Senior Attending Physician";

update physician
set position = 7
where position = "Head Chief of Medicine";

update physician
set position = 8
where position = "MD Resident";

update physician
set position = 9
where position = "Attending Psychiatrist";

update physician
set position = 10
where position = "Attending Pediatrician";

update physician
set position = 11
where position = "Intensive Care Surgeon";

update physician
set position = 12
where position = "Head of Diagnostic Medicine";

update physician
set position = 13
where position = "ER Attending";

update physician
set position = 14
where position = "ER Resident";

update physician
set position = 15
where position = "Surgical Intern";

update physician
set position = 16
where position = "medical Student";

Alter Table physician
Modify Column position INT;

Alter table physician
add foreign key (position) references position (id);