select 
  *
from {{ source('property_management', 'tenants') }}