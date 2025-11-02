resource "azurerm_servicebus_namespace_disaster_recovery_config" "name" {
  name = string (Required)
  partner_namespace_id = string (Required)
  primary_namespace_id = string (Required)
  alias_authorization_rule_id = string (Optional)
  default_primary_key = string (Computed)
  default_secondary_key = string (Computed)
  id = string (Optional, Computed)
  primary_connection_string_alias = string (Computed)
  secondary_connection_string_alias = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
