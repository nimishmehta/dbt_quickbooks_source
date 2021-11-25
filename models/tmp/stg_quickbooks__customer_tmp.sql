select {{ var('customers') }}.*,
	{{ var("customers_billaddr") }}."Id" as bill_address_id,
	{{ var("customers_metadata") }}.createtime as updated_at,
	{{ var("customers_metadata") }}.lastupdatedtime as created_at,
	{{ var("customers_currencyref") }}.value as currency_id,
	{{ var("customers_defaulttaxcoderef") }}.value as default_tax_code_id,
	{{ var("customers_primaryemailaddr") }}.address as email,
	{{ var("customers_fax") }}.freeformnumber as fax_number,
	{{ var("customers_parentref") }}.value as parent_customer_id,
	{{ var("customers_paymentmethodref") }}.value as payment_method_id,
	{{ var("customers_primaryphone") }}.freeformnumber as phone_number,
	{{ var("customers_salestermref") }}.value as sales_term_id,
	{{ var("customers_shipaddr") }}."Id" as shipping_address_id
from {{ var('customers') }}
left join {{ var("customers_billaddr") }} using (_airbyte_customers_hashid)
left join {{ var("customers_currencyref") }} using (_airbyte_customers_hashid)
left join {{ var("customers_defaulttaxcoderef") }} using (_airbyte_customers_hashid)
left join {{ var("customers_fax") }} using (_airbyte_customers_hashid)
left join {{ var("customers_metadata") }} using (_airbyte_customers_hashid)
left join {{ var("customers_mobile") }} using (_airbyte_customers_hashid)
left join {{ var("customers_parentref") }} using (_airbyte_customers_hashid)
left join {{ var("customers_paymentmethodref") }} using (_airbyte_customers_hashid)
left join {{ var("customers_primaryemailaddr") }} using (_airbyte_customers_hashid)
left join {{ var("customers_primaryphone") }} using (_airbyte_customers_hashid)
left join {{ var("customers_salestermref") }} using (_airbyte_customers_hashid)
left join {{ var("customers_shipaddr") }} using (_airbyte_customers_hashid)
left join {{ var("customers_webaddr") }} using (_airbyte_customers_hashid)