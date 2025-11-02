data "aws_fsx_openzfs_snapshot" "name" {
  arn = string (Computed)
  creation_time = string (Computed)
  id = string (Optional, Computed)
  most_recent = bool (Optional)
  name = string (Optional)
  region = string (Optional, Computed)
  snapshot_id = string (Computed)
  snapshot_ids = ['list', 'string'] (Optional)
  tags = ['map', 'string'] (Optional, Computed)
  volume_id = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }
}
