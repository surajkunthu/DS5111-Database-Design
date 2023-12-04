
{{ config(materialized='view') }}

SELECT courses.mnemonic, courses.name
FROM courses
LEFT JOIN learning_outcomes 
ON courses.mnemonic = learning_outcomes.mnemonic
WHERE learning_outcomes.outcomes IS NULL


