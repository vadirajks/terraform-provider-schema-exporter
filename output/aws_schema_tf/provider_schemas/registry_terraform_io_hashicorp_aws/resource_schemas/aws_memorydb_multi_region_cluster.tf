resource "aws_memorydb_multi_region_cluster" "name" {
  multi_region_cluster_name_suffix = string (Required)
  node_type = string (Required)
  arn = string (Computed)
  description = string (Optional)
  engine = string (Optional, Computed)
  engine_version = string (Optional, Computed)
  multi_region_cluster_name = string (Computed)
  multi_region_parameter_group_name = string (Optional, Computed)
  num_shards = number (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  tls_enabled = bool (Optional, Computed)
  update_strategy = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
