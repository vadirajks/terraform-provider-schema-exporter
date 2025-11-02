resource "aws_ssm_association" "name" {
  name = string (Required)
  apply_only_at_cron_interval = bool (Optional)
  arn = string (Computed)
  association_id = string (Computed)
  association_name = string (Optional)
  automation_target_parameter_name = string (Optional)
  compliance_severity = string (Optional)
  document_version = string (Optional, Computed)
  id = string (Optional, Computed)
  max_concurrency = string (Optional)
  max_errors = string (Optional)
  parameters = ['map', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  schedule_expression = string (Optional)
  sync_compliance = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  wait_for_success_timeout_seconds = number (Optional)

  output_location block "list" (Optional) {
    s3_bucket_name = string (Required)
    s3_key_prefix = string (Optional)
    s3_region = string (Optional)
  }

  targets block "list" (Optional) {
    key = string (Required)
    values = ['list', 'string'] (Required)
  }
}
