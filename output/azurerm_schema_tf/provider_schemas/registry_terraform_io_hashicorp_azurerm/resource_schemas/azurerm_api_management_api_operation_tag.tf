resource "azurerm_api_management_api_operation_tag" "name" {
  api_operation_id = string (Required)
  display_name = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
