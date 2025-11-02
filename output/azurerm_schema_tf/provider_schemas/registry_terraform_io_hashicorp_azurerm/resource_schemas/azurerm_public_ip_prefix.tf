resource "azurerm_public_ip_prefix" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  custom_ip_prefix_id = string (Optional)
  id = string (Optional, Computed)
  ip_prefix = string (Computed)
  ip_version = string (Optional)
  prefix_length = number (Optional)
  sku = string (Optional)
  sku_tier = string (Optional)
  tags = ['map', 'string'] (Optional)
  zones = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
