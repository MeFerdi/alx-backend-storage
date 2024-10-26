-- This script lists all bands with Glam rock as their main style, ranked by their longevity

SELECT 
    band_name,                                 -- The name of the band
    COALESCE(YEAR(2022) - formed, 0) AS lifespan  -- Calculate lifespan in years until 2022
FROM 
    metal_bands                                -- The table containing band information
WHERE 
    style LIKE '%Glam rock%'                   -- Filter for bands with Glam rock as their main style
ORDER BY 
    lifespan DESC;                             -- Order by lifespan in descending order
    