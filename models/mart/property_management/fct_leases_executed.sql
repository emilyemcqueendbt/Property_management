with tenants as (
    select * from {{ref('dim_tenants')}}
),
leases as (
    select * from {{ref('stg_leases')}}
),
rental_applications as (
    select * from {{ref('stg_rental_applications')}}
),
final as (
    select *
    from tenants
    left join leases using (id)
)
select * from final 