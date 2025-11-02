resource "azurerm_cosmosdb_account" "name" {
  location = string (Required)
  name = string (Required)
  offer_type = string (Required)
  resource_group_name = string (Required)
  access_key_metadata_writes_enabled = bool (Optional)
  analytical_storage_enabled = bool (Optional)
  automatic_failover_enabled = bool (Optional)
  burst_capacity_enabled = bool (Optional)
  create_mode = string (Optional, Computed)
  default_identity_type = string (Optional)
  endpoint = string (Computed)
  free_tier_enabled = bool (Optional)
  id = string (Optional, Computed)
  ip_range_filter = ['set', 'string'] (Optional)
  is_virtual_network_filter_enabled = bool (Optional)
  key_vault_key_id = string (Optional)
  kind = string (Optional)
  local_authentication_disabled = bool (Optional)
  managed_hsm_key_id = string (Optional)
  minimal_tls_version = string (Optional)
  mongo_server_version = string (Optional, Computed)
  multiple_write_locations_enabled = bool (Optional)
  network_acl_bypass_for_azure_services = bool (Optional)
  network_acl_bypass_ids = ['list', 'string'] (Optional)
  partition_merge_enabled = bool (Optional)
  primary_key = string (Computed)
  primary_mongodb_connection_string = string (Computed)
  primary_readonly_key = string (Computed)
  primary_readonly_mongodb_connection_string = string (Computed)
  primary_readonly_sql_connection_string = string (Computed)
  primary_sql_connection_string = string (Computed)
  public_network_access_enabled = bool (Optional)
  read_endpoints = ['list', 'string'] (Computed)
  secondary_key = string (Computed)
  secondary_mongodb_connection_string = string (Computed)
  secondary_readonly_key = string (Computed)
  secondary_readonly_mongodb_connection_string = string (Computed)
  secondary_readonly_sql_connection_string = string (Computed)
  secondary_sql_connection_string = string (Computed)
  tags = ['map', 'string'] (Optional)
  write_endpoints = ['list', 'string'] (Computed)

  analytical_storage block "list" (Optional) {
    schema_type = string (Required)
  }

  backup block "list" (Optional) {
    type = string (Required)
    interval_in_minutes = number (Optional, Computed)
    retention_in_hours = number (Optional, Computed)
    storage_redundancy = string (Optional, Computed)
    tier = string (Optional, Computed)
  }

  capabilities block "set" (Optional) {
    name = string (Required)
  }

  capacity block "list" (Optional) {
    total_throughput_limit = number (Required)
  }

  consistency_policy block "list" (Required) {
    consistency_level = string (Required)
    max_interval_in_seconds = number (Optional)
    max_staleness_prefix = number (Optional)
  }

  cors_rule block "list" (Optional) {
    allowed_headers = ['list', 'string'] (Required)
    allowed_methods = ['list', 'string'] (Required)
    allowed_origins = ['list', 'string'] (Required)
    exposed_headers = ['list', 'string'] (Required)
    max_age_in_seconds = number (Optional)
  }

  geo_location block "set" (Required) {
    failover_priority = number (Required)
    location = string (Required)
    id = string (Computed)
    zone_redundant = bool (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  restore block "list" (Optional) {
    restore_timestamp_in_utc = string (Required)
    source_cosmosdb_account_id = string (Required)
    tables_to_restore = ['list', 'string'] (Optional)

    database block "set" (Optional) {
      name = string (Required)
      collection_names = ['set', 'string'] (Optional)
    }

    gremlin_database block "list" (Optional) {
      name = string (Required)
      graph_names = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  virtual_network_rule block "set" (Optional) {
    id = string (Required)
    ignore_missing_vnet_service_endpoint = bool (Optional)
  }
}
