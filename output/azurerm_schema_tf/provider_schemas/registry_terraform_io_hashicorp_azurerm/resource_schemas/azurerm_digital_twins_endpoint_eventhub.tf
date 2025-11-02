resource "azurerm_digital_twins_endpoint_eventhub" "name" {
  digital_twins_id = string (Required)
  eventhub_primary_connection_string = string (Required)
  eventhub_secondary_connection_string = string (Required)
  name = string (Required)
  dead_letter_storage_secret = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
