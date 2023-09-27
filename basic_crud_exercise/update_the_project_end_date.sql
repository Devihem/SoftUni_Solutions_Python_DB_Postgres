UPDATE projects
SET end_date0 = start_date + INTERVAL '5 months'
WHERE end_date IS NULL

