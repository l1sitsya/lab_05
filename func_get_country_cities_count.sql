CREATE OR REPLACE FUNCTION api.get_country_cities_count() RETURNS SETOF data.country_cities AS $$
BEGIN
  RETURN QUERY
  SELECT *
  FROM data.country_cities;
END;
$$ LANGUAGE plpgsql;
