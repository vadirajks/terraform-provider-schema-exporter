data "aws_efs_access_point" "name" {
  access_point_id = string (Required)
  arn = string (Computed)
  file_system_arn = string (Computed)
  file_system_id = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  posix_user = ['list', ['object', {'gid': 'number', 'secondary_gids': ['set', 'number'], 'uid': 'number'}]] (Computed)
  region = string (Optional, Computed)
  root_directory = ['list', ['object', {'creation_info': ['list', ['object', {'owner_gid': 'number', 'owner_uid': 'number', 'permissions': 'string'}]], 'path': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
