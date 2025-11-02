resource "google_dataproc_batch" "name" {
  batch_id = string (Optional)
  create_time = string (Computed)
  creator = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  operation = string (Computed)
  project = string (Optional, Computed)
  runtime_info = ['list', ['object', {'approximate_usage': ['list', ['object', {'accelerator_type': 'string', 'milli_accelerator_seconds': 'string', 'milli_dcu_seconds': 'string', 'shuffle_storage_gb_seconds': 'string'}]], 'current_usage': ['list', ['object', {'accelerator_type': 'string', 'milli_accelerator': 'string', 'milli_dcu': 'string', 'milli_dcu_premium': 'string', 'shuffle_storage_gb': 'string', 'shuffle_storage_gb_premium': 'string', 'snapshot_time': 'string'}]], 'diagnostic_output_uri': 'string', 'endpoints': ['map', 'string'], 'output_uri': 'string'}]] (Computed)
  state = string (Computed)
  state_history = ['list', ['object', {'state': 'string', 'state_message': 'string', 'state_start_time': 'string'}]] (Computed)
  state_message = string (Computed)
  state_time = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uuid = string (Computed)

  environment_config block "list" (Optional) {

    execution_config block "list" (Optional) {
      kms_key = string (Optional)
      network_tags = ['list', 'string'] (Optional)
      network_uri = string (Optional)
      service_account = string (Optional, Computed)
      staging_bucket = string (Optional)
      subnetwork_uri = string (Optional)
      ttl = string (Optional, Computed)

      authentication_config block "list" (Optional) {
        user_workload_authentication_type = string (Optional)
      }
    }

    peripherals_config block "list" (Optional) {
      metastore_service = string (Optional)

      spark_history_server_config block "list" (Optional) {
        dataproc_cluster = string (Optional)
      }
    }
  }

  pyspark_batch block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    main_python_file_uri = string (Optional)
    python_file_uris = ['list', 'string'] (Optional)
  }

  runtime_config block "list" (Optional) {
    cohort = string (Optional)
    container_image = string (Optional)
    effective_properties = ['map', 'string'] (Computed)
    properties = ['map', 'string'] (Optional)
    version = string (Optional, Computed)

    autotuning_config block "list" (Optional) {
      scenarios = ['list', 'string'] (Optional)
    }
  }

  spark_batch block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    jar_file_uris = ['list', 'string'] (Optional)
    main_class = string (Optional)
    main_jar_file_uri = string (Optional)
  }

  spark_r_batch block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional)
    args = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    main_r_file_uri = string (Optional)
  }

  spark_sql_batch block "list" (Optional) {
    jar_file_uris = ['list', 'string'] (Optional)
    query_file_uri = string (Optional)
    query_variables = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
