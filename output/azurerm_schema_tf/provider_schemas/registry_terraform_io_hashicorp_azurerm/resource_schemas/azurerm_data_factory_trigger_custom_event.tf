resource "azurerm_data_factory_trigger_custom_event" "name" {
  data_factory_id = string (Required)
  eventgrid_topic_id = string (Required)
  events = ['set', 'string'] (Required)
  name = string (Required)
  activated = bool (Optional)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  subject_begins_with = string (Optional)
  subject_ends_with = string (Optional)

  pipeline block "set" (Required) {
    name = string (Required)
    parameters = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
