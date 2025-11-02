resource "aws_memorydb_subnet_group" "name" {
  subnet_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)
}
