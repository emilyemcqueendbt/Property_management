with tenants as (
    select * from {{ref('dim_tenants')}}
),
transactions as (
    select * from {{ref('stg_transactions')}}
),
units as (
    select * from {{ref('stg_units')}}
), 
final as (
    select * 
    from transactions 
    left join tenants using (id)
)
select * from final 