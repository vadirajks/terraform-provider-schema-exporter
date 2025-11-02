resource "azurerm_oracle_cloud_vm_cluster" "name" {
  cloud_exadata_infrastructure_id = string (Required)
  cpu_core_count = number (Required)
  db_servers = ['list', 'string'] (Required)
  display_name = string (Required)
  gi_version = string (Required)
  hostname = string (Required)
  license_model = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  ssh_public_keys = ['list', 'string'] (Required)
  subnet_id = string (Required)
  virtual_network_id = string (Required)
  backup_subnet_cidr = string (Optional)
  cluster_name = string (Optional, Computed)
  data_storage_percentage = number (Optional, Computed)
  data_storage_size_in_tbs = number (Optional, Computed)
  db_node_storage_size_in_gbs = number (Optional, Computed)
  domain = string (Optional, Computed)
  hostname_actual = string (Computed)
  id = string (Optional, Computed)
  local_backup_enabled = bool (Optional, Computed)
  memory_size_in_gbs = number (Optional, Computed)
  ocid = string (Computed)
  scan_listener_port_tcp = number (Optional)
  scan_listener_port_tcp_ssl = number (Optional)
  sparse_diskgroup_enabled = bool (Optional, Computed)
  system_version = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  time_zone = string (Optional, Computed)
  zone_id = string (Optional, Computed)

  data_collection_options block "list" (Optional) {
    diagnostics_events_enabled = bool (Optional, Computed)
    health_monitoring_enabled = bool (Optional, Computed)
    incident_logs_enabled = bool (Optional, Computed)
  }

  file_system_configuration block "list" (Optional) {
    mount_point = string (Optional)
    size_in_gb = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
