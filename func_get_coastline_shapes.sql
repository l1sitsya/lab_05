CREATE OR REPLACE FUNCTION api.get_coastline_shapes() RETURNS TABLE (
	shape_name INTEGER,
	segment_name INTEGER,
	points_count bigint
) AS $$
BEGIN
	RETURN QUERY
	SELECT shape, segment, COUNT(*) AS points_count
	FROM data.coastline
	GROUP BY shape, segment;
END;
$$ LANGUAGE plpgsql;
