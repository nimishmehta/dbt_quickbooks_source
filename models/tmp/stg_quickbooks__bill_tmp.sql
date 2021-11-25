--To disable this model, set the using_bill variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_bill', True)) }}

select {{ var('bills') }}.*,
{{ var('bills_currencyref') }}.value as currency_id,
{{ var('bills_departmentref') }}.value as department_id,
{{ var('bills_metadata') }}.lastupdatedtime as updated_at,
{{ var('bills_metadata') }}.createtime as created_at,
{{ var('bills_apaccountref') }}.value as payable_account_id,
{{ var('bills_salestermref') }}.value as sales_term_id,
{{ var('bills_vendorref') }}.value as vendor_id
from {{ var('bills') }}
left join {{ var('bills_apaccountref') }} using (_airbyte_bills_hashid)
left join {{ var('bills_currencyref') }} using (_airbyte_bills_hashid)
left join {{ var('bills_departmentref') }} using (_airbyte_bills_hashid)
left join {{ var('bills_metadata') }} using (_airbyte_bills_hashid)
left join {{ var('bills_salestermref') }} using (_airbyte_bills_hashid)
left join {{ var('bills_vendorref') }} using (_airbyte_bills_hashid)