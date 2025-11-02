resource "azurerm_iothub_device_update_instance" "name" {
  device_update_account_id = string (Required)
  iothub_id = string (Required)
  name = string (Required)
  diagnostic_enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  diagnostic_storage_account block "list" (Optional) {
    connection_string = string (Required)
    id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
