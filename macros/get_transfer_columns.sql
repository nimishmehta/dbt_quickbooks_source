{% macro get_transfer_columns() %}

{% set columns = [
    {"name": "amount", "alias": "amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "from_account_id", "alias": "from_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "private_note", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "sync_token", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "to_account_id", "alias": "to_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "transaction_date", "alias": "transaction_date", "quote": true, "datatype": "date"},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
