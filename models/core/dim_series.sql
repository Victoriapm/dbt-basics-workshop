{{ config(materialized='table') }}

select   
  show_id, 
  category,
  title, 
  director,
  principal_cast, 
  country, 
  release_year,
  rating,
  duration, 
  genres
from {{ref('stg_netflix_titles')}}
where category = 'TV Show'