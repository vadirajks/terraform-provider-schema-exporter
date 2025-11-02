data "aws_ssm_instances" "name" {
  id = string (Optional, Computed)
  ids = ['set', 'string'] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }
}
