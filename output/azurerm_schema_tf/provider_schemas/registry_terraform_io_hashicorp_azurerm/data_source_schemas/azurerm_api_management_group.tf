data "azurerm_api_management_group" "name" {
  api_management_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Computed)
  display_name = string (Computed)
  external_id = string (Computed)
  id = string (Optional, Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
