SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN cohorts ON cohort_id = cohorts.id
JOIN students ON students_id = students.id
WHERE cohorts.name = "JUL02"
ORDER BY teacher;