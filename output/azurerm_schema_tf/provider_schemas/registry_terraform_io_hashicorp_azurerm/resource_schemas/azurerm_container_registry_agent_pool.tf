resource "azurerm_container_registry_agent_pool" "name" {
  container_registry_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  instance_count = number (Optional)
  tags = ['map', 'string'] (Optional)
  tier = string (Optional)
  virtual_network_subnet_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
