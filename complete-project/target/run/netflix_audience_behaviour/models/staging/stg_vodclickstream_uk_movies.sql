
  create view "production"."dbt_victoria_mola"."stg_vodclickstream_uk_movies__dbt_tmp" as (
    


select
    -- identifiers
    id::varchar(16) as stream_id, 
    movie_id::varchar(16) as show_id,
    user_id::varchar(16) as user_id, 

    -- movie info
    'Movie'::varchar(16) as category,
    title::varchar(64) as title,
    genres::varchar(64) as genres,
    left(release_date,4)::varchar(4) as release_year, 

    -- stream info
    datetime::timestamp as stream_timestamp, 
    duration::int as stream_duration


from "production"."dbt_victoria_mola"."vodclickstream_uk_movies"
where duration > 0

-- dbt run --model <model.sql> --var 'is_test_run: false'


  limit 100


  );
