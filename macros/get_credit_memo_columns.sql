{% macro get_credit_memo_columns() %}

{% set columns = [
    {"name": "applytaxafterdiscount", "alias": "apply_tax_after_discount", "quote":true, "datatype": "boolean"},
    {"name": "balance", "alias": "balance", "quote":true, "datatype": dbt_utils.type_float()},
    {"name": "billemail", "alias": "bill_email", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "billing_address_id", "alias": "billing_address_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "class_id", "alias": "class_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "created_at", "alias": "created_at", "quote":true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "custom_p_o_number", "alias": "custom_p_o_number", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "customer_id", "alias": "customer_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "customer_memo", "alias": "customer_memo", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "department_id", "alias": "department_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "docnumber", "alias": "doc_number", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "emailstatus", "alias": "email_status", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "exchangerate", "alias": "exchange_rate", "quote":true, "datatype": dbt_utils.type_float()},
    {"name": "global_tax_calculation", "alias": "global_tax_calculation", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "home_balance", "alias": "home_balance", "quote":true, "datatype": dbt_utils.type_float()},
    {"name": "hometotalamt", "alias": "home_total_amount", "quote":true, "datatype": dbt_utils.type_float()},
    {"name": "Id", "alias": "id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "payment_method_id", "alias": "payment_method_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "printstatus", "alias": "print_status", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "private_note", "alias": "private_note", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "remainingcredit", "alias": "remaining_credit", "quote":true, "datatype": dbt_utils.type_float()},
    {"name": "sales_term_id", "alias": "sales_term_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "shipping_address_id", "alias": "shipping_address_id", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "synctoken", "alias": "sync_token", "quote":true, "datatype": dbt_utils.type_string()},
    {"name": "totalamt", "alias": "total_amount", "quote":true, "datatype": dbt_utils.type_float()},
    {"name": "applytaxafterdiscount", "alias": "total_tax", "quote":true, "datatype": dbt_utils.type_int()},
    {"name": "txndate", "alias": "transaction_date", "quote":true, "datatype": dbt_utils.type_timestamp()},
    {"name": "updated_at", "alias": "updated_at", "quote":true, "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}