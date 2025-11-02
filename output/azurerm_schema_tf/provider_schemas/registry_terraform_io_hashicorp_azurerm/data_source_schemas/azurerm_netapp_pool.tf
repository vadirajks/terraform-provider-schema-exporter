data "azurerm_netapp_pool" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  cool_access_enabled = bool (Computed)
  custom_throughput_mibps = number (Computed)
  encryption_type = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  service_level = string (Computed)
  size_in_tb = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
