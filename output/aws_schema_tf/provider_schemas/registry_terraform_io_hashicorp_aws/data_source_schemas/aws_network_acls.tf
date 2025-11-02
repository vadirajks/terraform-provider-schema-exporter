data "aws_network_acls" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Optional)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
