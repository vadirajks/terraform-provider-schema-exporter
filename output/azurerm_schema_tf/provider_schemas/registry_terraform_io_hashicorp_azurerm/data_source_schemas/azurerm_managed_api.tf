data "azurerm_managed_api" "name" {
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
