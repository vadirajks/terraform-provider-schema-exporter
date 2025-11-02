resource "azurerm_data_factory_integration_runtime_azure" "name" {
  data_factory_id = string (Required)
  location = string (Required)
  name = string (Required)
  cleanup_enabled = bool (Optional)
  compute_type = string (Optional)
  core_count = number (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  time_to_live_min = number (Optional)
  virtual_network_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
