resource "azurerm_network_manager_scope_connection" "name" {
  name = string (Required)
  network_manager_id = string (Required)
  target_scope_id = string (Required)
  tenant_id = string (Required)
  connection_state = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
