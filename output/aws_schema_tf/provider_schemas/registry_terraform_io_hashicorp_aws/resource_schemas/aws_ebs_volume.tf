resource "aws_ebs_volume" "name" {
  availability_zone = string (Required)
  arn = string (Computed)
  create_time = string (Computed)
  encrypted = bool (Optional, Computed)
  final_snapshot = bool (Optional)
  id = string (Optional, Computed)
  iops = number (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  multi_attach_enabled = bool (Optional)
  outpost_arn = string (Optional)
  region = string (Optional, Computed)
  size = number (Optional, Computed)
  snapshot_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  throughput = number (Optional, Computed)
  type = string (Optional, Computed)
  volume_initialization_rate = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
