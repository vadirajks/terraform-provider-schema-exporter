data "aws_efs_access_points" "name" {
  file_system_id = string (Required)
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
}
