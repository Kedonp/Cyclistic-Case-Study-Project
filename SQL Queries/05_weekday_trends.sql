-- Most popular days of the week overall
SELECT
  day_of_week,
  COUNT(*) AS total_rides
FROM cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY day_of_week
ORDER BY total_rides DESC;

-- Most popular days by customer type
SELECT 
  day_of_week, 
  member_casual, 
  COUNT(*) AS total_rides
FROM cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY day_of_week, member_casual
ORDER BY day_of_week, member_casual;
