select 
   *
from {{ source('property_management', 'transactions') }}