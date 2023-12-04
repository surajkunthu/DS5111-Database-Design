
{{ config(materialized='view') }}

SELECT assignments.term, instructors.instructor
FROM assignments
LEFT JOIN instructors
ON assignments.instructor_id = instructors.instructor_id
WHERE assignments.term = 'FALL2021'
ORDER BY instructors.instructor


