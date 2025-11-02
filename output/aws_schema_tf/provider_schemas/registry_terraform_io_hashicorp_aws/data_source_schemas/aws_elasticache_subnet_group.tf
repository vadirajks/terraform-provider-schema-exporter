data "aws_elasticache_subnet_group" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subnet_ids = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
  vpc_id = string (Computed)
}
