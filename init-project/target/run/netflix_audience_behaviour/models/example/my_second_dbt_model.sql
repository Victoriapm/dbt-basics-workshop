
  create or replace  view production.dbt_victoria_bi.my_second_dbt_model  as (
    -- Use the `ref` function to select from other models

select *
from production.dbt_victoria_bi.my_first_dbt_model
where id = 1
  );
