--To enable this model, set the using_credit_memo variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_credit_memo', True)) }}

select
	{{ var('credit_memos') }}.*,
	{{ var('credit_memos_billaddr') }}."Id" as billing_address_id,
	{{ var('credit_memos_classref') }}."value" as class_id,
	{{ var('credit_memos_currencyref') }}."value" as currency_id,
	{{ var('credit_memos_customerref') }}.value as customer_id,
	{{ var('credit_memos_customermemo') }}.value as customer_memo,
	{{ var('credit_memos_salestermref') }}.value as sales_term_id,
	{{ var('credit_memos_shipaddr') }}."Id" as shipping_address_id,
	{{ var('credit_memos_metadata') }}."createtime" as created_at,
	{{ var('credit_memos_metadata') }}."lastupdatedtime" as updated_at,
	{{ var('credit_memos_txntaxdetail') }}."totaltax" as global_tax_calculation
from {{ var('credit_memos') }}
left join {{ var('credit_memos_billaddr') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_billemail') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_classref') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_currencyref') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_customermemo') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_customerref') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_customfield') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_shipaddr') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_txntaxdetail') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_salestermref') }} using (_airbyte_credit_memos_hashid)
left join {{ var('credit_memos_metadata') }} using (_airbyte_credit_memos_hashid)