CREATE OR REPLACE FUNCTION api.get_shape_point(search_shape_id INTEGER) 
  RETURNS TABLE (point_order INTEGER, latitude DOUBLE PRECISION, longitude DOUB
LE PRECISION)
AS $$
BEGIN
  RETURN QUERY
  SELECT segment AS segment_of_line, latitude, longitude
  FROM data.coastline
  WHERE shape = search_shape_id
  ORDER BY segment;
END;
$$ LANGUAGE plpgsql;
