--To disable this model, set the using_deposit variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_deposit', True)) }}

select {{ var('deposits') }}.*,
{{ var("deposits_deposittoaccountref") }}.value as account_id,
{{ var("deposits_cashback") }}.amount as cash_back_amount,
{{ var("deposits_cashback") }}.memo as cash_back_memo,
{{ var("deposits_cashback_accountref") }}.value as cash_back_account_id,
{{ var("deposits_currencyref") }}.value as currency_id,
{{ var("deposits_departmentref") }}.value as department_id,
{{ var("deposits_metadata") }}.createtime as created_at,
{{ var("deposits_metadata") }}.lastupdatedtime as updated_at

from {{ var('deposits') }}
left join {{ var("deposits_cashback") }} using (_airbyte_deposits_hashid)
left join {{ var("deposits_cashback_accountref") }} using (_airbyte_cashback_hashid)
left join {{ var("deposits_currencyref") }} using (_airbyte_deposits_hashid)
left join {{ var("deposits_departmentref") }} using (_airbyte_deposits_hashid)
left join {{ var("deposits_deposittoaccountref") }} using (_airbyte_deposits_hashid)
left join {{ var("deposits_metadata") }} using (_airbyte_deposits_hashid)