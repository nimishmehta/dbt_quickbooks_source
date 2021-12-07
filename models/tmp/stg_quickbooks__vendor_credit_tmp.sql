--To disable this model, set the using_vendor_credit variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_vendor_credit', True)) }}

select {{ var('vendor_credits') }}.*,
{{ var('vendor_credits_metadata') }}.createtime as created_at,
{{ var('vendor_credits_currencyref') }}.value as currency_id,
{{ var('vendor_credits_departmentref') }}.value as department_id,
{{ var('vendor_credits_apaccountref') }}.value as payable_account_id,
{{ var('vendor_credits_metadata') }}.lastupdatedtime as updated_at,
{{ var('vendor_credits_vendorref') }}.value as vendor_id
from {{ var('vendor_credits') }}
left join {{ var('vendor_credits_apaccountref') }} using (_airbyte_vendor_credits_hashid)
left join {{ var('vendor_credits_currencyref') }} using (_airbyte_vendor_credits_hashid)
left join {{ var('vendor_credits_departmentref') }} using (_airbyte_vendor_credits_hashid)
left join {{ var('vendor_credits_metadata') }} using (_airbyte_vendor_credits_hashid)
left join {{ var('vendor_credits_vendorref') }} using (_airbyte_vendor_credits_hashid)