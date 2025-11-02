resource "azurerm_data_factory_dataset_sql_server_table" "name" {
  data_factory_id = string (Required)
  linked_service_name = string (Required)
  name = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  folder = string (Optional)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  table_name = string (Optional)

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
