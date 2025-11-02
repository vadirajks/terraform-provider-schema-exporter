resource "google_bigquery_routine" "name" {
  dataset_id = string (Required)
  definition_body = string (Required)
  routine_id = string (Required)
  routine_type = string (Required)
  creation_time = number (Computed)
  data_governance_type = string (Optional)
  description = string (Optional)
  determinism_level = string (Optional)
  id = string (Optional, Computed)
  imported_libraries = ['list', 'string'] (Optional)
  language = string (Optional)
  last_modified_time = number (Computed)
  project = string (Optional, Computed)
  return_table_type = string (Optional)
  return_type = string (Optional)
  security_mode = string (Optional)

  arguments block "list" (Optional) {
    argument_kind = string (Optional)
    data_type = string (Optional)
    mode = string (Optional)
    name = string (Optional)
  }

  remote_function_options block "list" (Optional) {
    connection = string (Optional)
    endpoint = string (Optional)
    max_batching_rows = string (Optional)
    user_defined_context = ['map', 'string'] (Optional, Computed)
  }

  spark_options block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional, Computed)
    connection = string (Optional)
    container_image = string (Optional)
    file_uris = ['list', 'string'] (Optional, Computed)
    jar_uris = ['list', 'string'] (Optional, Computed)
    main_class = string (Optional)
    main_file_uri = string (Optional)
    properties = ['map', 'string'] (Optional, Computed)
    py_file_uris = ['list', 'string'] (Optional, Computed)
    runtime_version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
