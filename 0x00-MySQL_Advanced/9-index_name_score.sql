-- This script creates an index idx_name_first_score on the table names for the first letter of name and score

ALTER TABLE names 
ADD INDEX idx_name_first_score (SUBSTRING(name, 1, 1), score);
