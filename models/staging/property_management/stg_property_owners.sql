select 
    *
    
from {{ source('property_management', 'property_owners') }}