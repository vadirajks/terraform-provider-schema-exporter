data "azurerm_iothub_dps" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  allocation_policy = string (Computed)
  device_provisioning_host_name = string (Computed)
  id = string (Optional, Computed)
  id_scope = string (Computed)
  location = string (Computed)
  service_operations_host_name = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
