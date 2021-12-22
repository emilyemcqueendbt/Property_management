with emails as (
    select *
    from {{ ref('stg_emails')}}
),
email_delivery_statuses as (
    select
    email_id 
    from {{ref('stg_email_delivery_statuses')}}
),

final as (
    select 
    emails.* 
    from emails 

    left join email_delivery_statuses on emails.id = email_delivery_statuses.email_id 
) 


select * from final 