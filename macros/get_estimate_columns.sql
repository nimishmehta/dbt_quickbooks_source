{% macro get_estimate_columns() %}

{% set columns = [
    {"name": "acceptedby", "alias": "accepted_by", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "accepteddate", "alias": "accepted_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "applytaxafterdiscount", "alias": "apply_tax_after_discount", "quote": true, "datatype": "boolean"},
    {"name": "bill_email", "alias": "bill_email", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "billing_address_id", "alias": "billing_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "class_id", "alias": "class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "customer_id", "alias": "customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "customer_memo", "alias": "customer_memo", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "delivery_type", "alias": "delivery_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "department_id", "alias": "department_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "docnumber", "alias": "doc_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "due_date", "alias": "due_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "emailstatus", "alias": "email_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "exchangerate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "expiration_date", "alias": "expiration_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "global_tax_calculation", "alias": "global_tax_calculation", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "hometotalamt", "alias": "home_total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "printstatus", "alias": "print_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "privatenote", "alias": "private_note", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "sales_term_id", "alias": "sales_term_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "ship_date", "alias": "ship_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "shipping_address_id", "alias": "shipping_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "synctoken", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "tax_code_id", "alias": "tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "totalamt", "alias": "total_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "applytaxafterdiscount", "alias": "total_tax", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "txndate", "alias": "transaction_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "txnstatus", "alias": "transaction_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}