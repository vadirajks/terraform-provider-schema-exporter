data "azurerm_virtual_wan" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  allow_branch_to_branch_traffic = bool (Computed)
  disable_vpn_encryption = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  office365_local_breakout_category = string (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  virtual_hub_ids = ['list', 'string'] (Computed)
  vpn_site_ids = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
