{% macro get_bill_payment_columns() %}

{% set columns = [
    {"name": "check_bank_account_id", "alias": "check_bank_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "check_print_status", "alias": "check_print_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "credit_card_account_id", "alias": "credit_card_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "department_id", "alias": "department_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "doc_number", "alias": "doc_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "exchange_rate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "pay_type", "alias": "pay_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "payable_account_id", "alias": "payable_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "private_note", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "process_bill_payment", "alias": "process_bill_payment", "quote": true, "datatype": "boolean"},
    {"name": "sync_token", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "total_amount", "alias": "total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "transaction_date", "alias": "transaction_date", "quote": true, "datatype": "date"},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "vendor_id", "alias": "vendor_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
