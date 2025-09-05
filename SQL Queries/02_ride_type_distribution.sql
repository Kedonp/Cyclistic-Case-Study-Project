-- Distribution of ride types by customer type
SELECT 
  rideable_type,
  member_casual,
  COUNT(*) AS total_rides
FROM cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual;