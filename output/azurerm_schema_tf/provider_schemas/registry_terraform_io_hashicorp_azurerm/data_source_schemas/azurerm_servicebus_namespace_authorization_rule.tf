data "azurerm_servicebus_namespace_authorization_rule" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  namespace_id = string (Optional)
  namespace_name = string (Optional)
  primary_connection_string = string (Computed)
  primary_connection_string_alias = string (Computed)
  primary_key = string (Computed)
  resource_group_name = string (Optional)
  secondary_connection_string = string (Computed)
  secondary_connection_string_alias = string (Computed)
  secondary_key = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
