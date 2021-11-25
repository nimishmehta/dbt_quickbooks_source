{% macro get_customer_columns() %}

{% set columns = [
    {"name": "active", "alias": "active", "quote": true, "datatype": "boolean"},
    {"name": "alternatephone", "alias": "alternate_phone_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "ar_account_id", "alias": "ar_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "balance", "alias": "balance", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "balancewithjobs", "alias": "balance_with_jobs", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "bill_address_id", "alias": "bill_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "billwithparent", "alias": "bill_with_parent", "quote": true, "datatype": "boolean"},
    {"name": "companyname", "alias": "company_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "default_tax_code_id", "alias": "default_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "displayname", "alias": "display_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "email", "alias": "email", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "familyname", "alias": "family_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "fax_number", "alias": "fax_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "fullyqualifiedname", "alias": "fully_qualified_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "givenname", "alias": "given_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "job", "alias": "job", "quote": true, "datatype": "boolean"},
    {"name": "level", "alias": "level", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "middlename", "alias": "middle_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "mobile", "alias": "mobile_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "notes", "alias": "notes", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "openbalancedate", "alias": "open_balance_date", "quote": true, "datatype": "date"},
    {"name": "parent_customer_id", "alias": "parent_customer_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payment_method_id", "alias": "payment_method_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "phone_number", "alias": "phone_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "preferreddeliverymethod", "alias": "preferred_delivery_method", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "printoncheckname", "alias": "print_on_check_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "resalenum", "alias": "resale_number", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "sales_term_id", "alias": "sales_term_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "shipping_address_id", "alias": "shipping_address_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "suffix", "alias": "suffix", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "synctoken", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "taxexemptionreasonid", "alias": "tax_exemption_reason_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "taxable", "alias": "taxable", "quote": true, "datatype": "boolean"},
    {"name": "title", "alias": "title", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "webaddr", "alias": "website", "quote": true, "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
