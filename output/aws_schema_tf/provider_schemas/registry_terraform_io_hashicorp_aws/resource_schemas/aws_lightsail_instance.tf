resource "aws_lightsail_instance" "name" {
  availability_zone = string (Required)
  blueprint_id = string (Required)
  bundle_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  cpu_count = number (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  ip_address_type = string (Optional)
  ipv6_addresses = ['list', 'string'] (Computed)
  is_static_ip = bool (Computed)
  key_pair_name = string (Optional)
  private_ip_address = string (Computed)
  public_ip_address = string (Computed)
  ram_size = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_data = string (Optional)
  username = string (Computed)

  add_on block "list" (Optional) {
    snapshot_time = string (Required)
    status = string (Required)
    type = string (Required)
  }
}
