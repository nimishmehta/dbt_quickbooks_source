{% macro get_journal_entry_line_columns() %}

{% set columns = [
    {"name": "account_id", "alias": "account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "amount", "alias": "amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "billable_status", "alias": "billable_status", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "class_id", "alias": "class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "customer_id", "alias": "customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "department_id", "alias": "department_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "description", "alias": "description", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "description_service_date", "alias": "description_service_date", "quote": true, "datatype": "date"},
    {"name": "description_tax_code_id", "alias": "description_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "employee_id", "alias": "employee_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "index", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "journal_entry_id", "alias": "journal_entry_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "posting_type", "alias": "posting_type", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "tax_amount", "alias": "tax_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "tax_applicable_on", "alias": "tax_applicable_on", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "tax_code_id", "alias": "tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "vendor_id", "alias": "vendor_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
