--To enable this model, set the using_invoice variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_purchase_order', False)) }}

select {{ var('purchase_orders_linkedtxn') }}.*
from {{ var('purchase_orders_linkedtxn') }}
left join {{ var('purchase_orders') }} using (_airbyte_purchase_orders_hashid)

