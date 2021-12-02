{% macro get_vendor_credit_line_columns() %}

{% set columns = [
    {"name": "account_expense_account_id", "alias": "account_expense_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "account_expense_billable_status", "alias": "account_expense_billable_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "account_expense_class_id", "alias": "account_expense_class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "account_expense_customer_id", "alias": "account_expense_customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "account_expense_tax_amount", "alias": "account_expense_tax_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "account_expense_tax_code_id", "alias": "account_expense_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "amount", "alias": "amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "description", "alias": "description", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "index", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "item_expense_billable_status", "alias": "item_expense_billable_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "item_expense_class_id", "alias": "item_expense_class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "item_expense_customer_id", "alias": "item_expense_customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "item_expense_item_id", "alias": "item_expense_item_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "item_expense_quantity", "alias": "item_expense_quantity", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "item_expense_tax_code_id", "alias": "item_expense_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "item_expense_unit_price", "alias": "item_expense_unit_price", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "private_note", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "vendor_credit_id", "alias": "vendor_credit_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}