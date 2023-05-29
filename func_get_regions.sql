CREATE OR REPLACE FUNCTION api.get_regions()
  RETURNS TABLE (region_id INTEGER, region_name TEXT)
AS $$
BEGIN
  RETURN QUERY
  SELECT identifier, description
  FROM data.regions;
END;
$$ LANGUAGE plpgsql;
