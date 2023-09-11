{{ config (materialized = 'incremental', schema = 'Transforming', unique_key='id') }}

select *
from {{ ref('stg_orders') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run

  where _etl_loaded_at >= (select max(_etl_loaded_at) from {{ this }})

{% endif %}
