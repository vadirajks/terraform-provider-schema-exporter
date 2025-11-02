data "azurerm_iothub_shared_access_policy" "name" {
  iothub_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  primary_connection_string = string (Computed)
  primary_key = string (Computed)
  secondary_connection_string = string (Computed)
  secondary_key = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
