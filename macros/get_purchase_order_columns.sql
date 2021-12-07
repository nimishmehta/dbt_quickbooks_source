{% macro get_purchase_order_columns() %}

{% set columns = [
    {"name": "class_id", "alias": "class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "custom_customer_type", "alias": "custom_customer_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "custom_po_number", "alias": "custom_po_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "docnumber", "alias": "doc_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "duedate", "alias": "due_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "exchangerate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "global_tax_calculation", "alias": "global_tax_calculation", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "memo", "alias": "memo", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "payable_account_id", "alias": "payable_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "privatenote", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "sales_term_id", "alias": "sales_term_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "shipping_address_id", "alias": "shipping_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "status", "alias": "status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "synctoken", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "tax_code_id", "alias": "tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "totalamt", "alias": "total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "total_tax", "alias": "total_tax", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "txndate", "alias": "transaction_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "vendor_address_id", "alias": "vendor_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "vendor_id", "alias": "vendor_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
