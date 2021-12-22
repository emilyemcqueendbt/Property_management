with property_owners as (
    select*
    from {{ref('stg_property_owners')}}
),
units as (
    select id
    from {{ref('stg_units')}}
),
properties as (
    select id 
    from {{ref('stg_properties')}}
),
final as (
    select property_owners.*
    from property_owners
    left join properties on properties.id = property_owners.id
)
select * from final 