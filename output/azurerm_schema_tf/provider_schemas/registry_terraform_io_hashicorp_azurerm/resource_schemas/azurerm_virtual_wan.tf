resource "azurerm_virtual_wan" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allow_branch_to_branch_traffic = bool (Optional)
  disable_vpn_encryption = bool (Optional)
  id = string (Optional, Computed)
  office365_local_breakout_category = string (Optional)
  tags = ['map', 'string'] (Optional)
  type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
