resource "aws_memorydb_user" "name" {
  access_string = string (Required)
  user_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  minimum_engine_version = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  authentication_mode block "list" (Required) {
    type = string (Required)
    password_count = number (Computed)
    passwords = ['set', 'string'] (Optional)
  }
}
