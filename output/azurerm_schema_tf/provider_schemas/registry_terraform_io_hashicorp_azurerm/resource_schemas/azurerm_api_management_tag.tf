resource "azurerm_api_management_tag" "name" {
  api_management_id = string (Required)
  name = string (Required)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
