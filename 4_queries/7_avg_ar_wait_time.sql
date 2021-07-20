--cohort  average time it takes to start an assistance request.
--In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)
SELECT avg(started_at-created_at) as average_wait_time
FROM assistance_requests;