resource "aws_memorydb_acl" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  minimum_engine_version = string (Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_names = ['set', 'string'] (Optional)
}
