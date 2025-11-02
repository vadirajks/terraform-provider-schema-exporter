resource "aws_elasticache_user_group" "name" {
  engine = string (Required)
  user_group_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_ids = ['set', 'string'] (Optional)
}
