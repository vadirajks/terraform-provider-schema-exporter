data "azurerm_public_ip_prefix" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  ip_prefix = string (Computed)
  location = string (Computed)
  prefix_length = number (Computed)
  sku = string (Computed)
  sku_tier = string (Computed)
  tags = ['map', 'string'] (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
