--To enable this model, set the using_payment variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_payment', True)) }}

select {{ var('payments') }}.*,
createtime as created_at,
{{ var('payments_currencyref') }}.value as currency_id,
{{ var('payments_customerref') }}.value as customer_id,
{{ var('payments_deposittoaccountref') }}.value as deposit_to_account_id,
{{ var('payments_paymentmethodref') }}.value as payment_method_id,
{{ var('payments_araccountref') }}.value as receivable_account_id,
lastupdatedtime as updated_at

from {{ var('payments') }}
left join {{ var('payments_araccountref') }} using (_airbyte_payments_hashid)
left join {{ var('payments_currencyref') }} using (_airbyte_payments_hashid)
left join {{ var('payments_customerref') }} using (_airbyte_payments_hashid)
left join {{ var('payments_deposittoaccountref') }} using (_airbyte_payments_hashid)
left join {{ var('payments_metadata') }} using (_airbyte_payments_hashid)
left join {{ var('payments_paymentmethodref') }} using (_airbyte_payments_hashid)
