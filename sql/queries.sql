-- SELECT
SELECT * FROM energy_production;

-- WHERE
SELECT * FROM energy_production
WHERE energy_generated_kwh > 500;

-- GROUP BY
SELECT source_id, SUM(energy_generated_kwh) AS total_energy
FROM energy_production
GROUP BY source_id;

-- ORDER BY
SELECT * FROM energy_production
ORDER BY energy_generated_kwh DESC;

-- JOIN
SELECT 
    es.source_name,
    l.location_name,
    ep.production_date,
    ep.energy_generated_kwh
FROM energy_production ep
JOIN energy_sources es ON ep.source_id = es.source_id
JOIN locations l ON ep.location_id = l.location_id;