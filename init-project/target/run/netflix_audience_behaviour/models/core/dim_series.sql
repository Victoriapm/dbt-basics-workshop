

  create  table "production"."dbt_victoria_mola"."dim_series__dbt_tmp"
  as (
    

select   
  show_id, 
  category,
  title, 
  director,
  principal_cast, 
  country, 
  release_year,
  rating,
  seasons, 
  genres
from "production"."dbt_victoria_mola"."stg_netflix_titles"
where category = 'TV Show'
-- dbt run --model <model.sql> --var 'is_test_run:false'

  );