resource "aws_db_proxy_target" "name" {
  db_proxy_name = string (Required)
  target_group_name = string (Required)
  db_cluster_identifier = string (Optional)
  db_instance_identifier = string (Optional)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  port = number (Computed)
  rds_resource_id = string (Computed)
  region = string (Optional, Computed)
  target_arn = string (Computed)
  tracked_cluster_id = string (Computed)
  type = string (Computed)
}
