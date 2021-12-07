--To disable this model, set the using_transfer variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_transfer', True)) }}

select {{ var('transfers') }}.*,
{{ var('transfers_fromaccountref') }}.value as from_account_id,
{{ var('transfers_metadata') }}.createtime as created_at,
{{ var('transfers_metadata') }}.lastupdatedtime as updated_at,
{{ var('transfers_toaccountref') }}.value as to_account_id

from {{ var('transfers') }}
left join {{ var('transfers_currencyref') }} using (_airbyte_transfers_hashid)
left join {{ var('transfers_fromaccountref') }} using (_airbyte_transfers_hashid)
left join {{ var('transfers_metadata') }} using (_airbyte_transfers_hashid)
left join {{ var('transfers_toaccountref') }} using (_airbyte_transfers_hashid)