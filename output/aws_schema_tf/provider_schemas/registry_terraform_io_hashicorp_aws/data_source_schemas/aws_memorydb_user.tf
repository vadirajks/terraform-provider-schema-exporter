data "aws_memorydb_user" "name" {
  user_name = string (Required)
  access_string = string (Computed)
  arn = string (Computed)
  authentication_mode = ['list', ['object', {'password_count': 'number', 'type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  minimum_engine_version = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
