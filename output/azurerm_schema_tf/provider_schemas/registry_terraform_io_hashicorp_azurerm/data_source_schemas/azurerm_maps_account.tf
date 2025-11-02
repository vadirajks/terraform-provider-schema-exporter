data "azurerm_maps_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  primary_access_key = string (Computed)
  secondary_access_key = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Optional)
  x_ms_client_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
