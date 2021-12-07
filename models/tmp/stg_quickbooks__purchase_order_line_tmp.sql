--To enable this model, set the using_invoice variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_purchase_order', False)) }}

select {{ var('purchase_orders_line') }}.*,
{{ var('purchase_orders_line__asedexpenselinedetail') }}.billablestatus as item_expense_billable_status,
{{ var('purchase_orders_line__selinedetail_classref') }}.value as item_expense_class_id,
{{ var('purchase_orders_line__inedetail_customerref') }}.value as item_expense_customer_id,
{{ var('purchase_orders_line__nselinedetail_itemref') }}.value as item_expense_item_id,
{{ var('purchase_orders_line__asedexpenselinedetail') }}.qty as item_expense_quantity,
{{ var('purchase_orders_line__linedetail_taxcoderef') }}.value as item_expense_tax_code_id,
{{ var('purchase_orders_line__asedexpenselinedetail') }}.unitprice as item_expense_unit_price,
{{ var('purchase_orders') }}."Id" as purchase_order_id
from {{ var('purchase_orders_line') }}
left join {{ var('purchase_orders') }} using (_airbyte_purchase_orders_hashid)
left join {{ var('purchase_orders_line__asedexpenselinedetail') }} using (_airbyte_line_hashid)
left join {{ var('purchase_orders_line__inedetail_customerref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('purchase_orders_line__linedetail_taxcoderef') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('purchase_orders_line__nselinedetail_itemref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('purchase_orders_line__selinedetail_classref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
