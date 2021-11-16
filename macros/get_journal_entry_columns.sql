{% macro get_journal_entry_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "alias": "_fivetran_deleted","quote": "true", "datatype": "boolean"},
    {"name": "_airbyte_emitted_at", "alias": "_fivetran_synced","quote": "true", "datatype": dbt_utils.type_timestamp()},
    {"name": "adjustment", "alias": "adjustment","quote": "true", "datatype": "boolean"},
    {"name": "created_at", "alias": "created_at","quote": "true", "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "docnumber", "alias": "doc_number","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "exchangerate", "alias": "exchange_rate","quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "home_total_amount", "alias": "home_total_amount","quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "Id", "alias": "id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "privatenote", "alias": "private_note","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "synctoken", "alias": "sync_token","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "tax_code_id", "alias": "tax_code_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "total_amount", "alias": "total_amount","quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "total_tax", "alias": "total_tax","quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "txndate", "alias": "transaction_date","quote": "true", "datatype": "date"},
    {"name": "updated_at", "alias": "updated_at","quote": "true", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
