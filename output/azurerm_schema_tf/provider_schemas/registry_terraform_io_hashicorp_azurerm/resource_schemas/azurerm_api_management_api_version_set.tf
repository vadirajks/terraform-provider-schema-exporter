resource "azurerm_api_management_api_version_set" "name" {
  api_management_name = string (Required)
  display_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  versioning_scheme = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  version_header_name = string (Optional)
  version_query_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
