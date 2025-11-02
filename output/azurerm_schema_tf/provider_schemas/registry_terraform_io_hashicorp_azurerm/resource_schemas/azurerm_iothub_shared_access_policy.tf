resource "azurerm_iothub_shared_access_policy" "name" {
  iothub_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  device_connect = bool (Optional)
  id = string (Optional, Computed)
  primary_connection_string = string (Computed)
  primary_key = string (Computed)
  registry_read = bool (Optional)
  registry_write = bool (Optional)
  secondary_connection_string = string (Computed)
  secondary_key = string (Computed)
  service_connect = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
