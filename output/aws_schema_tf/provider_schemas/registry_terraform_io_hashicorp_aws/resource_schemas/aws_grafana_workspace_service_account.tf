resource "aws_grafana_workspace_service_account" "name" {
  grafana_role = string (Required)
  name = string (Required)
  workspace_id = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  service_account_id = string (Computed)
}
