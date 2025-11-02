data "azurerm_spatial_anchors_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  account_domain = string (Computed)
  account_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
