select * from {{ env_var('DBT_Source_Database', 'RAW') }}.jaffle_shop.{{ env_var('DBT_Source_TABLE', 'Customers') }}
where id >= {{ var('custid', 40) }}


