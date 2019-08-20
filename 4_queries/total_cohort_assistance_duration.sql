SELECT sum(completed_at - started_at) as total_duration, cohorts.name AS cohort
FROM assistance_requests
JOIN cohorts ON cohorts.id = cohort_id
JOIN students ON students.id = student_id
GROUP BY cohorts.name
ORDER BY total_duration;
