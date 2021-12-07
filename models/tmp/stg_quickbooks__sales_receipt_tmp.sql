{{ config(enabled=var('using_sales_receipt', True)) }}

select {{ var('sales_receipts') }}.*,
{{ var('sales_receipts_billaddr') }}."Id" as billing_address_id,
{{ var('sales_receipts_classref') }}.value as class_id,
{{ var('sales_receipts_metadata') }}.createtime as created_at,
{{ var('sales_receipts_currencyref') }}.value as currency_id,
{{ var('sales_receipts_customerref') }}.value as customer_id,
{{ var('sales_receipts_departmentref') }}.value as department_id,
{{ var('sales_receipts_deposittoaccountref') }}.value as deposit_to_account_id,
{{ var('sales_receipts_paymentmethodref') }}.value as payment_method_id,
{{ var('sales_receipts_shipaddr') }}."Id" as shipping_address_id,
{{ var('sales_receipts_txntaxdetail') }}.totaltax as total_tax,
{{ var('sales_receipts_metadata') }}.lastupdatedtime as updated_at
from {{ var('sales_receipts') }}
left join {{ var('sales_receipts_billaddr') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_billemail') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_classref') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_currencyref') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_customermemo') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_customerref') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_customfield') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_departmentref') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_deposittoaccountref') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_linkedtxn') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_metadata') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_paymentmethodref') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_shipaddr') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_txntaxdetail') }} using (_airbyte_sales_receipts_hashid)