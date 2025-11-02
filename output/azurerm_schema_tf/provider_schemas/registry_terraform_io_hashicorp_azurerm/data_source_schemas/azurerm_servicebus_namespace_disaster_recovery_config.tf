data "azurerm_servicebus_namespace_disaster_recovery_config" "name" {
  name = string (Required)
  alias_authorization_rule_id = string (Optional)
  default_primary_key = string (Computed)
  default_secondary_key = string (Computed)
  id = string (Optional, Computed)
  namespace_id = string (Optional, Computed)
  namespace_name = string (Optional, Computed)
  partner_namespace_id = string (Computed)
  primary_connection_string_alias = string (Computed)
  resource_group_name = string (Optional, Computed)
  secondary_connection_string_alias = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
