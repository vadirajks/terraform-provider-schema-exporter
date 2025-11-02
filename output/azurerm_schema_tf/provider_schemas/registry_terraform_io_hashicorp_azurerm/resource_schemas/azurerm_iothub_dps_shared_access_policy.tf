resource "azurerm_iothub_dps_shared_access_policy" "name" {
  iothub_dps_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  enrollment_read = bool (Optional)
  enrollment_write = bool (Optional)
  id = string (Optional, Computed)
  primary_connection_string = string (Computed)
  primary_key = string (Computed)
  registration_read = bool (Optional)
  registration_write = bool (Optional)
  secondary_connection_string = string (Computed)
  secondary_key = string (Computed)
  service_config = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
