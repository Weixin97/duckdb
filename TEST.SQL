WITH RECURSIVE expected_intervals AS (
    SELECT timestamp '2024-07-26 00:00:00' AS interval_start
    UNION ALL 
    SELECT interval_start + INTERVAL '15 minute'
    FROM expected_intervals
    WHERE interval_start < TIMESTAMP '2024-07-26 14:30:00'
)
SELECT e.interval_start
FROM expected_intervals e;