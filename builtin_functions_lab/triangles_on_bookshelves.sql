SELECT
	"id"
	, (side * height::float4 / 2) AS area
FROM triangles