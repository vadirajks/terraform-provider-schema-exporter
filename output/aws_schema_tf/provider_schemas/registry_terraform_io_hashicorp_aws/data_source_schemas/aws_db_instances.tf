data "aws_db_instances" "name" {
  id = string (Optional, Computed)
  instance_arns = ['list', 'string'] (Computed)
  instance_identifiers = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
