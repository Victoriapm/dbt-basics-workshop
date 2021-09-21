{{ config(materialized='view') }}


select
  show_id::varchar(16) as show_id, 
  type::varchar(16) as category,
  title::varchar(128) as title, 
  director::varchar(64) as director,
  principal_cast::varchar(1024) as principal_cast, 
  country::varchar(128) as country, 
  release_year::varchar(4) as release_year,
  rating::varchar(16) as rating,
  case when duration like '%Seasons' then 
    replace(duration,'Seasons','')::int 
    else null end as seasons,
  case when duration like '%min' then 
    replace(duration,'min','')::int 
    else 0 end as duration,
  listed_in::varchar(128) as genres
from {{ ref('netflix_titles') }}

-- dbt run --model <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}
