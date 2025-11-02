data "aws_ssm_maintenance_windows" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }
}
