select {{ var('vendors') }}.*,
{{ var('vendors_billaddr') }}."Id" as billing_address_id,
{{ var('vendors_metadata') }}.createtime as created_at,
{{ var('vendors_currencyref') }}.value as currency_id,
{{ var('vendors_primaryemailaddr') }}.address as email,
{{ var('vendors_fax') }}.freeformnumber as fax_number,
{{ var('vendors_mobile') }}.freeformnumber as mobile_phone,
{{ var('vendors_primaryphone') }}.freeformnumber as primary_phone,
{{ var('vendors_termref') }}.value as term_id,
{{ var('vendors_metadata') }}.lastupdatedtime as updated_at,
{{ var('vendors_webaddr') }}."URI" as web_url
from {{ var('vendors') }}
left join {{ var('vendors_billaddr') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_currencyref') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_fax') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_metadata') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_mobile') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_primaryemailaddr') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_primaryphone') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_termref') }} using (_airbyte_vendors_hashid)
left join {{ var('vendors_webaddr') }} using (_airbyte_vendors_hashid)