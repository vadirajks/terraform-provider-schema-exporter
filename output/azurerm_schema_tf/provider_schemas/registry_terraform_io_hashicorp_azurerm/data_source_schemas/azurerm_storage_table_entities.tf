data "azurerm_storage_table_entities" "name" {
  filter = string (Required)
  storage_table_id = string (Required)
  id = string (Optional, Computed)
  items = ['list', ['object', {'partition_key': 'string', 'properties': ['map', 'string'], 'row_key': 'string'}]] (Computed)
  select = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
