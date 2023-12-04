
{{ config(materialized='view') }}

SELECT instructors.instructor, assignments.term, COUNT(assignments.mnemonic) AS num_of_courses
FROM instructors
LEFT JOIN assignments
ON instructors.instructor_id = assignments.instructor_id
GROUP BY assignments.term, instructors.instructor
ORDER BY assignments.term, instructors.instructor


