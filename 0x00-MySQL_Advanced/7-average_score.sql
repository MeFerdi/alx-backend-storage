-- This script creates a stored procedure ComputeAverageScoreForUser to compute and store the average score for a student

DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT  -- User ID of the student
)
BEGIN
    DECLARE avg_score FLOAT;

    -- Calculate the average score for the specified user
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = user_id;  -- Ensure we only consider corrections for this user

    -- Update the user's average_score in the users table
    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id;  -- Update only the specified user
END;

//

DELIMITER ;
