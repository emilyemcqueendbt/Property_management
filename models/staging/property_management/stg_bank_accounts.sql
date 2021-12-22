select
    *

   from {{ source('property_management', 'bank_accounts') }}