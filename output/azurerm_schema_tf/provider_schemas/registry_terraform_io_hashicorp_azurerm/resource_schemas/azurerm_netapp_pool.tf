resource "azurerm_netapp_pool" "name" {
  account_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  service_level = string (Required)
  size_in_tb = number (Required)
  cool_access_enabled = bool (Optional)
  custom_throughput_mibps = number (Optional)
  encryption_type = string (Optional)
  id = string (Optional, Computed)
  qos_type = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
