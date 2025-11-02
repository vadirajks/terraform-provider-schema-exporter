resource "azurerm_servicebus_namespace_authorization_rule" "name" {
  name = string (Required)
  namespace_id = string (Required)
  id = string (Optional, Computed)
  listen = bool (Optional)
  manage = bool (Optional)
  primary_connection_string = string (Computed)
  primary_connection_string_alias = string (Computed)
  primary_key = string (Computed)
  secondary_connection_string = string (Computed)
  secondary_connection_string_alias = string (Computed)
  secondary_key = string (Computed)
  send = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
