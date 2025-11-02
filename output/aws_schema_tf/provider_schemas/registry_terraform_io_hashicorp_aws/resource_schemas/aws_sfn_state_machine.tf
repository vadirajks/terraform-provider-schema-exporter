resource "aws_sfn_state_machine" "name" {
  definition = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  creation_date = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  publish = bool (Optional)
  region = string (Optional, Computed)
  revision_id = string (Computed)
  state_machine_version_arn = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)
  version_description = string (Computed)

  encryption_configuration block "list" (Optional) {
    kms_data_key_reuse_period_seconds = number (Optional)
    kms_key_id = string (Optional)
    type = string (Optional)
  }

  logging_configuration block "list" (Optional) {
    include_execution_data = bool (Optional)
    level = string (Optional)
    log_destination = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  tracing_configuration block "list" (Optional) {
    enabled = bool (Optional)
  }
}
