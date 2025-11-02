resource "aws_gamelift_script" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Optional)
  zip_file = string (Optional)

  storage_location block "list" (Optional) {
    bucket = string (Required)
    key = string (Required)
    role_arn = string (Required)
    object_version = string (Optional)
  }
}
