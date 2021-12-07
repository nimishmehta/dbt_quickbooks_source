--To enable this model, set the using_invoice variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_purchase_order', False)) }}

select {{ var('purchase_orders') }}.*,
{{ var('purchase_orders_classref') }}.value as class_id,
{{ var('purchase_orders_metadata') }}.createtime as created_at,
{{ var('purchase_orders_currencyref') }}.value as currency_id,
{{ var('purchase_orders_apaccountref') }}.value as payable_account_id,
{{ var('purchase_orders_salestermref') }}.value as sales_term_id,
{{ var('purchase_orders_shipaddr') }}."Id" as shipping_address_id,
{{ var('purchase_orders_metadata') }}.lastupdatedtime as updated_at,
{{ var('purchase_orders_vendoraddr') }}."Id" as vendor_address_id,
{{ var('purchase_orders_vendorref') }}.value as vendor_id
from {{ var('purchase_orders') }}
left join {{ var('purchase_orders_apaccountref') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_classref') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_currencyref') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_departmentref') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_linkedtxn') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_metadata') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_salestermref') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_shipaddr') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_shipto') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_vendoraddr') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_vendorref') }} using (_airbyte_purchase_orders_hashid)
