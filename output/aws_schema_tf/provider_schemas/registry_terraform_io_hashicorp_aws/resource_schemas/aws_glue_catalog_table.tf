resource "aws_glue_catalog_table" "name" {
  database_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  catalog_id = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  owner = string (Optional)
  parameters = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  retention = number (Optional)
  table_type = string (Optional)
  view_expanded_text = string (Optional)
  view_original_text = string (Optional)

  open_table_format_input block "list" (Optional) {

    iceberg_input block "list" (Required) {
      metadata_operation = string (Required)
      version = string (Optional)
    }
  }

  partition_index block "list" (Optional) {
    index_name = string (Required)
    keys = ['list', 'string'] (Required)
    index_status = string (Computed)
  }

  partition_keys block "list" (Optional) {
    name = string (Required)
    comment = string (Optional)
    parameters = ['map', 'string'] (Optional)
    type = string (Optional)
  }

  storage_descriptor block "list" (Optional) {
    additional_locations = ['list', 'string'] (Optional)
    bucket_columns = ['list', 'string'] (Optional)
    compressed = bool (Optional)
    input_format = string (Optional)
    location = string (Optional)
    number_of_buckets = number (Optional)
    output_format = string (Optional)
    parameters = ['map', 'string'] (Optional)
    stored_as_sub_directories = bool (Optional)

    columns block "list" (Optional) {
      name = string (Required)
      comment = string (Optional)
      parameters = ['map', 'string'] (Optional)
      type = string (Optional)
    }

    schema_reference block "list" (Optional) {
      schema_version_number = number (Required)
      schema_version_id = string (Optional)

      schema_id block "list" (Optional) {
        registry_name = string (Optional)
        schema_arn = string (Optional)
        schema_name = string (Optional)
      }
    }

    ser_de_info block "list" (Optional) {
      name = string (Optional)
      parameters = ['map', 'string'] (Optional)
      serialization_library = string (Optional)
    }

    skewed_info block "list" (Optional) {
      skewed_column_names = ['list', 'string'] (Optional)
      skewed_column_value_location_maps = ['map', 'string'] (Optional)
      skewed_column_values = ['list', 'string'] (Optional)
    }

    sort_columns block "list" (Optional) {
      column = string (Required)
      sort_order = number (Required)
    }
  }

  target_table block "list" (Optional) {
    catalog_id = string (Required)
    database_name = string (Required)
    name = string (Required)
    region = string (Optional)
  }
}
