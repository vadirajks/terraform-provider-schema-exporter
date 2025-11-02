resource "azurerm_servicebus_subscription_rule" "name" {
  filter_type = string (Required)
  name = string (Required)
  subscription_id = string (Required)
  action = string (Optional)
  id = string (Optional, Computed)
  sql_filter = string (Optional)
  sql_filter_compatibility_level = number (Computed)

  correlation_filter block "list" (Optional) {
    content_type = string (Optional)
    correlation_id = string (Optional)
    label = string (Optional)
    message_id = string (Optional)
    properties = ['map', 'string'] (Optional)
    reply_to = string (Optional)
    reply_to_session_id = string (Optional)
    session_id = string (Optional)
    to = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
