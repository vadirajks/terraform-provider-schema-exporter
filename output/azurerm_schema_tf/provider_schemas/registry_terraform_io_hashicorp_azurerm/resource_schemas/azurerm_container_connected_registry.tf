resource "azurerm_container_connected_registry" "name" {
  container_registry_id = string (Required)
  name = string (Required)
  sync_token_id = string (Required)
  audit_log_enabled = bool (Optional)
  client_token_ids = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  log_level = string (Optional)
  mode = string (Optional)
  parent_registry_id = string (Optional)
  sync_message_ttl = string (Optional)
  sync_schedule = string (Optional)
  sync_window = string (Optional)

  notification block "list" (Optional) {
    action = string (Required)
    name = string (Required)
    digest = string (Optional)
    tag = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
