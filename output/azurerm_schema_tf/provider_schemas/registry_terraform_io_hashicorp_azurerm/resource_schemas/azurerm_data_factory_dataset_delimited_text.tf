resource "azurerm_data_factory_dataset_delimited_text" "name" {
  data_factory_id = string (Required)
  linked_service_name = string (Required)
  name = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  column_delimiter = string (Optional)
  compression_codec = string (Optional)
  compression_level = string (Optional)
  description = string (Optional)
  encoding = string (Optional)
  escape_character = string (Optional)
  first_row_as_header = bool (Optional)
  folder = string (Optional)
  id = string (Optional, Computed)
  null_value = string (Optional)
  parameters = ['map', 'string'] (Optional)
  quote_character = string (Optional)
  row_delimiter = string (Optional)

  azure_blob_fs_location block "list" (Optional) {
    dynamic_file_system_enabled = bool (Optional)
    dynamic_filename_enabled = bool (Optional)
    dynamic_path_enabled = bool (Optional)
    file_system = string (Optional)
    filename = string (Optional)
    path = string (Optional)
  }

  azure_blob_storage_location block "list" (Optional) {
    container = string (Required)
    dynamic_container_enabled = bool (Optional)
    dynamic_filename_enabled = bool (Optional)
    dynamic_path_enabled = bool (Optional)
    filename = string (Optional)
    path = string (Optional)
  }

  http_server_location block "list" (Optional) {
    filename = string (Required)
    path = string (Required)
    relative_url = string (Required)
    dynamic_filename_enabled = bool (Optional)
    dynamic_path_enabled = bool (Optional)
  }

  schema_column block "list" (Optional) {
    name = string (Required)
    description = string (Optional)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
