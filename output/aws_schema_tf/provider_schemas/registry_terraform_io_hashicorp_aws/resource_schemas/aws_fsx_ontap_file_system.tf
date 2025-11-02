resource "aws_fsx_ontap_file_system" "name" {
  deployment_type = string (Required)
  preferred_subnet_id = string (Required)
  storage_capacity = number (Required)
  subnet_ids = ['list', 'string'] (Required)
  arn = string (Computed)
  automatic_backup_retention_days = number (Optional)
  daily_automatic_backup_start_time = string (Optional, Computed)
  dns_name = string (Computed)
  endpoint_ip_address_range = string (Optional, Computed)
  endpoints = ['list', ['object', {'intercluster': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]], 'management': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]]}]] (Computed)
  fsx_admin_password = string (Optional)
  ha_pairs = number (Optional, Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  network_interface_ids = ['list', 'string'] (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  route_table_ids = ['set', 'string'] (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional)
  storage_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  throughput_capacity = number (Optional, Computed)
  throughput_capacity_per_ha_pair = number (Optional, Computed)
  vpc_id = string (Computed)
  weekly_maintenance_start_time = string (Optional, Computed)

  disk_iops_configuration block "list" (Optional) {
    iops = number (Optional, Computed)
    mode = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
