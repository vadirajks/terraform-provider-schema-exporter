resource "aws_gamelift_build" "name" {
  name = string (Required)
  operating_system = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Optional)

  storage_location block "list" (Required) {
    bucket = string (Required)
    key = string (Required)
    role_arn = string (Required)
    object_version = string (Optional)
  }
}
