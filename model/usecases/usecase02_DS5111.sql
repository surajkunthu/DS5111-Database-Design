{{ config(materialized='view') }}

SELECT mnemonic, name
FROM courses
WHERE active = FALSE


