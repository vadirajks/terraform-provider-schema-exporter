resource "aws_fsx_windows_file_system" "name" {
  subnet_ids = ['list', 'string'] (Required)
  throughput_capacity = number (Required)
  active_directory_id = string (Optional)
  aliases = ['set', 'string'] (Optional)
  arn = string (Computed)
  automatic_backup_retention_days = number (Optional)
  backup_id = string (Optional)
  copy_tags_to_backups = bool (Optional)
  daily_automatic_backup_start_time = string (Optional, Computed)
  deployment_type = string (Optional)
  dns_name = string (Computed)
  final_backup_tags = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  network_interface_ids = ['set', 'string'] (Computed)
  owner_id = string (Computed)
  preferred_file_server_ip = string (Computed)
  preferred_subnet_id = string (Optional, Computed)
  region = string (Optional, Computed)
  remote_administration_endpoint = string (Computed)
  security_group_ids = ['set', 'string'] (Optional)
  skip_final_backup = bool (Optional)
  storage_capacity = number (Optional, Computed)
  storage_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)
  weekly_maintenance_start_time = string (Optional, Computed)

  audit_log_configuration block "list" (Optional) {
    audit_log_destination = string (Optional, Computed)
    file_access_audit_log_level = string (Optional)
    file_share_access_audit_log_level = string (Optional)
  }

  disk_iops_configuration block "list" (Optional) {
    iops = number (Optional, Computed)
    mode = string (Optional)
  }

  self_managed_active_directory block "list" (Optional) {
    dns_ips = ['set', 'string'] (Required)
    domain_name = string (Required)
    password = string (Required)
    username = string (Required)
    file_system_administrators_group = string (Optional)
    organizational_unit_distinguished_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
