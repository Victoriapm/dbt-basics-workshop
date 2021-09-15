{{ config(materialized='view') }}


select
    *
from {{ ref('netflix_titles') }}

-- dbt run --model <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}
