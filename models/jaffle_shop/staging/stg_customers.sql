
select 
        {{ dbt_utils.generate_surrogate_key(['id', 'first_name', 'last_name']) }} as CustUniqueID,
        * from {{ env_var('DBT_SOURCEDB', 'RAW') }}.jaffle_shop.Customers


 