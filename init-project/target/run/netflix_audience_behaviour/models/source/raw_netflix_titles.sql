
  create or replace  view production.dbt_victoria_bi.raw_netflix_titles  as (
    


select
    *
from production.dbt_victoria_bi.netflix_titles

-- dbt run --model <model.sql> --var 'is_test_run: false'


  limit 100


  );
