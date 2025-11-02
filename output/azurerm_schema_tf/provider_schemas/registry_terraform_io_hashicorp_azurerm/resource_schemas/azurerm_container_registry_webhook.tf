resource "azurerm_container_registry_webhook" "name" {
  actions = ['set', 'string'] (Required)
  location = string (Required)
  name = string (Required)
  registry_name = string (Required)
  resource_group_name = string (Required)
  service_uri = string (Required)
  custom_headers = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  scope = string (Optional)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
