CREATE OR REPLACE FUNCTION api.get_measurement_time_range(city_id INTEGER)
  RETURNS TABLE (first_measurement TIMESTAMP, last_measurement TIMESTAMP)
AS $$
BEGIN
  RETURN QUERY
  SELECT MIN(mark), MAX(mark)
  FROM data.measurement
  WHERE city = city_id;
END;
$$ LANGUAGE plpgsql;
