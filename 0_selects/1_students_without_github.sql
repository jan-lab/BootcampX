
SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id;

--students in the cohort
SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;

--total number of students who were in the first 3 cohorts.
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);

--all of the students that don't have an email or phone number.
SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;

--Get all of the students without a gmail.com account and a phone number.
SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;

-- currently enrolled students
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

--github activity of graduates
SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;