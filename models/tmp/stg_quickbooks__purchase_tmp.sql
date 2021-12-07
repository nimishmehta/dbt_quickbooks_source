select {{ var('purchases') }}.*,
{{ var('purchases_accountref') }}.value as account_id,
{{ var('purchases_metadata') }}.createtime as created_at,
{{ var('purchases_currencyref') }}.value as currency_id,
{{ var('purchases_departmentref') }}.value as department_id,
{{ var('purchases_remittoaddr') }}."Id" as remit_to_address_id,
{{ var('purchases_metadata') }}.lastupdatedtime as updated_at
from {{ var('purchases') }}
left join {{ var('purchases_accountref') }} using (_airbyte_purchases_hashid)
left join {{ var('purchases_currencyref') }} using (_airbyte_purchases_hashid)
left join {{ var('purchases_departmentref') }} using (_airbyte_purchases_hashid)
left join {{ var('purchases_entityref') }} using (_airbyte_purchases_hashid)
left join {{ var('purchases_remittoaddr') }} using (_airbyte_purchases_hashid)
left join {{ var('purchases_metadata') }} using (_airbyte_purchases_hashid)
