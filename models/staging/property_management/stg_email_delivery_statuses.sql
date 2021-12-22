select 
    *
from {{ source('property_management', 'email_delivery_statuses') }}