data "aws_ec2_host" "name" {
  arn = string (Computed)
  asset_id = string (Computed)
  auto_placement = string (Computed)
  availability_zone = string (Computed)
  cores = number (Computed)
  host_id = string (Optional, Computed)
  host_recovery = string (Computed)
  id = string (Optional, Computed)
  instance_family = string (Computed)
  instance_type = string (Computed)
  outpost_arn = string (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  sockets = number (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  total_vcpus = number (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
