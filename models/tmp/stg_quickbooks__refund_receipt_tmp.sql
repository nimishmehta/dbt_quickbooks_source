--To disable this model, set the using_refund_receipt variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_refund_receipt', True)) }}

select {{ var('refund_receipts') }}.*,
{{ var('refund_receipts_billaddr') }}."Id" as billing_address_id,
{{ var('refund_receipts_classref') }}.value as class_id,
{{ var('refund_receipts_metadata') }}.createtime as created_at,
{{ var('refund_receipts_metadata') }}.lastupdatedtime as updated_at,
{{ var('refund_receipts_currencyref') }}.value as currency_id,
{{ var('refund_receipts_customerref') }}.value as customer_id,
{{ var('refund_receipts_departmentref') }}.value as department_id,
{{ var('refund_receipts_deposittoaccountref') }}.value as deposit_to_account_id,
{{ var('refund_receipts_paymentmethodref') }}.value as payment_method_id

from {{ var('refund_receipts') }}
left join {{ var('refund_receipts_billaddr') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_billemail') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_classref') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_currencyref') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_customermemo') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_customerref') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_customfield') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_departmentref') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_deposittoaccountref') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_metadata') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_paymentmethodref') }} using (_airbyte_refund_receipts_hashid)
left join {{ var('refund_receipts_txntaxdetail') }} using (_airbyte_refund_receipts_hashid)