resource "azurerm_sql_database" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  collation = string (Optional, Computed)
  create_mode = string (Optional)
  creation_date = string (Computed)
  default_secondary_location = string (Computed)
  edition = string (Optional, Computed)
  elastic_pool_name = string (Optional, Computed)
  encryption = string (Computed)
  id = string (Optional, Computed)
  max_size_bytes = string (Optional, Computed)
  max_size_gb = string (Optional, Computed)
  read_scale = bool (Optional)
  requested_service_objective_id = string (Optional, Computed)
  requested_service_objective_name = string (Optional, Computed)
  restore_point_in_time = string (Optional, Computed)
  source_database_deletion_date = string (Optional, Computed)
  source_database_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  zone_redundant = bool (Optional)

  import block "list"  (Optional){
    administrator_login = string (Required)
    administrator_login_password = string (Required)
    authentication_type = string (Required)
    storage_key = string (Required)
    storage_key_type = string (Required)
    storage_uri = string (Required)
    operation_mode = string (Optional)
  }

  threat_detection_policy block "list"  (Optional){
    disabled_alerts = ['set', 'string'] (Optional)
    email_account_admins = string (Optional)
    email_addresses = ['set', 'string'] (Optional)
    retention_days = number (Optional)
    state = string (Optional)
    storage_account_access_key = string (Optional)
    storage_endpoint = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
