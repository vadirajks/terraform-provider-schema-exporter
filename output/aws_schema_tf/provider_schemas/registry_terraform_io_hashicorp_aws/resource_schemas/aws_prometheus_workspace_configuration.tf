resource "aws_prometheus_workspace_configuration" "name" {
  workspace_id = string (Required)
  region = string (Optional, Computed)
  retention_period_in_days = number (Optional, Computed)

  limits_per_label_set block "list" (Optional) {
    label_set = ['map', 'string'] (Required)

    limits block "list" (Optional) {
      max_series = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
