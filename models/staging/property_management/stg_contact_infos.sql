select 
  *
from {{ source('property_management', 'contact_infos') }}