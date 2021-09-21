

select   
    stream_id, 
    show_id,
    user_id, 
    category,
    title,
    genres,
    release_year, 
    stream_timestamp,
    stream_duration

from "production"."dbt_victoria_mola"."stg_vodclickstream_uk_movies"

-- dbt run --model <model.sql> --var 'is_test_run: false'


  limit 100

