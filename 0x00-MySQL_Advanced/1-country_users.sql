-- This script creates a table named users with specified attributes

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each user
    email VARCHAR(255) NOT NULL UNIQUE,          -- Email address, must be unique
    name VARCHAR(255),                            -- Name of the user
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'  -- Country with default value US
);
