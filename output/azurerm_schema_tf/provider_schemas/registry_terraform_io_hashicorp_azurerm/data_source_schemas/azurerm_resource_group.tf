data "azurerm_resource_group" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  managed_by = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
