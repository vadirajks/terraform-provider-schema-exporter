resource "aws_dms_replication_config" "name" {
  replication_config_identifier = string (Required)
  replication_type = string (Required)
  source_endpoint_arn = string (Required)
  table_mappings = string (Required)
  target_endpoint_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  replication_settings = string (Optional, Computed)
  resource_identifier = string (Optional, Computed)
  start_replication = bool (Optional)
  supplemental_settings = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  compute_config block "list" (Required) {
    replication_subnet_group_id = string (Required)
    availability_zone = string (Optional, Computed)
    dns_name_servers = string (Optional)
    kms_key_id = string (Optional, Computed)
    max_capacity_units = number (Optional)
    min_capacity_units = number (Optional)
    multi_az = bool (Optional, Computed)
    preferred_maintenance_window = string (Optional, Computed)
    vpc_security_group_ids = ['set', 'string'] (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
