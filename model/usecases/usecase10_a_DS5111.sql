
{{ config(materialized='view') }}

SELECT mnemonic, term 
FROM assignments
GROUP BY mnemonic, term
HAVING COUNT(instructor_id) > 1


