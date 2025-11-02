resource "google_dataplex_task" "name" {
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  execution_status = ['list', ['object', {'latest_job': ['list', ['object', {'end_time': 'string', 'message': 'string', 'name': 'string', 'retry_count': 'number', 'service': 'string', 'service_job': 'string', 'start_time': 'string', 'state': 'string', 'uid': 'string'}]], 'update_time': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  lake = string (Optional)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  task_id = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  execution_spec block "list" (Required) {
    service_account = string (Required)
    args = ['map', 'string'] (Optional)
    kms_key = string (Optional)
    max_job_execution_lifetime = string (Optional)
    project = string (Optional)
  }

  notebook block "list" (Optional) {
    notebook = string (Required)
    archive_uris = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)

    infrastructure_spec block "list" (Optional) {

      batch block "list" (Optional) {
        executors_count = number (Optional)
        max_executors_count = number (Optional)
      }

      container_image block "list" (Optional) {
        image = string (Optional)
        java_jars = ['list', 'string'] (Optional)
        properties = ['map', 'string'] (Optional)
        python_packages = ['list', 'string'] (Optional)
      }

      vpc_network block "list" (Optional) {
        network = string (Optional)
        network_tags = ['list', 'string'] (Optional)
        sub_network = string (Optional)
      }
    }
  }

  spark block "list" (Optional) {
    archive_uris = ['list', 'string'] (Optional)
    file_uris = ['list', 'string'] (Optional)
    main_class = string (Optional)
    main_jar_file_uri = string (Optional)
    python_script_file = string (Optional)
    sql_script = string (Optional)
    sql_script_file = string (Optional)

    infrastructure_spec block "list" (Optional) {

      batch block "list" (Optional) {
        executors_count = number (Optional)
        max_executors_count = number (Optional)
      }

      container_image block "list" (Optional) {
        image = string (Optional)
        java_jars = ['list', 'string'] (Optional)
        properties = ['map', 'string'] (Optional)
        python_packages = ['list', 'string'] (Optional)
      }

      vpc_network block "list" (Optional) {
        network = string (Optional)
        network_tags = ['list', 'string'] (Optional)
        sub_network = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  trigger_spec block "list" (Required) {
    type = string (Required)
    disabled = bool (Optional)
    max_retries = number (Optional)
    schedule = string (Optional)
    start_time = string (Optional)
  }
}
