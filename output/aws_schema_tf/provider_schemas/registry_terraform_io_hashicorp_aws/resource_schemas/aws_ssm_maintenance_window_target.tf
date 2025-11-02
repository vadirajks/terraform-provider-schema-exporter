resource "aws_ssm_maintenance_window_target" "name" {
  resource_type = string (Required)
  window_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional)
  owner_information = string (Optional)
  region = string (Optional, Computed)

  targets block "list" (Required) {
    key = string (Required)
    values = ['list', 'string'] (Required)
  }
}
