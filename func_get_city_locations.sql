CREATE OR REPLACE FUNCTION api.get_city_locations() RETURNS TABLE (identifier_city INTEGER, stat_longitude DOUBLE PRECISION, stat_latitude DOUBLE PRECISION) AS $$
BEGIN
  RETURN QUERY
  SELECT identifier, longitude, latitude
  FROM data.cities;
END;
$$ LANGUAGE plpgsql;
