--To enable this model, set the using_payment variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_payment', True)) }}

select {{ var('payments_line') }}.*,
{{ var('payments') }}."Id" as payment_id
from {{ var('payments_line') }}
left join {{ var('payments') }} using (_airbyte_payments_hashid)
left join {{ var('payments_line_lineex') }} using (_airbyte_line_hashid)
left join {{ var('payments_line_lineex_any') }} using (_airbyte_lineex_hashid)
left join {{ var('payments_line_lineex_any_value') }} using (_airbyte_any_hashid)
left join {{ var('payments_line_linkedtxn') }} using (_airbyte_line_hashid)