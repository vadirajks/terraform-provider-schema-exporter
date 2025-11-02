resource "google_dataproc_job" "name" {
  driver_controls_files_uri = string (Computed)
  driver_output_resource_uri = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  force_delete = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional)
  status = ['list', ['object', {'details': 'string', 'state': 'string', 'state_start_time': 'string', 'substate': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  hadoop_config block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    main_class = string (Optional)
    main_jar_file_uri = string (Optional)
    properties = ['map', 'string'] (Optional)

    logging_config block "list" (Optional) {
      driver_log_levels = ['map', 'string'] (Required)
    }
  }

  hive_config block "list" (Optional) {
    continue_on_failure = bool (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    properties = ['map', 'string'] (Optional)
    query_file_uri = string (Optional)
    query_list = ['list', 'string'] (Optional)
    script_variables = ['map', 'string'] (Optional)
  }

  pig_config block "list" (Optional) {
    continue_on_failure = bool (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    properties = ['map', 'string'] (Optional)
    query_file_uri = string (Optional)
    query_list = ['list', 'string'] (Optional)
    script_variables = ['map', 'string'] (Optional)

    logging_config block "list" (Optional) {
      driver_log_levels = ['map', 'string'] (Required)
    }
  }

  placement block "list" (Required) {
    cluster_name = string (Required)
    cluster_uuid = string (Computed)
  }

  presto_config block "list" (Optional) {
    client_tags = ['list', 'string'] (Optional)
    continue_on_failure = bool (Optional)
    output_format = string (Optional)
    properties = ['map', 'string'] (Optional)
    query_file_uri = string (Optional)
    query_list = ['list', 'string'] (Optional)

    logging_config block "list" (Optional) {
      driver_log_levels = ['map', 'string'] (Required)
    }
  }

  pyspark_config block "list" (Optional) {
    main_python_file_uri = string (Required)
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    properties = ['map', 'string'] (Optional)
    python_file_uris = ['list', 'string'] (Optional)

    logging_config block "list" (Optional) {
      driver_log_levels = ['map', 'string'] (Required)
    }
  }

  reference block "list" (Optional) {
    job_id = string (Optional, Computed)
  }

  scheduling block "list" (Optional) {
    max_failures_per_hour = number (Required)
    max_failures_total = number (Required)
  }

  spark_config block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    main_class = string (Optional)
    main_jar_file_uri = string (Optional)
    properties = ['map', 'string'] (Optional)

    logging_config block "list" (Optional) {
      driver_log_levels = ['map', 'string'] (Required)
    }
  }

  sparksql_config block "list" (Optional) {
    jar_file_uris = ['list', 'string'] (Optional)
    properties = ['map', 'string'] (Optional)
    query_file_uri = string (Optional)
    query_list = ['list', 'string'] (Optional)
    script_variables = ['map', 'string'] (Optional)

    logging_config block "list" (Optional) {
      driver_log_levels = ['map', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
