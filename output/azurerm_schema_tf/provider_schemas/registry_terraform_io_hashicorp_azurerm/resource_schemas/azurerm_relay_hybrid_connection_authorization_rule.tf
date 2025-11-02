resource "azurerm_relay_hybrid_connection_authorization_rule" "name" {
  hybrid_connection_name = string (Required)
  name = string (Required)
  namespace_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  listen = bool (Optional)
  manage = bool (Optional)
  primary_connection_string = string (Computed)
  primary_key = string (Computed)
  secondary_connection_string = string (Computed)
  secondary_key = string (Computed)
  send = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
