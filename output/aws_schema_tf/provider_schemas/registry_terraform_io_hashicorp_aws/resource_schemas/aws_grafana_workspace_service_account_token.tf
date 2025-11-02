resource "aws_grafana_workspace_service_account_token" "name" {
  name = string (Required)
  seconds_to_live = number (Required)
  service_account_id = string (Required)
  workspace_id = string (Required)
  created_at = string (Computed)
  expires_at = string (Computed)
  id = string (Computed)
  key = string (Computed)
  region = string (Optional, Computed)
  service_account_token_id = string (Computed)
}
