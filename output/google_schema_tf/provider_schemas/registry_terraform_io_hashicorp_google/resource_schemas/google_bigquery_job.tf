resource "google_bigquery_job" "name" {
  job_id = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  job_timeout_ms = string (Optional)
  job_type = string (Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  status = ['list', ['object', {'error_result': ['list', ['object', {'location': 'string', 'message': 'string', 'reason': 'string'}]], 'errors': ['list', ['object', {'location': 'string', 'message': 'string', 'reason': 'string'}]], 'state': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  user_email = string (Computed)

  copy block "list" (Optional) {
    create_disposition = string (Optional)
    write_disposition = string (Optional)

    destination_encryption_configuration block "list" (Optional) {
      kms_key_name = string (Required)
      kms_key_version = string (Computed)
    }

    destination_table block "list" (Optional) {
      table_id = string (Required)
      dataset_id = string (Optional, Computed)
      project_id = string (Optional, Computed)
    }

    source_tables block "list" (Required) {
      table_id = string (Required)
      dataset_id = string (Optional, Computed)
      project_id = string (Optional, Computed)
    }
  }

  extract block "list" (Optional) {
    destination_uris = ['list', 'string'] (Required)
    compression = string (Optional)
    destination_format = string (Optional, Computed)
    field_delimiter = string (Optional, Computed)
    print_header = bool (Optional)
    use_avro_logical_types = bool (Optional)

    source_model block "list" (Optional) {
      dataset_id = string (Required)
      model_id = string (Required)
      project_id = string (Required)
    }

    source_table block "list" (Optional) {
      table_id = string (Required)
      dataset_id = string (Optional, Computed)
      project_id = string (Optional, Computed)
    }
  }

  load block "list" (Optional) {
    source_uris = ['list', 'string'] (Required)
    allow_jagged_rows = bool (Optional)
    allow_quoted_newlines = bool (Optional)
    autodetect = bool (Optional)
    create_disposition = string (Optional)
    encoding = string (Optional)
    field_delimiter = string (Optional, Computed)
    ignore_unknown_values = bool (Optional)
    json_extension = string (Optional)
    max_bad_records = number (Optional)
    null_marker = string (Optional)
    projection_fields = ['list', 'string'] (Optional)
    quote = string (Optional, Computed)
    schema_update_options = ['list', 'string'] (Optional)
    skip_leading_rows = number (Optional)
    source_format = string (Optional)
    write_disposition = string (Optional)

    destination_encryption_configuration block "list" (Optional) {
      kms_key_name = string (Required)
      kms_key_version = string (Computed)
    }

    destination_table block "list" (Required) {
      table_id = string (Required)
      dataset_id = string (Optional, Computed)
      project_id = string (Optional, Computed)
    }

    parquet_options block "list" (Optional) {
      enable_list_inference = bool (Optional)
      enum_as_string = bool (Optional)
    }

    time_partitioning block "list" (Optional) {
      type = string (Required)
      expiration_ms = string (Optional)
      field = string (Optional)
    }
  }

  query block "list" (Optional) {
    query = string (Required)
    allow_large_results = bool (Optional)
    create_disposition = string (Optional)
    flatten_results = bool (Optional)
    maximum_billing_tier = number (Optional)
    maximum_bytes_billed = string (Optional)
    parameter_mode = string (Optional)
    priority = string (Optional)
    schema_update_options = ['list', 'string'] (Optional)
    use_legacy_sql = bool (Optional)
    use_query_cache = bool (Optional)
    write_disposition = string (Optional)

    connection_properties block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    default_dataset block "list" (Optional) {
      dataset_id = string (Required)
      project_id = string (Optional, Computed)
    }

    destination_encryption_configuration block "list" (Optional) {
      kms_key_name = string (Required)
      kms_key_version = string (Computed)
    }

    destination_table block "list" (Optional) {
      table_id = string (Required)
      dataset_id = string (Optional, Computed)
      project_id = string (Optional, Computed)
    }

    script_options block "list" (Optional) {
      key_result_statement = string (Optional)
      statement_byte_budget = string (Optional)
      statement_timeout_ms = string (Optional)
    }

    user_defined_function_resources block "list" (Optional) {
      inline_code = string (Optional)
      resource_uri = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
