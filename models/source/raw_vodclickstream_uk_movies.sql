{{ config(materialized='view') }}


select
    *
from {{ ref('vodclickstream_uk_movies') }}

-- dbt run --model <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}
