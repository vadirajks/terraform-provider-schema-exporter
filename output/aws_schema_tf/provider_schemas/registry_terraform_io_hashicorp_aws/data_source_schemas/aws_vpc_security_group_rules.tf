data "aws_vpc_security_group_rules" "name" {
  id = string (Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
