--To disable this model, set the using_vendor_credit variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_vendor_credit', True)) }}

select {{ var('vendor_credits_line') }}.*,
{{ var('vendor_credits_line___linedetail_accountref') }}.value as account_expense_account_id,
{{ var('vendor_cre_d0e_accountbased__nselinedetail') }}.billablestatus as account_expense_billable_status,
{{ var('vendor_credits_line_accountbas_b60_classref') }}.value as account_expense_class_id,
{{ var('vendor_credits_line_account_0c9_customerref') }}.value as account_expense_customer_id,
{{ var('vendor_credits_line_accountb_ab8_taxcoderef') }}.value as account_expense_tax_code_id,
{{ var('vendor_credi_cef_itembasedexpenselinedetail') }}.billablestatus as item_expense_billable_status,
{{ var('vendor_credits_line_itembasede_630_classref') }}.value as item_expense_class_id,
{{ var('vendor_credits_line_itembas_6e0_customerref') }}.value as item_expense_customer_id,
{{ var('vendor_credits_line___nselinedetail_itemref') }}.value as item_expense_item_id,
{{ var('vendor_credi_cef_itembasedexpenselinedetail') }}.qty as item_expense_quantity,
{{ var('vendor_credits_line_itembase_12c_taxcoderef') }}.value as item_expense_tax_code_id,
{{ var('vendor_credi_cef_itembasedexpenselinedetail') }}.unitprice as item_expense_unit_price,
{{ var('vendor_credits') }}."Id" as vendor_credit_id

from {{ var('vendor_credits_line') }}
left join {{ var('vendor_credits') }} using (_airbyte_vendor_credits_hashid)
left join {{ var('vendor_cre_d0e_accountbased__nselinedetail') }} using (_airbyte_line_hashid)
left join {{ var('vendor_credits_line___linedetail_accountref') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('vendor_credits_line_account_0c9_customerref') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('vendor_credits_line_accountb_ab8_taxcoderef') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('vendor_credits_line_accountbas_b60_classref') }} using (_airbyte_accountbase__enselinedetail_hashid)
left join {{ var('vendor_credi_cef_itembasedexpenselinedetail') }} using (_airbyte_line_hashid)
left join {{ var('vendor_credits_line___nselinedetail_itemref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('vendor_credits_line_itembas_6e0_customerref') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('vendor_credits_line_itembase_12c_taxcoderef') }} using (_airbyte_itembasedexpenselinedetail_hashid)
left join {{ var('vendor_credits_line_itembasede_630_classref') }} using (_airbyte_itembasedexpenselinedetail_hashid)