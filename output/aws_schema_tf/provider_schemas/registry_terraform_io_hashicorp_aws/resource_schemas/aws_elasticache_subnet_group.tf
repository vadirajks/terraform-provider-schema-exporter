resource "aws_elasticache_subnet_group" "name" {
  name = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)
}
