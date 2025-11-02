resource "azurerm_relay_hybrid_connection" "name" {
  name = string (Required)
  relay_namespace_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  requires_client_authorization = bool (Optional)
  user_metadata = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
