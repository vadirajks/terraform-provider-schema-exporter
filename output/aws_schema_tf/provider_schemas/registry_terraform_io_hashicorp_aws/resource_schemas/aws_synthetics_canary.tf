resource "aws_synthetics_canary" "name" {
  artifact_s3_location = string (Required)
  execution_role_arn = string (Required)
  handler = string (Required)
  name = string (Required)
  runtime_version = string (Required)
  arn = string (Computed)
  delete_lambda = bool (Optional)
  engine_arn = string (Computed)
  failure_retention_period = number (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  s3_bucket = string (Optional)
  s3_key = string (Optional)
  s3_version = string (Optional)
  source_location_arn = string (Computed)
  start_canary = bool (Optional)
  status = string (Computed)
  success_retention_period = number (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  timeline = ['list', ['object', {'created': 'string', 'last_modified': 'string', 'last_started': 'string', 'last_stopped': 'string'}]] (Computed)
  zip_file = string (Optional)

  artifact_config block "list" (Optional) {

    s3_encryption block "list" (Optional) {
      encryption_mode = string (Optional)
      kms_key_arn = string (Optional)
    }
  }

  run_config block "list" (Optional) {
    active_tracing = bool (Optional)
    environment_variables = ['map', 'string'] (Optional)
    ephemeral_storage = number (Optional, Computed)
    memory_in_mb = number (Optional, Computed)
    timeout_in_seconds = number (Optional, Computed)
  }

  schedule block "list" (Required) {
    expression = string (Required)
    duration_in_seconds = number (Optional)

    retry_config block "list" (Optional) {
      max_retries = number (Required)
    }
  }

  vpc_config block "list" (Optional) {
    ipv6_allowed_for_dual_stack = bool (Optional)
    security_group_ids = ['set', 'string'] (Optional)
    subnet_ids = ['set', 'string'] (Optional)
    vpc_id = string (Computed)
  }
}
