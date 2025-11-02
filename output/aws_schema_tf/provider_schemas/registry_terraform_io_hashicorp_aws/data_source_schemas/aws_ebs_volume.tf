data "aws_ebs_volume" "name" {
  arn = string (Computed)
  availability_zone = string (Computed)
  create_time = string (Computed)
  encrypted = bool (Computed)
  id = string (Optional, Computed)
  iops = number (Computed)
  kms_key_id = string (Computed)
  most_recent = bool (Optional)
  multi_attach_enabled = bool (Computed)
  outpost_arn = string (Computed)
  region = string (Optional, Computed)
  size = number (Computed)
  snapshot_id = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  throughput = number (Computed)
  volume_id = string (Computed)
  volume_initialization_rate = number (Computed)
  volume_type = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
