
{{ config(materialized='view') }}

SELECT 
FROM courses
WHERE active = FALSE


