-- This script creates a view need_meeting for students with low scores and meeting conditions

CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80  -- Students with a score under 80
AND (last_meeting IS NULL OR last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH));  -- No last meeting or more than 1 month ago
