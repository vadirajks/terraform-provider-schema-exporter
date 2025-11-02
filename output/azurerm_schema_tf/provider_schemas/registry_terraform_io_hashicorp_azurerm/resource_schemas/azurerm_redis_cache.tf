resource "azurerm_redis_cache" "name" {
  capacity = number (Required)
  family = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  access_keys_authentication_enabled = bool (Optional)
  hostname = string (Computed)
  id = string (Optional, Computed)
  minimum_tls_version = string (Optional)
  non_ssl_port_enabled = bool (Optional)
  port = number (Computed)
  primary_access_key = string (Computed)
  primary_connection_string = string (Computed)
  private_static_ip_address = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  redis_version = string (Optional)
  replicas_per_master = number (Optional, Computed)
  replicas_per_primary = number (Optional, Computed)
  secondary_access_key = string (Computed)
  secondary_connection_string = string (Computed)
  shard_count = number (Optional)
  ssl_port = number (Computed)
  subnet_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tenant_settings = ['map', 'string'] (Optional)
  zones = ['set', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  patch_schedule block "list" (Optional) {
    day_of_week = string (Required)
    maintenance_window = string (Optional)
    start_hour_utc = number (Optional)
  }

  redis_configuration block "list" (Optional) {
    active_directory_authentication_enabled = bool (Optional)
    aof_backup_enabled = bool (Optional)
    aof_storage_connection_string_0 = string (Optional)
    aof_storage_connection_string_1 = string (Optional)
    authentication_enabled = bool (Optional)
    data_persistence_authentication_method = string (Optional)
    maxclients = number (Computed)
    maxfragmentationmemory_reserved = number (Optional, Computed)
    maxmemory_delta = number (Optional, Computed)
    maxmemory_policy = string (Optional)
    maxmemory_reserved = number (Optional, Computed)
    notify_keyspace_events = string (Optional)
    rdb_backup_enabled = bool (Optional)
    rdb_backup_frequency = number (Optional)
    rdb_backup_max_snapshot_count = number (Optional)
    rdb_storage_connection_string = string (Optional)
    storage_account_subscription_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
