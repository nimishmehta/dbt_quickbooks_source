select
    {{ var('accounts') }}.*,
    {{ var('accounts_currencyref') }}.value as currency_id,
    {{ var('accounts_metadata') }}.createtime as created_at,
    {{ var('accounts_metadata') }}.lastupdatedtime as updated_at,
    {{ var('accounts_parentref') }}.value as parent_account_id
from {{ var('accounts') }}
left join {{ var('accounts_currencyref') }} using (_airbyte_accounts_hashid)
left join {{ var('accounts_metadata') }} using (_airbyte_accounts_hashid)
left join {{ var('accounts_parentref') }} using (_airbyte_accounts_hashid)