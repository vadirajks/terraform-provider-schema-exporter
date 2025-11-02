data "azurerm_api_management_api_version_set" "name" {
  api_management_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  version_header_name = string (Computed)
  version_query_name = string (Computed)
  versioning_scheme = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
