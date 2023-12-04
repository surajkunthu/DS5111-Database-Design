
{{ config(materialized='view') }}

SELECT assignments.mnemonic, assignments.term, instructors.instructor
FROM assignments
LEFT JOIN instructors
ON assignments.instructor_id = instructors.instructor_id
WHERE assignments.mnemonic = 'ds5100' AND assignments.term = 'SUMMER2021'


