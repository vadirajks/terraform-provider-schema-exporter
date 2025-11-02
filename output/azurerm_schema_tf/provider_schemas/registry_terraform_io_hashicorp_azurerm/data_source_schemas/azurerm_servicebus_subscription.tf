data "azurerm_servicebus_subscription" "name" {
  name = string (Required)
  auto_delete_on_idle = string (Computed)
  batched_operations_enabled = bool (Computed)
  dead_lettering_on_filter_evaluation_error = bool (Computed)
  dead_lettering_on_message_expiration = bool (Computed)
  default_message_ttl = string (Computed)
  enable_batched_operations = bool (Computed)
  forward_dead_lettered_messages_to = string (Computed)
  forward_to = string (Computed)
  id = string (Optional, Computed)
  lock_duration = string (Computed)
  max_delivery_count = number (Computed)
  namespace_name = string (Optional)
  requires_session = bool (Computed)
  resource_group_name = string (Optional)
  topic_id = string (Optional)
  topic_name = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
