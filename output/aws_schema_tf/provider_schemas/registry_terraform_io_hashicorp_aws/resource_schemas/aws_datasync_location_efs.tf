resource "aws_datasync_location_efs" "name" {
  efs_file_system_arn = string (Required)
  access_point_arn = string (Optional)
  arn = string (Computed)
  file_system_access_role_arn = string (Optional)
  id = string (Optional, Computed)
  in_transit_encryption = string (Optional)
  region = string (Optional, Computed)
  subdirectory = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)

  ec2_config block "list" (Required) {
    security_group_arns = ['set', 'string'] (Required)
    subnet_arn = string (Required)
  }
}
