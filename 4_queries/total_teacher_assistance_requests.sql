SELECT teachers.name AS name, count(assistance_requests.*) AS total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = "Waylon Boehm"
GROUP BY teachers.name;
