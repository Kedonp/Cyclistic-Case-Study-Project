-- Ride duration distribution by ride type
SELECT 
  rideable_type,
  minutes_by_group,
  COUNT(*) AS total_rides
FROM cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY rideable_type, minutes_by_group
ORDER BY rideable_type, minutes_by_group;
