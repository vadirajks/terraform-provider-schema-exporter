resource "azurerm_servicebus_subscription" "name" {
  max_delivery_count = number (Required)
  name = string (Required)
  topic_id = string (Required)
  auto_delete_on_idle = string (Optional)
  batched_operations_enabled = bool (Optional)
  client_scoped_subscription_enabled = bool (Optional)
  dead_lettering_on_filter_evaluation_error = bool (Optional)
  dead_lettering_on_message_expiration = bool (Optional)
  default_message_ttl = string (Optional)
  forward_dead_lettered_messages_to = string (Optional)
  forward_to = string (Optional)
  id = string (Optional, Computed)
  lock_duration = string (Optional)
  requires_session = bool (Optional)
  status = string (Optional)

  client_scoped_subscription block "list" (Optional) {
    client_id = string (Optional)
    is_client_scoped_subscription_durable = bool (Computed)
    is_client_scoped_subscription_shareable = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
