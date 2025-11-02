resource "aws_glue_partition" "name" {
  database_name = string (Required)
  partition_values = ['list', 'string'] (Required)
  table_name = string (Required)
  catalog_id = string (Optional, Computed)
  creation_time = string (Computed)
  id = string (Optional, Computed)
  last_accessed_time = string (Computed)
  last_analyzed_time = string (Computed)
  parameters = ['map', 'string'] (Optional)
  region = string (Optional, Computed)

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
      type = string (Optional)
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
}
