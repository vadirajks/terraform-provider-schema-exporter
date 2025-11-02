resource "azurerm_servicebus_queue" "name" {
  name = string (Required)
  namespace_id = string (Required)
  auto_delete_on_idle = string (Optional, Computed)
  batched_operations_enabled = bool (Optional)
  dead_lettering_on_message_expiration = bool (Optional)
  default_message_ttl = string (Optional, Computed)
  duplicate_detection_history_time_window = string (Optional)
  express_enabled = bool (Optional)
  forward_dead_lettered_messages_to = string (Optional)
  forward_to = string (Optional)
  id = string (Optional, Computed)
  lock_duration = string (Optional)
  max_delivery_count = number (Optional)
  max_message_size_in_kilobytes = number (Optional, Computed)
  max_size_in_megabytes = number (Optional, Computed)
  partitioning_enabled = bool (Optional)
  requires_duplicate_detection = bool (Optional)
  requires_session = bool (Optional)
  status = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
