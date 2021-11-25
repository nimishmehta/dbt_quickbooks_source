{% macro get_deposit_line_columns() %}

{% set columns = [
    {"name": "amount", "alias": "amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "bill_id", "alias": "bill_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_account_id", "alias": "deposit_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_check_number", "alias": "deposit_check_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "deposit_class_id", "alias": "deposit_class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_customer_id", "alias": "deposit_customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_id", "alias": "deposit_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_payment_method_id", "alias": "deposit_payment_method_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_tax_applicable_on", "alias": "deposit_tax_applicable_on", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "deposit_tax_code_id", "alias": "deposit_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_transaction_type", "alias": "deposit_transaction_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "description", "alias": "description", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "detail_type", "alias": "detail_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "expense_id", "alias": "expense_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "Id", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "invoice_id", "alias": "invoice_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "journal_entry_id", "alias": "journal_entry_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payment_id", "alias": "payment_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "purchase_id", "alias": "purchase_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "refund_receipt_id", "alias": "refund_receipt_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "sales_receipt_id", "alias": "sales_receipt_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "transfer_id", "alias": "transfer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "vendor_credit_id", "alias": "vendor_credit_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
