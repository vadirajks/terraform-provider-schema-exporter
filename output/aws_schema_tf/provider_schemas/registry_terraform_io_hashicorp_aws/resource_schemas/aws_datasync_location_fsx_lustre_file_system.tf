resource "aws_datasync_location_fsx_lustre_file_system" "name" {
  fsx_filesystem_arn = string (Required)
  security_group_arns = ['set', 'string'] (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subdirectory = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)
}
