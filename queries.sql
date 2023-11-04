-- SELECT * FROM doctors;
-- SELECT first_name, specialty FROM doctors;

-- SELECT * FROM doctors WHERE id = 2;
-- SELECT * FROM doctors WHERE first_name = "Megumi";

-- SELECT * FROM doctors WHERE age < 63;
-- SELECT * FROM doctors WHERE age = 63;

-- SELECT first_name FROM doctors WHERE specialty = "Psychology" 
-- AND age = 63;

-- SELECT * FROM doctors WHERE specialty = "Psychology" 
-- OR specialty = "Chemistry";

-- SELECT * FROM doctors WHERE first_name LIKE "r%";
-- SELECT * FROM doctors WHERE first_name LIKE "%r%";

-- SELECT * FROM doctors ORDER BY age DESC;

-- SELECT COUNT(*) FROM doctors
-- WHERE specialty = "Psychology";

-- SELECT SUM(age) FROM doctors;
-- SELECT ROUND(AVG(age), 2) FROM doctors;

-- SELECT COUNT(*), specialty FROM doctors
-- GROUP BY specialty;

-- SELECT COUNT(*) AS c, specialty FROM doctors
-- GROUP BY specialty
-- ORDER BY c DESC;

-- SELECT * FROM appointments
-- JOIN doctors ON appointments.doctor_id = doctors.id;

-- Patients first and last name + appointments dates

-- SELECT patients.first_name, patients.last_name, appointments.occurs_on FROM patients
-- JOIN appointments ON appointments.patient_id = patients.id;

-- Select all of Megumi's appointments dates, with patients first and last name
-- SELECT patients.first_name, patients.last_name, appointments.occurs_on 
-- FROM doctors
-- JOIN appointments ON doctors.id = appointments.doctor_id
-- JOIN patients ON appointments.patient_id = patients.id
-- WHERE doctors.first_name = "Megumi"
-- AND doctors.last_name = "Hirao"
-- ORDER BY patients.last_name;

-- CRUD WITH SQL

-- INSERT INTO doctors (first_name, last_name, age, specialty)
-- VALUES ('Jane', 'Kina', 25, 'Generalist');

-- UPDATE doctors SET age = 40, first_name = 'John', last_name = 'Smith'  WHERE id = 3;

-- DELETE FROM doctors WHERE id = 9;

-- NOT GOOD will change all of the records in the db
-- UPDATE doctors SET age = 40, first_name = 'John', last_name = 'Smith';

-- NOT GOOD will delete all of the rows because the string "Cardiologist" will be evalueated as true
-- DELETE FROM doctors
-- WHERE specialty = "Dentist"
-- OR "Cardiologist";
