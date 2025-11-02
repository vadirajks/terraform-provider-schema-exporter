resource "azurerm_storage_mover" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
