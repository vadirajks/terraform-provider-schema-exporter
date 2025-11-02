resource "azurerm_eventhub_namespace_schema_group" "name" {
  name = string (Required)
  namespace_id = string (Required)
  schema_compatibility = string (Required)
  schema_type = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
