resource "azurerm_netapp_snapshot" "name" {
  account_name = string (Required)
  location = string (Required)
  name = string (Required)
  pool_name = string (Required)
  resource_group_name = string (Required)
  volume_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
