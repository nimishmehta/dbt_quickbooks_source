{% macro get_bill_columns() %}

{% set columns = [
    {"name": "balance", "quote": true, "alias": "balance", "datatype": dbt_utils.type_float()},
    {"name": "created_at", "quote": true, "alias": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "quote": true, "alias": "currency_id", "datatype": dbt_utils.type_int()},
    {"name": "department_id", "quote": true, "alias": "department_id", "datatype": dbt_utils.type_int()},
    {"name": "docnumber", "quote": true, "alias": "doc_number", "datatype": dbt_utils.type_string()},
    {"name": "duedate", "quote": true, "alias": "due_date", "datatype": "date"},
    {"name": "exchangerate", "quote": true, "alias": "exchange_rate", "datatype": dbt_utils.type_float()},
    {"name": "global_tax_calculation", "quote": true, "alias": "global_tax_calculation", "datatype": dbt_utils.type_string()},
    {"name": "home_balance", "quote": true, "alias": "home_balance", "datatype": dbt_utils.type_float()},
    {"name": "Id", "quote": true, "alias": "id", "datatype": dbt_utils.type_int()},
    {"name": "payable_account_id", "quote": true, "alias": "payable_account_id", "datatype": dbt_utils.type_int()},
    {"name": "privatenote", "quote": true, "alias": "private_note", "datatype": dbt_utils.type_string()},
    {"name": "sales_term_id", "quote": true, "alias": "sales_term_id", "datatype": dbt_utils.type_int()},
    {"name": "synctoken", "quote": true, "alias": "sync_token", "datatype": dbt_utils.type_string()},
    {"name": "totalamt", "quote": true, "alias": "total_amount", "datatype": dbt_utils.type_float()},
    {"name": "txndate", "quote": true, "alias": "transaction_date", "datatype": "date"},
    {"name": "updated_at", "quote": true, "alias": "updated_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "vendor_id", "quote": true, "alias": "vendor_id", "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
