{% macro get_vendor_credit_columns() %}

{% set columns = [
    {"name": "balance", "alias": "balance", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "department_id", "alias": "department_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "doc_number", "alias": "doc_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "exchange_rate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "global_tax_calculation", "alias": "global_tax_calculation", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payable_account_id", "alias": "payable_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "private_note", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "sync_token", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "total_amount", "alias": "total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "transaction_date", "alias": "transaction_date", "quote": true, "datatype": "date"},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "vendor_id", "alias": "vendor_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}