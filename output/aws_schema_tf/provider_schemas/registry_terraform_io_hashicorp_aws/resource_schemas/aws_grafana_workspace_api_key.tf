resource "aws_grafana_workspace_api_key" "name" {
  key_name = string (Required)
  key_role = string (Required)
  seconds_to_live = number (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)
  key = string (Computed)
  region = string (Optional, Computed)
}
