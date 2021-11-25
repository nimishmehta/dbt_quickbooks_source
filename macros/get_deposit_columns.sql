{% macro get_deposit_columns() %}

{% set columns = [
    {"name": "account_id", "datatype": dbt_utils.type_int()},
    {"name": "cash_back_account_id", "datatype": dbt_utils.type_int()},
    {"name": "cash_back_amount", "datatype": dbt_utils.type_float()},
    {"name": "cash_back_memo", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "datatype": dbt_utils.type_int()},
    {"name": "department_id", "datatype": dbt_utils.type_int()},
    {"name": "global_tax_calculation", "datatype": dbt_utils.type_string()},
    {"name": "home_total_amount", "datatype": dbt_utils.type_float()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "privatenote", "alias": "private_note", "datatype": dbt_utils.type_string()},
    {"name": "synctoken", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "totalamt", "alias": "total_amount", "datatype": dbt_utils.type_float()},
    {"name": "transaction_date", "alias": "transaction_date", "datatype": "date"},
    {"name": "transaction_source", "datatype": dbt_utils.type_string()},
    {"name": "transaction_status", "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
