resource "azurerm_synapse_spark_pool" "name" {
  name = string (Required)
  node_size = string (Required)
  node_size_family = string (Required)
  spark_version = string (Required)
  synapse_workspace_id = string (Required)
  cache_size = number (Optional)
  compute_isolation_enabled = bool (Optional)
  dynamic_executor_allocation_enabled = bool (Optional)
  id = string (Optional, Computed)
  max_executors = number (Optional)
  min_executors = number (Optional)
  node_count = number (Optional, Computed)
  session_level_packages_enabled = bool (Optional)
  spark_events_folder = string (Optional)
  spark_log_folder = string (Optional)
  tags = ['map', 'string'] (Optional)

  auto_pause block "list" (Optional) {
    delay_in_minutes = number (Required)
  }

  auto_scale block "list" (Optional) {
    max_node_count = number (Required)
    min_node_count = number (Required)
  }

  library_requirement block "list" (Optional) {
    content = string (Required)
    filename = string (Required)
  }

  spark_config block "list" (Optional) {
    content = string (Required)
    filename = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
