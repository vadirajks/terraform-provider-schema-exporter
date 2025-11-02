resource "aws_efs_mount_target" "name" {
  file_system_id = string (Required)
  subnet_id = string (Required)
  availability_zone_id = string (Computed)
  availability_zone_name = string (Computed)
  dns_name = string (Computed)
  file_system_arn = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Optional, Computed)
  ip_address_type = string (Optional, Computed)
  ipv6_address = string (Optional, Computed)
  mount_target_dns_name = string (Computed)
  network_interface_id = string (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  security_groups = ['set', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
