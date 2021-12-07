select {{ var('purchases_line') }}.*,
{{ var('purchases_line_accou__linedetail_accountref') }}.value as account_expense_account_id,
{{ var('purchases_line_accou__asedexpenselinedetail') }}.billablestatus as account_expense_billable_status,
{{ var('purchases_line_accou__selinedetail_classref') }}.value as account_expense_class_id,
{{ var('purchases_line_accou__inedetail_customerref') }}.value as account_expense_customer_id,
{{ var('purchases_line_accou__linedetail_taxcoderef') }}.value as account_expense_tax_code_id,
{{ var('purchases_line_itembasedexpenselinedetail') }}.billablestatus as item_expense_billable_status,
{{ var('purchases_line_itemb__selinedetail_classref') }}.value as item_expense_class_id,
{{ var('purchases_line_itemb__inedetail_customerref') }}.value as item_expense_customer_id,
{{ var('purchases_line_itemb__nselinedetail_itemref') }}.value as item_expense_item_id,
{{ var('purchases_line_itembasedexpenselinedetail') }}.qty as item_expense_quantity,
{{ var('purchases_line_itemb__linedetail_taxcoderef') }}.value as item_expense_tax_code_id,
{{ var('purchases_line_itembasedexpenselinedetail') }}.unitprice as item_expense_unit_price,
{{ var('purchases_line') }}."Id" as purchase_id
from {{ var('purchases_line') }}
left join {{ var('purchases') }} using (_airbyte_purchases_hashid)
left join {{ var('purchases_line_accou__asedexpenselinedetail') }} using (_airbyte_line_hashid)
left join {{ var('purchases_line_accou__inedetail_customerref') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('purchases_line_accou__linedetail_accountref') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('purchases_line_accou__linedetail_taxcoderef') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('purchases_line_accou__selinedetail_classref') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('purchases_line_itembasedexpenselinedetail') }} using (_airbyte_line_hashid)
left join {{ var('purchases_line_itemb__inedetail_customerref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('purchases_line_itemb__linedetail_taxcoderef') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('purchases_line_itemb__nselinedetail_itemref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('purchases_line_itemb__selinedetail_classref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
