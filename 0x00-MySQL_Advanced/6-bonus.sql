-- This script creates a stored procedure AddBonus to add a new correction for a student

DELIMITER //

CREATE PROCEDURE AddBonus(
    IN user_id INT,                -- User ID of the student
    IN project_name VARCHAR(255),  -- Name of the project
    IN score INT                   -- Score for the correction
)
BEGIN
    DECLARE project_id INT;

    -- Check if the project already exists
    SELECT id INTO project_id 
    FROM projects 
    WHERE name = project_name;

    -- If the project does not exist, create it
    IF project_id IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();  -- Get the newly created project's ID
    END IF;

    -- Insert the correction into the corrections table
    INSERT INTO corrections (user_id, project_id, score) VALUES (user_id, project_id, score);
END;

//

DELIMITER ;
