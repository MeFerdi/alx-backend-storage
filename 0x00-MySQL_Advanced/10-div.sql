-- This script creates a function SafeDiv that safely divides two integers

DELIMITER //

CREATE FUNCTION SafeDiv(
    a INT,  -- The numerator
    b INT   -- The denominator
) RETURNS FLOAT
BEGIN
    -- Check if b is zero and return 0 if true, otherwise return the division result
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END;

//

DELIMITER ;
