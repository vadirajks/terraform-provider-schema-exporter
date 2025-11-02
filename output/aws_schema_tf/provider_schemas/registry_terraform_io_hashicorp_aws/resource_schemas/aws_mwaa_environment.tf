resource "aws_mwaa_environment" "name" {
  dag_s3_path = string (Required)
  execution_role_arn = string (Required)
  name = string (Required)
  source_bucket_arn = string (Required)
  airflow_configuration_options = ['map', 'string'] (Optional)
  airflow_version = string (Optional, Computed)
  arn = string (Computed)
  created_at = string (Computed)
  database_vpc_endpoint_service = string (Computed)
  endpoint_management = string (Optional, Computed)
  environment_class = string (Optional, Computed)
  id = string (Optional, Computed)
  kms_key = string (Optional)
  last_updated = ['list', ['object', {'created_at': 'string', 'error': ['list', ['object', {'error_code': 'string', 'error_message': 'string'}]], 'status': 'string'}]] (Computed)
  max_webservers = number (Optional, Computed)
  max_workers = number (Optional, Computed)
  min_webservers = number (Optional, Computed)
  min_workers = number (Optional, Computed)
  plugins_s3_object_version = string (Optional, Computed)
  plugins_s3_path = string (Optional)
  region = string (Optional, Computed)
  requirements_s3_object_version = string (Optional, Computed)
  requirements_s3_path = string (Optional)
  schedulers = number (Optional, Computed)
  service_role_arn = string (Computed)
  startup_script_s3_object_version = string (Optional, Computed)
  startup_script_s3_path = string (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  webserver_access_mode = string (Optional, Computed)
  webserver_url = string (Computed)
  webserver_vpc_endpoint_service = string (Computed)
  weekly_maintenance_window_start = string (Optional, Computed)
  worker_replacement_strategy = string (Optional, Computed)

  logging_configuration block "list" (Optional) {

    dag_processing_logs block "list" (Optional) {
      cloud_watch_log_group_arn = string (Computed)
      enabled = bool (Optional, Computed)
      log_level = string (Optional, Computed)
    }

    scheduler_logs block "list" (Optional) {
      cloud_watch_log_group_arn = string (Computed)
      enabled = bool (Optional, Computed)
      log_level = string (Optional, Computed)
    }

    task_logs block "list" (Optional) {
      cloud_watch_log_group_arn = string (Computed)
      enabled = bool (Optional, Computed)
      log_level = string (Optional, Computed)
    }

    webserver_logs block "list" (Optional) {
      cloud_watch_log_group_arn = string (Computed)
      enabled = bool (Optional, Computed)
      log_level = string (Optional, Computed)
    }

    worker_logs block "list" (Optional) {
      cloud_watch_log_group_arn = string (Computed)
      enabled = bool (Optional, Computed)
      log_level = string (Optional, Computed)
    }
  }

  network_configuration block "list" (Required) {
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
