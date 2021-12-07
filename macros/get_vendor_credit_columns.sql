{% macro get_vendor_credit_columns() %}

{% set columns = [
    {"name": "balance", "alias": "balance", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "department_id", "alias": "department_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "docnumber", "alias": "doc_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "exchangerate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "global_tax_calculation", "alias": "global_tax_calculation", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payable_account_id", "alias": "payable_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "privatenote", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "synctoken", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "totalamt", "alias": "total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "txndate", "alias": "transaction_date", "quote": true, "datatype": "date"},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "vendor_id", "alias": "vendor_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}