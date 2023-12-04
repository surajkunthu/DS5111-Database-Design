
{{ config(materialized='view') }}

SELECT learning_outcomes.mnemonic, learning_outcomes.outcomes, courses.name
FROM courses
LEFT JOIN learning_outcomes
ON courses.mnemonic = learning_outcomes.mnemonic
WHERE learning_outcomes.outcomes LIKE '%SQL'
OR learning_outcomes.outcomes LIKE 'SQL%'
OR learning_outcomes.outcomes LIKE '%SQL%'


