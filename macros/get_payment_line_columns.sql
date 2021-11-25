{% macro get_payment_line_columns() %}

{% set columns = [
    {"name": "amount", "alias": "amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "check_id", "alias": "check_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "credit_card_charge_id", "alias": "credit_card_charge_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "credit_card_credit_id", "alias": "credit_card_credit_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "credit_memo_id", "alias": "credit_memo_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "deposit_id", "alias": "deposit_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "expense_id", "alias": "expense_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "index", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "invoice_id", "alias": "invoice_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "journal_entry_id", "alias": "journal_entry_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payment_id", "alias": "payment_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}