-- This script creates a trigger to reset valid_email when the email is changed

DELIMITER //

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email is being changed
    IF OLD.email <> NEW.email THEN
        SET NEW.valid_email = 0;  -- Reset valid_email to 0 if email has changed
    END IF;
END;

//

DELIMITER ;
