resource "azurerm_servicebus_topic" "name" {
  name = string (Required)
  namespace_id = string (Required)
  auto_delete_on_idle = string (Optional)
  batched_operations_enabled = bool (Optional)
  default_message_ttl = string (Optional)
  duplicate_detection_history_time_window = string (Optional)
  express_enabled = bool (Optional)
  id = string (Optional, Computed)
  max_message_size_in_kilobytes = number (Optional, Computed)
  max_size_in_megabytes = number (Optional, Computed)
  partitioning_enabled = bool (Optional)
  requires_duplicate_detection = bool (Optional)
  status = string (Optional)
  support_ordering = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
