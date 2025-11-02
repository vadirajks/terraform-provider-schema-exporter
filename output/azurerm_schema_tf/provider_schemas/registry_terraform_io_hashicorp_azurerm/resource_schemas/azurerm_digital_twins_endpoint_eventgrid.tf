resource "azurerm_digital_twins_endpoint_eventgrid" "name" {
  digital_twins_id = string (Required)
  eventgrid_topic_endpoint = string (Required)
  eventgrid_topic_primary_access_key = string (Required)
  eventgrid_topic_secondary_access_key = string (Required)
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
