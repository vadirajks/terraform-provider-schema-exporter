resource "azurerm_data_factory_trigger_blob_event" "name" {
  data_factory_id = string (Required)
  events = ['set', 'string'] (Required)
  name = string (Required)
  storage_account_id = string (Required)
  activated = bool (Optional)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  blob_path_begins_with = string (Optional)
  blob_path_ends_with = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  ignore_empty_blobs = bool (Optional)

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
