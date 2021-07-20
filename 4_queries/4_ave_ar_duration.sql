--average time of an assistance request
--In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)
SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;
