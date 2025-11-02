resource "azurerm_spatial_anchors_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  account_domain = string (Computed)
  account_id = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
