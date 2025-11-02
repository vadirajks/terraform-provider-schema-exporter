resource "aws_efs_access_point" "name" {
  file_system_id = string (Required)
  arn = string (Computed)
  file_system_arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  posix_user block "list" (Optional) {
    gid = number (Required)
    uid = number (Required)
    secondary_gids = ['set', 'number'] (Optional)
  }

  root_directory block "list" (Optional) {
    path = string (Optional, Computed)

    creation_info block "list" (Optional) {
      owner_gid = number (Required)
      owner_uid = number (Required)
      permissions = string (Required)
    }
  }
}
