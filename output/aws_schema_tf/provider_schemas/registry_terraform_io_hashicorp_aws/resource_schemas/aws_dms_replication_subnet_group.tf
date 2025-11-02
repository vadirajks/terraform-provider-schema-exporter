resource "aws_dms_replication_subnet_group" "name" {
  replication_subnet_group_description = string (Required)
  replication_subnet_group_id = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  replication_subnet_group_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)
}
