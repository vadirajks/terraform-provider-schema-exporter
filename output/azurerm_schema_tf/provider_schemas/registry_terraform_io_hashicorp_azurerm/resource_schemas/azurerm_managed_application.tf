resource "azurerm_managed_application" "name" {
  kind = string (Required)
  location = string (Required)
  managed_resource_group_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  application_definition_id = string (Optional)
  id = string (Optional, Computed)
  outputs = ['map', 'string'] (Computed)
  parameter_values = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  plan block "list" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
    version = string (Required)
    promotion_code = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
