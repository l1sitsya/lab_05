CREATE OR REPLACE FUNCTION api.get_daily_temperatures(city_id INTEGER, start_date DATE, end_date DATE)
  RETURNS TABLE (data_mark TIMESTAMP, city_temperature DOUBLE PRECISION)
AS $$
BEGIN
  RETURN QUERY
  SELECT mark, (temperature - 32) * 5/9 AS temperature_celsius
  FROM data.measurement
  WHERE city = city_id AND mark >= start_date AND mark <= end_date;
END;
$$ LANGUAGE plpgsql;
