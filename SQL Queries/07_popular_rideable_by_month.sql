-- Most popular rideable type by month
SELECT *
FROM (
  SELECT 
    month,
    rideable_type,
    COUNT(*) AS total_rides,
    ROW_NUMBER() OVER (PARTITION BY month ORDER BY COUNT(*) DESC) AS rank
  FROM cohesive-pad-459019-r9.Cyclistic.rider_data
  GROUP BY month, rideable_type
)
WHERE rank = 1
ORDER BY 
  CASE month
    WHEN 'January' THEN 1
    WHEN 'February' THEN 2
    WHEN 'March' THEN 3
    WHEN 'April' THEN 4
    WHEN 'May' THEN 5
    WHEN 'June' THEN 6
    WHEN 'July' THEN 7
    WHEN 'August' THEN 8
    WHEN 'September' THEN 9
    WHEN 'October' THEN 10
    WHEN 'November' THEN 11
    WHEN 'December' THEN 12
  END;
