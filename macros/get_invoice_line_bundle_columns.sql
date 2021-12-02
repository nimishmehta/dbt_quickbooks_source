{% macro get_invoice_line_bundle_columns() %}

{% set columns = [
    {"name": "account_id", "alias": "account_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "amount", "alias": "amount", "datatype": dbt_utils.type_float(), "quote": true},
    {"name": "class_id", "alias": "class_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "description", "alias": "description", "datatype": dbt_utils.type_string(), "quote": true},
    {"name": "discount_amount", "alias": "discount_amount", "datatype": dbt_utils.type_float(), "quote": true},
    {"name": "discount_rate", "alias": "discount_rate", "datatype": dbt_utils.type_float(), "quote": true},
    {"name": "index", "alias": "index", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "invoice_id", "alias": "invoice_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "invoice_line_index", "alias": "invoice_line_index", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "item_id", "alias": "item_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "line_num", "alias": "line_num", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "quantity", "alias": "quantity", "datatype": dbt_utils.type_float(), "quote": true},
    {"name": "sales_item_account_id", "alias": "sales_item_account_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "sales_item_item_id", "alias": "sales_item_item_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "sales_item_quantity", "alias": "sales_item_quantity", "datatype": dbt_utils.type_float(), "quote": true},
    {"name": "sales_item_tax_code_id", "alias": "sales_item_tax_code_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "service_date", "alias": "service_date", "datatype": dbt_utils.type_timestamp(), "quote": true},
    {"name": "tax_code_id", "alias": "tax_code_id", "datatype": dbt_utils.type_int(), "quote": true},
    {"name": "unit_price", "alias": "unit_price", "datatype": dbt_utils.type_float(), "quote": true}
] %}

{{ return(columns) }}

{% endmacro %}
