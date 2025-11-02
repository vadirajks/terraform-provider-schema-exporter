resource "aws_ec2_host" "name" {
  availability_zone = string (Required)
  arn = string (Computed)
  asset_id = string (Optional, Computed)
  auto_placement = string (Optional)
  host_recovery = string (Optional)
  id = string (Optional, Computed)
  instance_family = string (Optional)
  instance_type = string (Optional)
  outpost_arn = string (Optional)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
