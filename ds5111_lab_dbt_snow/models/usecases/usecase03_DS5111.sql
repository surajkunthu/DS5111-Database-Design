
{{ config(materialized='view') }}

SELECT instructor
FROM instructors
WHERE active = FALSE


