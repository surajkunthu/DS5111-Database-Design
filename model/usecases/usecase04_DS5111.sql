
{{ config(materialized='view') }}

SELECT mnemonic, COUNT(outcomes) AS num_outcomes
FROM learning_outcomes
GROUP BY mnemonic


