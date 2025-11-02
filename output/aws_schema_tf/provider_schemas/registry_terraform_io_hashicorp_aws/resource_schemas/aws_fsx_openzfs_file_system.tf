resource "aws_fsx_openzfs_file_system" "name" {
  deployment_type = string (Required)
  subnet_ids = ['list', 'string'] (Required)
  throughput_capacity = number (Required)
  arn = string (Computed)
  automatic_backup_retention_days = number (Optional)
  backup_id = string (Optional)
  copy_tags_to_backups = bool (Optional)
  copy_tags_to_volumes = bool (Optional)
  daily_automatic_backup_start_time = string (Optional, Computed)
  delete_options = ['set', 'string'] (Optional)
  dns_name = string (Computed)
  endpoint_ip_address = string (Computed)
  endpoint_ip_address_range = string (Optional, Computed)
  final_backup_tags = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  network_interface_ids = ['list', 'string'] (Computed)
  owner_id = string (Computed)
  preferred_subnet_id = string (Optional)
  region = string (Optional, Computed)
  root_volume_id = string (Computed)
  route_table_ids = ['set', 'string'] (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional)
  skip_final_backup = bool (Optional)
  storage_capacity = number (Optional)
  storage_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)
  weekly_maintenance_start_time = string (Optional, Computed)

  disk_iops_configuration block "list" (Optional) {
    iops = number (Optional, Computed)
    mode = string (Optional)
  }

  root_volume_configuration block "list" (Optional) {
    copy_tags_to_snapshots = bool (Optional)
    data_compression_type = string (Optional)
    read_only = bool (Optional, Computed)
    record_size_kib = number (Optional)

    nfs_exports block "list" (Optional) {

      client_configurations block "set" (Required) {
        clients = string (Required)
        options = ['list', 'string'] (Required)
      }
    }

    user_and_group_quotas block "set" (Optional) {
      id = number (Required)
      storage_capacity_quota_gib = number (Required)
      type = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
