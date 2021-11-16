select
    {{ var('items') }}.*,
    {{ var('items_assetaccountref') }}.*
from {{ var('items') }}
left join {{ var('items_assetaccountref') }} using (_airbyte_items_hashid)
left join {{ var('items_expenseaccountref') }} using (_airbyte_items_hashid)
left join {{ var('items_incomeaccountref') }} using (_airbyte_items_hashid)