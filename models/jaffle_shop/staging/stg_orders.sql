{{ config (materialized = 'incremental', unique_key='id') }}

select *
from RAW.JAFFLE_SHOP.ORDERS

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run

  where _etl_loaded_at >= (select max(_etl_loaded_at) from {{ this }})

{% endif %}
