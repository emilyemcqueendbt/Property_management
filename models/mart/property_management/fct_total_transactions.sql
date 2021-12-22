with transactions as (
    select * 
    from {{ref('stg_transactions')}}
),

payments as (
    select * 
    from {{ref('stg_payments')}}
    
),

final as(
    select *
    from transactions 
    left join stg_payments using (amount)
)

select * from final 