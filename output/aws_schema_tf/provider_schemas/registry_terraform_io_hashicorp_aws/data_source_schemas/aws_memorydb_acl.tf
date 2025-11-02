data "aws_memorydb_acl" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  minimum_engine_version = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  user_names = ['set', 'string'] (Computed)
}
