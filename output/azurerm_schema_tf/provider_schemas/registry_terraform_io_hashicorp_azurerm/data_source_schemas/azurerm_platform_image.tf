data "azurerm_platform_image" "name" {
  location = string (Required)
  offer = string (Required)
  publisher = string (Required)
  sku = string (Required)
  id = string (Optional, Computed)
  version = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
