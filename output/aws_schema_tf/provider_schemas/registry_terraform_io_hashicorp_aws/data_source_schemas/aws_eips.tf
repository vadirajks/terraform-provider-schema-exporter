data "aws_eips" "name" {
  allocation_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  public_ips = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
