--To disable this model, set the using_deposit variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_deposit', True)) }}

select {{ var('deposits_line') }}.*,
{{ var("deposits") }}."Id" as deposit_id
from {{ var('deposits_line') }}
left join {{ var("deposits") }} using (_airbyte_deposits_hashid)
left join {{ var("deposits_line_depositlinedetail") }} using (_airbyte_line_hashid)
left join {{ var("deposits_line_deposi__tail_paymentmethodref") }} using (_airbyte_depositlinedetail_hashid)
left join {{ var("deposits_line_depositlinedetail_accountref") }} using (_airbyte_depositlinedetail_hashid)
left join {{ var("deposits_line_linkedtxn") }} using (_airbyte_line_hashid)
