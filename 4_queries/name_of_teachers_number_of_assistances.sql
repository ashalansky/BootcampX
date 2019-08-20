SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, count(assistance_requests) AS total_durations
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN cohorts ON cohort_id = cohorts.id
JOIN students ON students_id = students.id
WHERE cohorts.name = "JUL02"
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;