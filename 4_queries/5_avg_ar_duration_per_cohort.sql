--average time of an assistance request per cohort
--In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;