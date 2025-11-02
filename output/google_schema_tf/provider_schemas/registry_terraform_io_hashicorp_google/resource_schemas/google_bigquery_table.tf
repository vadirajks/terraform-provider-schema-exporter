resource "google_bigquery_table" "name" {
  dataset_id = string (Required)
  table_id = string (Required)
  clustering = ['list', 'string'] (Optional)
  creation_time = number (Computed)
  deletion_protection = bool (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  expiration_time = number (Optional, Computed)
  friendly_name = string (Optional)
  generated_schema_columns = string (Computed)
  id = string (Optional, Computed)
  ignore_auto_generated_schema = bool (Optional)
  ignore_schema_changes = ['list', 'string'] (Optional)
  labels = ['map', 'string'] (Optional)
  last_modified_time = number (Computed)
  location = string (Computed)
  max_staleness = string (Optional, Computed)
  num_bytes = number (Computed)
  num_long_term_bytes = number (Computed)
  num_rows = number (Computed)
  project = string (Optional, Computed)
  require_partition_filter = bool (Optional)
  resource_tags = ['map', 'string'] (Optional)
  schema = string (Optional, Computed)
  self_link = string (Computed)
  table_metadata_view = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Computed)

  biglake_configuration block "list" (Optional) {
    connection_id = string (Required)
    file_format = string (Required)
    storage_uri = string (Required)
    table_format = string (Required)
  }

  encryption_configuration block "list" (Optional) {
    kms_key_name = string (Required)
    kms_key_version = string (Computed)
  }

  external_catalog_table_options block "list" (Optional) {
    connection_id = string (Optional)
    parameters = ['map', 'string'] (Optional)

    storage_descriptor block "list" (Optional) {
      input_format = string (Optional)
      location_uri = string (Optional)
      output_format = string (Optional)

      serde_info block "list" (Optional) {
        serialization_library = string (Required)
        name = string (Optional)
        parameters = ['map', 'string'] (Optional)
      }
    }
  }

  external_data_configuration block "list" (Optional) {
    autodetect = bool (Required)
    source_uris = ['list', 'string'] (Required)
    compression = string (Optional)
    connection_id = string (Optional)
    file_set_spec_type = string (Optional)
    ignore_unknown_values = bool (Optional)
    json_extension = string (Optional)
    max_bad_records = number (Optional)
    metadata_cache_mode = string (Optional)
    object_metadata = string (Optional)
    reference_file_schema_uri = string (Optional)
    schema = string (Optional, Computed)
    source_format = string (Optional)

    avro_options block "list" (Optional) {
      use_avro_logical_types = bool (Required)
    }

    bigtable_options block "list" (Optional) {
      ignore_unspecified_column_families = bool (Optional)
      output_column_families_as_json = bool (Optional)
      read_rowkey_as_string = bool (Optional)

      column_family block "list" (Optional) {
        encoding = string (Optional)
        family_id = string (Optional)
        only_read_latest = bool (Optional)
        type = string (Optional)

        column block "list" (Optional) {
          encoding = string (Optional)
          field_name = string (Optional)
          only_read_latest = bool (Optional)
          qualifier_encoded = string (Optional)
          qualifier_string = string (Optional)
          type = string (Optional)
        }
      }
    }

    csv_options block "list" (Optional) {
      quote = string (Required)
      allow_jagged_rows = bool (Optional)
      allow_quoted_newlines = bool (Optional)
      encoding = string (Optional)
      field_delimiter = string (Optional)
      skip_leading_rows = number (Optional)
    }

    google_sheets_options block "list" (Optional) {
      range = string (Optional)
      skip_leading_rows = number (Optional)
    }

    hive_partitioning_options block "list" (Optional) {
      mode = string (Optional)
      require_partition_filter = bool (Optional)
      source_uri_prefix = string (Optional)
    }

    json_options block "list" (Optional) {
      encoding = string (Optional)
    }

    parquet_options block "list" (Optional) {
      enable_list_inference = bool (Optional)
      enum_as_string = bool (Optional)
    }
  }

  materialized_view block "list" (Optional) {
    query = string (Required)
    allow_non_incremental_definition = bool (Optional)
    enable_refresh = bool (Optional)
    refresh_interval_ms = number (Optional)
  }

  range_partitioning block "list" (Optional) {
    field = string (Required)

    range block "list" (Required) {
      end = number (Required)
      interval = number (Required)
      start = number (Required)
    }
  }

  schema_foreign_type_info block "list" (Optional) {
    type_system = string (Required)
  }

  table_constraints block "list" (Optional) {

    foreign_keys block "list" (Optional) {
      name = string (Optional)

      column_references block "list" (Required) {
        referenced_column = string (Required)
        referencing_column = string (Required)
      }

      referenced_table block "list" (Required) {
        dataset_id = string (Required)
        project_id = string (Required)
        table_id = string (Required)
      }
    }

    primary_key block "list" (Optional) {
      columns = ['list', 'string'] (Required)
    }
  }

  table_replication_info block "list" (Optional) {
    source_dataset_id = string (Required)
    source_project_id = string (Required)
    source_table_id = string (Required)
    replication_interval_ms = number (Optional)
  }

  time_partitioning block "list" (Optional) {
    type = string (Required)
    expiration_ms = number (Optional, Computed)
    field = string (Optional)
    require_partition_filter = bool (Optional)
  }

  view block "list" (Optional) {
    query = string (Required)
    use_legacy_sql = bool (Optional, Computed)
  }
}
