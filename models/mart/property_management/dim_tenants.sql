with tenants as (
    select *
    from {{ ref('stg_tenants')}}
),
bank_accounts as (
    select
    id 
    from {{ref('stg_bank_accounts')}}
),

contact_infos as (
    select
    id
    from {{ref('stg_contact_infos')}}
),

final as (
    select 
    contact_infos.* 
    from contact_infos 

    left join bank_accounts on contact_infos.id = bank_accounts.id 
) 


select * from final 