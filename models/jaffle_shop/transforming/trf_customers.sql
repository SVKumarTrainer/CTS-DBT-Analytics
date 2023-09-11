{{ config (schema = 'Transforming', materialized = 'table'
        ) }}
select ID as custid, CONCAT(first_name , ',', last_name) as custname
from {{ ref('stg_customers') }}