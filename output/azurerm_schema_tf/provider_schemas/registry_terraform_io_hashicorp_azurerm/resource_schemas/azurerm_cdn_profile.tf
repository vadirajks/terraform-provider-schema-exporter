resource "azurerm_cdn_profile" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
