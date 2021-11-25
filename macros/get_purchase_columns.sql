{% macro get_purchase_columns() %}

{% set columns = [
    {"name": "account_id", "alias": "account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "credit", "alias": "credit", "quote": true, "datatype": "boolean"},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "customer_id", "alias": "customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "department_id", "alias": "department_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "doc_number", "alias": "doc_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "employee_id", "alias": "employee_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "exchange_rate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "global_tax_calculation", "alias": "global_tax_calculation", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payment_method_id", "alias": "payment_method_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payment_type", "alias": "payment_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "print_status", "alias": "print_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "private_note", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "remit_to_address_id", "alias": "remit_to_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "sync_token", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "tax_code_id", "alias": "tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "total_amount", "alias": "total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "total_tax", "alias": "total_tax", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "transaction_date", "alias": "transaction_date", "quote": true, "datatype": "date"},
    {"name": "transaction_source", "alias": "transaction_source", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "vendor_id", "alias": "vendor_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
