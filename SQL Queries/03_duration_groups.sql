-- Count rides by duration group and customer type
SELECT 
  minutes_by_group, 
  member_casual, 
  COUNT(*) AS total_rides
FROM cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY minutes_by_group, member_casual
ORDER BY minutes_by_group, member_casual;
