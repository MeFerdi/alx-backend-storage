-- This script ranks country origins of bands ordered by the number of (non-unique) fans

SELECT 
    origin,                   -- The country of origin for the bands
    SUM(fans) AS nb_fans     -- Total number of fans for each origin
FROM 
    metal_bands              -- The table containing band information
GROUP BY 
    origin                   -- Grouping by country of origin
ORDER BY 
    nb_fans DESC;            -- Ordering by total number of fans in descending order
    