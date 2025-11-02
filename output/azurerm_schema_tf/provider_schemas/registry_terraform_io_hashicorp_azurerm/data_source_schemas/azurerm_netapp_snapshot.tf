data "azurerm_netapp_snapshot" "name" {
  account_name = string (Required)
  name = string (Required)
  pool_name = string (Required)
  resource_group_name = string (Required)
  volume_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
