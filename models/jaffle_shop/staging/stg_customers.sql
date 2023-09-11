
select 
        {{ dbt_utils.generate_surrogate_key(['id', 'first_name', 'last_name']) }} as CustUniqueID,
        * from raw.jaffle_shop.Customers


 