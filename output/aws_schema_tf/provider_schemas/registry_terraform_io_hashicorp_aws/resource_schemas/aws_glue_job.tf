resource "aws_glue_job" "name" {
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  connections = ['list', 'string'] (Optional)
  default_arguments = ['map', 'string'] (Optional)
  description = string (Optional)
  execution_class = string (Optional)
  glue_version = string (Optional, Computed)
  id = string (Optional, Computed)
  job_mode = string (Optional, Computed)
  job_run_queuing_enabled = bool (Optional)
  maintenance_window = string (Optional)
  max_capacity = number (Optional, Computed)
  max_retries = number (Optional)
  non_overridable_arguments = ['map', 'string'] (Optional)
  number_of_workers = number (Optional, Computed)
  region = string (Optional, Computed)
  security_configuration = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  timeout = number (Optional, Computed)
  worker_type = string (Optional, Computed)

  command block "list" (Required) {
    script_location = string (Required)
    name = string (Optional)
    python_version = string (Optional, Computed)
    runtime = string (Optional, Computed)
  }

  execution_property block "list" (Optional) {
    max_concurrent_runs = number (Optional)
  }

  notification_property block "list" (Optional) {
    notify_delay_after = number (Optional)
  }

  source_control_details block "list" (Optional) {
    auth_strategy = string (Optional)
    auth_token = string (Optional)
    branch = string (Optional)
    folder = string (Optional)
    last_commit_id = string (Optional)
    owner = string (Optional)
    provider = string (Optional)
    repository = string (Optional)
  }
}
