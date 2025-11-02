resource "aws_prometheus_alert_manager_definition" "name" {
  definition = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
