CREATE OR REPLACE FUNCTION api.get_countries(country_searching INTEGER) RETURNS TABLE (country_id INTEGER, country_name TEXT) AS $$
BEGIN
  RETURN QUERY
  SELECT identifier AS country_id, description AS country_name
  FROM data.countries
  WHERE region = country_searching;
END;
$$ LANGUAGE plpgsql;
