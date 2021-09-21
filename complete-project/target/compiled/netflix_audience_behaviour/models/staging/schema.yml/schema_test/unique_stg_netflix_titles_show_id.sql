
    
    

select
    show_id,
    count(*) as n_records

from "production"."dbt_victoria_mola"."stg_netflix_titles"
where show_id is not null
group by show_id
having count(*) > 1


