select 
    *
from {{ source('property_management', 'payment') }}