resource "azurerm_cosmosdb_postgresql_cluster" "name" {
  location = string (Required)
  name = string (Required)
  node_count = number (Required)
  resource_group_name = string (Required)
  administrator_login_password = string (Optional)
  citus_version = string (Optional, Computed)
  coordinator_public_ip_access_enabled = bool (Optional)
  coordinator_server_edition = string (Optional)
  coordinator_storage_quota_in_mb = number (Optional)
  coordinator_vcore_count = number (Optional)
  earliest_restore_time = string (Computed)
  ha_enabled = bool (Optional)
  id = string (Optional, Computed)
  node_public_ip_access_enabled = bool (Optional)
  node_server_edition = string (Optional)
  node_storage_quota_in_mb = number (Optional, Computed)
  node_vcores = number (Optional, Computed)
  point_in_time_in_utc = string (Optional)
  preferred_primary_zone = string (Optional)
  servers = ['list', ['object', {'fqdn': 'string', 'name': 'string'}]] (Computed)
  shards_on_coordinator_enabled = bool (Optional, Computed)
  source_location = string (Optional)
  source_resource_id = string (Optional)
  sql_version = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  maintenance_window block "list" (Optional) {
    day_of_week = number (Optional)
    start_hour = number (Optional)
    start_minute = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
