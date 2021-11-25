--To enable this model, set the using_invoice variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_invoice', True)) }}

select
{{ var('invoices') }}.*,
{{ var('invoices_billaddr') }}."Id" as billing_address_id,
{{ var('invoices_billemail') }}.address as billing_email,
{{ var('invoices_metadata') }}.createtime as created_at,
{{ var('invoices_metadata') }}.lastupdatedtime as updated_at,
{{ var('invoices_currencyref') }}.value as currency_id,
{{ var('invoices_customerref') }}.value as customer_id,
{{ var('invoices_customermemo') }}.value as customer_memo,
{{ var('invoices_deliveryinfo') }}.deliverytype as delivery_type,
{{ var('invoices_departmentref') }}.value as department_id,
{{ var('invoices_salestermref') }}.value as sales_term_id,
{{ var('invoices_shipaddr') }}."Id" as shipping_address_id,
{{ var('invoices_txntaxdetail_txntaxcoderef') }}.value as tax_code_id,
{{ var('invoices_txntaxdetail') }}.totaltax as total_tax

from {{ var('invoices') }}
left join {{ var('invoices_billaddr') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_billemail') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_currencyref') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_customerref') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_customermemo') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_deliveryinfo') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_departmentref') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_salestermref') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_shipaddr') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_metadata') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_txntaxdetail') }} using (_airbyte_invoices_hashid)
left join {{ var('invoices_txntaxdetail_txntaxcoderef') }} using (_airbyte_txntaxdetail_hashid)