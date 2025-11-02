resource "aws_prometheus_workspace" "name" {
  alias = string (Optional)
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional)
  prometheus_endpoint = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  logging_configuration block "list" (Optional) {
    log_group_arn = string (Required)
  }
}
