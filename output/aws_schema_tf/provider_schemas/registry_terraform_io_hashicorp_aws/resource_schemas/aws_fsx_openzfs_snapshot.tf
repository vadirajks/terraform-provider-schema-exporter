resource "aws_fsx_openzfs_snapshot" "name" {
  name = string (Required)
  volume_id = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
