resource "azurerm_storage_table_entity" "name" {
  entity = ['map', 'string'] (Required)
  partition_key = string (Required)
  row_key = string (Required)
  storage_table_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
