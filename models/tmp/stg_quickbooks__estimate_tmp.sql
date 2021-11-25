--To disable this model, set the using_estimate variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_estimate', True)) }}

select {{ var('estimates') }}.*,
{{ var("estimates_billemail") }}.address as bill_email,
{{ var("estimates_billaddr") }}."Id" as billing_address_id,
{{ var("estimates_metadata") }}.createtime as created_at,
{{ var("estimates_metadata") }}.lastupdatedtime as updated_at,
{{ var("estimates_currencyref") }}.value as currency_id,
{{ var("estimates_customerref") }}.value as customer_id,
{{ var("estimates_customermemo") }}.value as customer_memo,
{{ var("estimates_deliveryinfo") }}.deliverytype as delivery_type,
{{ var("estimates_shipaddr") }}."Id" as shipping_address_id

from {{ var('estimates') }}
left join {{ var("estimates_billaddr") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_billemail") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_currencyref") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_customermemo") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_customerref") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_customfield") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_deliveryinfo") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_linkedtxn") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_metadata") }} using (_airbyte_estimates_hashid)
left join {{ var("estimates_shipaddr") }} using (_airbyte_estimates_hashid)