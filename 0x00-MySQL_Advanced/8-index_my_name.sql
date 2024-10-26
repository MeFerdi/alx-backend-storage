-- This script creates an index idx_name_first on the table names for the first letter of name

ALTER TABLE names 
ADD INDEX idx_name_first (SUBSTRING(name, 1, 1));
