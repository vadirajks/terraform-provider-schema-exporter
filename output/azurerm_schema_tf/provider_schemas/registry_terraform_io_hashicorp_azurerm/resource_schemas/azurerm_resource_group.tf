resource "azurerm_resource_group" "name" {
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  managed_by = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
