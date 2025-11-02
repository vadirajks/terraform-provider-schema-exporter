data "azurerm_storage_table_entity" "name" {
  partition_key = string (Required)
  row_key = string (Required)
  storage_table_id = string (Required)
  entity = ['map', 'string'] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
