resource "aws_rds_shard_group" "name" {
  db_cluster_identifier = string (Required)
  db_shard_group_identifier = string (Required)
  max_acu = number (Required)
  arn = string (Computed)
  compute_redundancy = number (Optional, Computed)
  db_shard_group_resource_id = string (Computed)
  endpoint = string (Computed)
  min_acu = number (Optional, Computed)
  publicly_accessible = bool (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
