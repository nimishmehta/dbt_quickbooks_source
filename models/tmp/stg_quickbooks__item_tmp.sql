select
    {{ var('items') }}.*,
    {{ var('items_assetaccountref') }}.value as asset_account_id,
    {{ var('items_metadata') }}.createtime as created_at,
    {{ var('items_expenseaccountref') }}.value as expense_account_id,
    {{ var('items_incomeaccountref') }}.value as income_account_id,
    {{ var('items_metadata') }}.lastupdatedtime as updated_at
from {{ var('items') }}
left join {{ var('items_assetaccountref') }} using (_airbyte_items_hashid)
left join {{ var('items_expenseaccountref') }} using (_airbyte_items_hashid)
left join {{ var('items_incomeaccountref') }} using (_airbyte_items_hashid)
left join {{ var('items_metadata') }} using (_airbyte_items_hashid)