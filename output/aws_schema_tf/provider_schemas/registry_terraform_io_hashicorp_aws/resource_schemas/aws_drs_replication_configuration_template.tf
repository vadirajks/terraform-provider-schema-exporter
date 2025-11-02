resource "aws_drs_replication_configuration_template" "name" {
  associate_default_security_group = bool (Required)
  bandwidth_throttling = number (Required)
  create_public_ip = bool (Required)
  data_plane_routing = string (Required)
  default_large_staging_disk_type = string (Required)
  ebs_encryption = string (Required)
  replication_server_instance_type = string (Required)
  replication_servers_security_groups_ids = ['list', 'string'] (Required)
  staging_area_subnet_id = string (Required)
  staging_area_tags = ['map', 'string'] (Required)
  use_dedicated_replication_server = bool (Required)
  arn = string (Computed)
  auto_replicate_new_disks = bool (Optional, Computed)
  ebs_encryption_key_arn = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  pit_policy block "list" (Optional) {
    interval = number (Required)
    retention_duration = number (Required)
    units = string (Required)
    enabled = bool (Optional)
    rule_id = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
