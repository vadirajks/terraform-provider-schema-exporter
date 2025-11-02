resource "azurerm_network_function_azure_traffic_collector" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  collector_policy_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  virtual_hub_id = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
