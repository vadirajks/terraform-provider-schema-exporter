data "aws_dms_replication_subnet_group" "name" {
  replication_subnet_group_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  replication_subnet_group_arn = string (Computed)
  replication_subnet_group_description = string (Computed)
  subnet_group_status = string (Computed)
  subnet_ids = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)
}
