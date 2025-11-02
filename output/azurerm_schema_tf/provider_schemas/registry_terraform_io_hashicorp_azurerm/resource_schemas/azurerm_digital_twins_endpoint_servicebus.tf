resource "azurerm_digital_twins_endpoint_servicebus" "name" {
  digital_twins_id = string (Required)
  name = string (Required)
  servicebus_primary_connection_string = string (Required)
  servicebus_secondary_connection_string = string (Required)
  dead_letter_storage_secret = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
