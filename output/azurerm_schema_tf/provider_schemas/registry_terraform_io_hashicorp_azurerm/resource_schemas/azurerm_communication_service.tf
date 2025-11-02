resource "azurerm_communication_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  data_location = string (Optional)
  hostname = string (Computed)
  id = string (Optional, Computed)
  primary_connection_string = string (Computed)
  primary_key = string (Computed)
  secondary_connection_string = string (Computed)
  secondary_key = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
