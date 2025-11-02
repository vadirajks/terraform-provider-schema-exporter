data "aws_instances" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  instance_state_names = ['set', 'string'] (Optional)
  instance_tags = ['map', 'string'] (Optional, Computed)
  ipv6_addresses = ['list', 'string'] (Computed)
  private_ips = ['list', 'string'] (Computed)
  public_ips = ['list', 'string'] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
