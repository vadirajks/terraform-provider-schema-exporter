resource "azurerm_api_management_api_schema" "name" {
  api_management_name = string (Required)
  api_name = string (Required)
  content_type = string (Required)
  resource_group_name = string (Required)
  schema_id = string (Required)
  components = string (Optional)
  definitions = string (Optional)
  id = string (Optional, Computed)
  value = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
