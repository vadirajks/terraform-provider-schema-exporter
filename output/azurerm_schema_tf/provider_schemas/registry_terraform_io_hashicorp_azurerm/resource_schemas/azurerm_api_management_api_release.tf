resource "azurerm_api_management_api_release" "name" {
  api_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  notes = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
