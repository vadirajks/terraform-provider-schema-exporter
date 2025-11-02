resource "azurerm_subnet_service_endpoint_storage_policy" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  definition block "list" (Optional) {
    name = string (Required)
    service_resources = ['set', 'string'] (Required)
    description = string (Optional)
    service = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
