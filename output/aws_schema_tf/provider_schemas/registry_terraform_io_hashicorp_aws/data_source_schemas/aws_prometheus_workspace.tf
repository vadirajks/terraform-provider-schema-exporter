data "aws_prometheus_workspace" "name" {
  workspace_id = string (Required)
  alias = string (Computed)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Computed)
  prometheus_endpoint = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
