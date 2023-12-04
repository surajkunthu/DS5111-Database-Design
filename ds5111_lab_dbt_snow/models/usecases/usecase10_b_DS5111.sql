
{{ config(materialized='view') }}

SELECT assignments.mnemonic, assignments.term, instructors.instructor
FROM assignments
LEFT JOIN instructors
ON assignments.instructor_id = instructors.instructor_id
WHERE assignments.mnemonic 
IN (
	SELECT mnemonic
	FROM assignments
        GROUP BY term, mnemonic
        HAVING COUNT(DISTINCT instructor_id) > 1)
ORDER BY assignments.term, assignments.mnemonic, instructors.instructor

