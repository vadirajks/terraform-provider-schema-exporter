resource "aws_ssm_maintenance_window_task" "name" {
  task_arn = string (Required)
  task_type = string (Required)
  window_id = string (Required)
  arn = string (Computed)
  cutoff_behavior = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  max_concurrency = string (Optional, Computed)
  max_errors = string (Optional, Computed)
  name = string (Optional)
  priority = number (Optional)
  region = string (Optional, Computed)
  service_role_arn = string (Optional, Computed)
  window_task_id = string (Computed)

  targets block "list" (Optional) {
    key = string (Required)
    values = ['list', 'string'] (Required)
  }

  task_invocation_parameters block "list" (Optional) {

    automation_parameters block "list" (Optional) {
      document_version = string (Optional)

      parameter block "set" (Optional) {
        name = string (Required)
        values = ['list', 'string'] (Required)
      }
    }

    lambda_parameters block "list" (Optional) {
      client_context = string (Optional)
      payload = string (Optional)
      qualifier = string (Optional)
    }

    run_command_parameters block "list" (Optional) {
      comment = string (Optional)
      document_hash = string (Optional)
      document_hash_type = string (Optional)
      document_version = string (Optional)
      output_s3_bucket = string (Optional)
      output_s3_key_prefix = string (Optional)
      service_role_arn = string (Optional)
      timeout_seconds = number (Optional)

      cloudwatch_config block "list" (Optional) {
        cloudwatch_log_group_name = string (Optional, Computed)
        cloudwatch_output_enabled = bool (Optional)
      }

      notification_config block "list" (Optional) {
        notification_arn = string (Optional)
        notification_events = ['list', 'string'] (Optional)
        notification_type = string (Optional)
      }

      parameter block "set" (Optional) {
        name = string (Required)
        values = ['list', 'string'] (Required)
      }
    }

    step_functions_parameters block "list" (Optional) {
      input = string (Optional)
      name = string (Optional)
    }
  }
}
