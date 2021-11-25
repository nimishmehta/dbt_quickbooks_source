{% macro get_vendor_columns() %}

{% set columns = [
    {"name": "account_number", "alias": "account_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "active", "alias": "active", "quote": true, "datatype": "boolean"},
    {"name": "alternate_phone", "alias": "alternate_phone", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "balance", "alias": "balance", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "billing_address_id", "alias": "billing_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "company_name", "alias": "company_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "display_name", "alias": "display_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "email", "alias": "email", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "family_name", "alias": "family_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "fax_number", "alias": "fax_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "given_name", "alias": "given_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "middle_name", "alias": "middle_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "mobile_phone", "alias": "mobile_phone", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "other_contacts", "alias": "other_contacts", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "primary_phone", "alias": "primary_phone", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "print_on_check_name", "alias": "print_on_check_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "suffix", "alias": "suffix", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "sync_token", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "tax_identifier", "alias": "tax_identifier", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "term_id", "alias": "term_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "title", "alias": "title", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "vendor_1099", "alias": "vendor_1099", "quote": true, "datatype": "boolean"},
    {"name": "web_url", "alias": "web_url", "quote": true, "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}