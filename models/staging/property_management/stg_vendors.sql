select 
    *
from {{ source('property_management', 'vendors') }}