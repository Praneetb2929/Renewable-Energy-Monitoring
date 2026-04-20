-- Renewable Energy Monitoring System
-- Name: Praneet Biswal
-- Roll No: 2306351

CREATE TABLE energy_sources (
    source_id INT PRIMARY KEY,
    source_name VARCHAR(50)
);

CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE energy_production (
    production_id INT PRIMARY KEY,
    source_id INT,
    location_id INT,
    production_date DATE,
    energy_generated_kwh FLOAT,
    FOREIGN KEY (source_id) REFERENCES energy_sources(source_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);