{% macro get_invoice_columns() %}

{% set columns = [
    {"name": "allowipnpayment", "alias": "allow_ipnpayment", "quote": true, "datatype": "boolean"},
    {"name": "allowonlineachpayment", "alias": "allow_online_achpayment", "quote": true, "datatype": "boolean"},
    {"name": "allowonlinecreditcardpayment", "alias": "allow_online_credit_card_payment", "quote": true, "datatype": "boolean"},
    {"name": "allowonlinepayment", "alias": "allow_online_payment", "quote": true, "datatype": "boolean"},
    {"name": "applytaxafterdiscount", "alias": "apply_tax_after_discount", "quote": true, "datatype": "boolean"},
    {"name": "balance", "alias": "balance", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "billing_address_id", "alias": "billing_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "billing_bcc_email", "alias": "billing_bcc_email", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "billing_cc_email", "alias": "billing_cc_email", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "billing_email", "alias": "billing_email", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "class_id", "alias": "class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "custom_p_o_number", "alias": "custom_p_o_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "custom_sales_rep", "alias": "custom_sales_rep", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "customer_id", "alias": "customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "customer_memo", "alias": "customer_memo", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "delivery_time", "alias": "delivery_time", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "delivery_type", "alias": "delivery_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "department_id", "alias": "department_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit", "alias": "deposit", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "deposit_to_account_id", "alias": "deposit_to_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "docnumber", "alias": "doc_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "duedate", "alias": "due_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "emailstatus", "alias": "email_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "exchangerate", "alias": "exchange_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "global_tax_calculation", "alias": "global_tax_calculation", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "homebalance", "alias": "home_balance", "quote": true, "datatype": dbt_utils.type_float()},
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
    {"name": "total_tax", "alias": "total_tax", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "tracking_number", "alias": "tracking_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "txndate", "alias": "transaction_date", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "txnsource", "alias": "transaction_source", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}