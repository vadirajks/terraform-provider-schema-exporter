resource "aws_cloudformation_type" "name" {
  schema_handler_package = string (Required)
  type_name = string (Required)
  arn = string (Computed)
  default_version_id = string (Computed)
  deprecated_status = string (Computed)
  description = string (Computed)
  documentation_url = string (Computed)
  execution_role_arn = string (Optional)
  id = string (Optional, Computed)
  is_default_version = bool (Computed)
  provisioning_type = string (Computed)
  region = string (Optional, Computed)
  schema = string (Computed)
  source_url = string (Computed)
  type = string (Optional, Computed)
  type_arn = string (Computed)
  version_id = string (Computed)
  visibility = string (Computed)

  logging_config block "list" (Optional) {
    log_group_name = string (Required)
    log_role_arn = string (Required)
  }
}
