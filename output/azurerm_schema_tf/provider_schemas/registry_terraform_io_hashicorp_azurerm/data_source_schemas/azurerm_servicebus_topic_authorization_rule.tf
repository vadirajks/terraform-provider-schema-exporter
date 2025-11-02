data "azurerm_servicebus_topic_authorization_rule" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  listen = bool (Computed)
  manage = bool (Computed)
  namespace_name = string (Optional)
  primary_connection_string = string (Computed)
  primary_connection_string_alias = string (Computed)
  primary_key = string (Computed)
  queue_name = string (Optional)
  resource_group_name = string (Optional)
  secondary_connection_string = string (Computed)
  secondary_connection_string_alias = string (Computed)
  secondary_key = string (Computed)
  send = bool (Computed)
  topic_id = string (Optional)
  topic_name = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
