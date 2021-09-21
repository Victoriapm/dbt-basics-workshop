
    
    

select
    stream_id,
    count(*) as n_records

from "production"."dbt_victoria_mola"."stg_vodclickstream_uk_movies"
where stream_id is not null
group by stream_id
having count(*) > 1


