resource "aws_rds_export_task" "name" {
  export_task_identifier = string (Required)
  iam_role_arn = string (Required)
  kms_key_id = string (Required)
  s3_bucket_name = string (Required)
  source_arn = string (Required)
  export_only = ['list', 'string'] (Optional)
  failure_cause = string (Computed)
  id = string (Computed)
  percent_progress = number (Computed)
  region = string (Optional, Computed)
  s3_prefix = string (Optional, Computed)
  snapshot_time = string (Computed)
  source_type = string (Computed)
  status = string (Computed)
  task_end_time = string (Computed)
  task_start_time = string (Computed)
  warning_message = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
