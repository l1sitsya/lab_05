CREATE OR REPLACE FUNCTION api.get_region_countries_count()
  RETURNS TABLE (region_id INTEGER, country_count INTEGER)
AS $$
BEGIN
  RETURN QUERY
  SELECT region, COUNT(*) AS country_count
  FROM data.countries
  GROUP BY region;
END;
$$ LANGUAGE plpgsql;
