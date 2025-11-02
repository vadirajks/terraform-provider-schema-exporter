resource "aws_finspace_kx_cluster" "name" {
  az_mode = string (Required)
  environment_id = string (Required)
  name = string (Required)
  release_label = string (Required)
  type = string (Required)
  arn = string (Computed)
  availability_zone_id = string (Optional)
  command_line_arguments = ['map', 'string'] (Optional)
  created_timestamp = string (Computed)
  description = string (Optional)
  execution_role = string (Optional)
  id = string (Optional, Computed)
  initialization_script = string (Optional)
  last_modified_timestamp = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  auto_scaling_configuration block "list" (Optional) {
    auto_scaling_metric = string (Required)
    max_node_count = number (Required)
    metric_target = number (Required)
    min_node_count = number (Required)
    scale_in_cooldown_seconds = number (Required)
    scale_out_cooldown_seconds = number (Required)
  }

  cache_storage_configurations block "list" (Optional) {
    size = number (Required)
    type = string (Required)
  }

  capacity_configuration block "list" (Optional) {
    node_count = number (Required)
    node_type = string (Required)
  }

  code block "list" (Optional) {
    s3_bucket = string (Required)
    s3_key = string (Required)
    s3_object_version = string (Optional)
  }

  database block "list" (Optional) {
    database_name = string (Required)
    changeset_id = string (Optional)
    dataview_name = string (Optional)

    cache_configurations block "list" (Optional) {
      cache_type = string (Required)
      db_paths = ['set', 'string'] (Optional)
    }
  }

  savedown_storage_configuration block "list" (Optional) {
    size = number (Optional)
    type = string (Optional)
    volume_name = string (Optional)
  }

  scaling_group_configuration block "list" (Optional) {
    memory_reservation = number (Required)
    node_count = number (Required)
    scaling_group_name = string (Required)
    cpu = number (Optional)
    memory_limit = number (Optional)
  }

  tickerplant_log_configuration block "list" (Optional) {
    tickerplant_log_volumes = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_configuration block "list" (Required) {
    ip_address_type = string (Required)
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
  }
}
