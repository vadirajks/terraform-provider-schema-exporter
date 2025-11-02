resource "aws_medialive_input_security_group" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  inputs = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  whitelist_rules block "set" (Required) {
    cidr = string (Required)
  }
}
