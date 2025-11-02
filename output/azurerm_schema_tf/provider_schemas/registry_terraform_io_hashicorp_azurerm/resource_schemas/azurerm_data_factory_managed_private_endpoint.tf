resource "azurerm_data_factory_managed_private_endpoint" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  target_resource_id = string (Required)
  fqdns = ['list', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  subresource_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
