{% macro get_payment_columns() %}

{% set columns = [
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "credit_card_amount", "alias": "credit_card_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "credit_card_auth_code", "alias": "credit_card_auth_code", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "credit_card_billing_address_street", "alias": "credit_card_billing_address_street", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "credit_card_cc_expiry_month", "alias": "credit_card_cc_expiry_month", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "credit_card_cc_expiry_year", "alias": "credit_card_cc_expiry_year", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "credit_card_cctrans_id", "alias": "credit_card_cctrans_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "credit_card_name_on_account", "alias": "credit_card_name_on_account", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "credit_card_postal_code", "alias": "credit_card_postal_code", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "credit_card_process_payment", "alias": "credit_card_process_payment", "quote": true, "datatype": "boolean"},
    {"name": "credit_card_status", "alias": "credit_card_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "credit_card_transaction_authorization_time", "alias": "credit_card_transaction_authorization_time", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "credit_card_type", "alias": "credit_card_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "customer_id", "alias": "customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_to_account_id", "alias": "deposit_to_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "exchangerate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payment_method_id", "alias": "payment_method_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "privatenote", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "processpayment", "alias": "process_payment", "quote": true, "datatype": "boolean"},
    {"name": "receivable_account_id", "alias": "receivable_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "paymentrefnum", "alias": "reference_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "synctoken", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "totalamt", "alias": "total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "txndate", "alias": "transaction_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "transaction_source", "alias": "transaction_source", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "transaction_status", "alias": "transaction_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "unappliedamt", "alias": "unapplied_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}