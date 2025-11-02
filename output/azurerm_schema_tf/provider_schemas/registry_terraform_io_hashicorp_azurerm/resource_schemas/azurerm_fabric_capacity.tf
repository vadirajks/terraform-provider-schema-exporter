resource "azurerm_fabric_capacity" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  administration_members = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  sku block "list" (Required) {
    name = string (Required)
    tier = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
