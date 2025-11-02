data "azurerm_communication_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  data_location = string (Computed)
  hostname = string (Computed)
  id = string (Optional, Computed)
  immutable_resource_id = string (Computed)
  primary_connection_string = string (Computed)
  primary_key = string (Computed)
  secondary_connection_string = string (Computed)
  secondary_key = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
