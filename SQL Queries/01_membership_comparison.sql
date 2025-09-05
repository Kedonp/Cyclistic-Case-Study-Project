-- Compare annual members vs. casual riders
SELECT 
  member_casual, 
  COUNT(member_casual) AS total_rides
FROM   cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY member_casual;
