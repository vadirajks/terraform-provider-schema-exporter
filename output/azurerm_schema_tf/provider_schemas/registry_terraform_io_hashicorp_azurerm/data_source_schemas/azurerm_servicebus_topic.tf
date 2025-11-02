data "azurerm_servicebus_topic" "name" {
  name = string (Required)
  auto_delete_on_idle = string (Computed)
  batched_operations_enabled = bool (Computed)
  default_message_ttl = string (Computed)
  duplicate_detection_history_time_window = string (Computed)
  enable_batched_operations = bool (Computed)
  enable_express = bool (Computed)
  enable_partitioning = bool (Computed)
  express_enabled = bool (Computed)
  id = string (Optional, Computed)
  max_size_in_megabytes = number (Computed)
  namespace_id = string (Optional)
  namespace_name = string (Optional)
  partitioning_enabled = bool (Computed)
  requires_duplicate_detection = bool (Computed)
  resource_group_name = string (Optional)
  status = string (Computed)
  support_ordering = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
