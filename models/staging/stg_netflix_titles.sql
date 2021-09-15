{{ config(materialized='view') }}


select
  show_id::varchar(16) as show_id, 
  "TYPE"::varchar(16) as category,
  title::varchar(64) as title, 
  director::varchar(64) as director,
  "CAST"::varchar(1024) as principal_cast, 
  country::varchar(64) as country, 
  release_year::varchar(4) as release_year,
  rating::varchar(16) as rating,
  duration::varchar(16) as duration, 
  listed_in::varchar(64) as genres
from {{ ref('netflix_titles') }}

-- dbt run --model <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}
