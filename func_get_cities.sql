CREATE OR REPLACE FUNCTION api.get_cities(country_search INTEGER) RETURNS TABLE (city_id INTEGER, city_name TEXT) AS $$
BEGIN
  RETURN QUERY
  SELECT identifier, description
  FROM data.cities
  WHERE country_search = country;
END;
$$ LANGUAGE plpgsql;
