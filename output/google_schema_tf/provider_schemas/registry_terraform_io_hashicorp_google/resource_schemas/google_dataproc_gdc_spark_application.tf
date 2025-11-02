resource "google_dataproc_gdc_spark_application" "name" {
  location = string (Required)
  serviceinstance = string (Required)
  spark_application_id = string (Required)
  annotations = ['map', 'string'] (Optional)
  application_environment = string (Optional)
  create_time = string (Computed)
  dependency_images = ['list', 'string'] (Optional)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  monitoring_endpoint = string (Computed)
  name = string (Computed)
  namespace = string (Optional)
  output_uri = string (Computed)
  project = string (Optional, Computed)
  properties = ['map', 'string'] (Optional)
  reconciling = bool (Computed)
  state = string (Computed)
  state_message = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  version = string (Optional)

  pyspark_application_config block "list" (Optional) {
    main_python_file_uri = string (Required)
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    python_file_uris = ['list', 'string'] (Optional)
  }

  spark_application_config block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    main_class = string (Optional)
    main_jar_file_uri = string (Optional)
  }

  spark_r_application_config block "list" (Optional) {
    main_r_file_uri = string (Required)
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
  }

  spark_sql_application_config block "list" (Optional) {
    jar_file_uris = ['list', 'string'] (Optional)
    query_file_uri = string (Optional)
    script_variables = ['map', 'string'] (Optional)

    query_list block "list" (Optional) {
      queries = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
