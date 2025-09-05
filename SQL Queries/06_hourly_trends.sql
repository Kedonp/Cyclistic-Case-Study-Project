-- Most popular hours of the day (all customers)
SELECT
  hour_of_day,
  CASE hour_of_day
    WHEN 0 THEN '12 AM'
    WHEN 1 THEN '1 AM'
    WHEN 2 THEN '2 AM'
    WHEN 3 THEN '3 AM'
    WHEN 4 THEN '4 AM'
    WHEN 5 THEN '5 AM'
    WHEN 6 THEN '6 AM'
    WHEN 7 THEN '7 AM'
    WHEN 8 THEN '8 AM'
    WHEN 9 THEN '9 AM'
    WHEN 10 THEN '10 AM'
    WHEN 11 THEN '11 AM'
    WHEN 12 THEN '12 PM'
    WHEN 13 THEN '1 PM'
    WHEN 14 THEN '2 PM'
    WHEN 15 THEN '3 PM'
    WHEN 16 THEN '4 PM'
    WHEN 17 THEN '5 PM'
    WHEN 18 THEN '6 PM'
    WHEN 19 THEN '7 PM'
    WHEN 20 THEN '8 PM'
    WHEN 21 THEN '9 PM'
    WHEN 22 THEN '10 PM'
    WHEN 23 THEN '11 PM'
  END AS readable_hour,
  COUNT(*) AS total_rides
FROM cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY hour_of_day, readable_hour
ORDER BY hour_of_day;

-- Most popular hours by customer type
SELECT
  hour_of_day,
  CASE hour_of_day
    WHEN 0 THEN '12 AM'
    WHEN 1 THEN '1 AM'
    WHEN 2 THEN '2 AM'
    WHEN 3 THEN '3 AM'
    WHEN 4 THEN '4 AM'
    WHEN 5 THEN '5 AM'
    WHEN 6 THEN '6 AM'
    WHEN 7 THEN '7 AM'
    WHEN 8 THEN '8 AM'
    WHEN 9 THEN '9 AM'
    WHEN 10 THEN '10 AM'
    WHEN 11 THEN '11 AM'
    WHEN 12 THEN '12 PM'
    WHEN 13 THEN '1 PM'
    WHEN 14 THEN '2 PM'
    WHEN 15 THEN '3 PM'
    WHEN 16 THEN '4 PM'
    WHEN 17 THEN '5 PM'
    WHEN 18 THEN '6 PM'
    WHEN 19 THEN '7 PM'
    WHEN 20 THEN '8 PM'
    WHEN 21 THEN '9 PM'
    WHEN 22 THEN '10 PM'
    WHEN 23 THEN '11 PM'
  END AS readable_hour,
  member_casual,
  COUNT(*) AS total_rides
FROM cohesive-pad-459019-r9.Cyclistic.rider_data
GROUP BY hour_of_day, readable_hour, member_casual
ORDER BY hour_of_day;
