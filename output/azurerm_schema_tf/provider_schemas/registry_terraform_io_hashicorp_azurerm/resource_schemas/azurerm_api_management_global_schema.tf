resource "azurerm_api_management_global_schema" "name" {
  api_management_name = string (Required)
  resource_group_name = string (Required)
  schema_id = string (Required)
  type = string (Required)
  value = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
