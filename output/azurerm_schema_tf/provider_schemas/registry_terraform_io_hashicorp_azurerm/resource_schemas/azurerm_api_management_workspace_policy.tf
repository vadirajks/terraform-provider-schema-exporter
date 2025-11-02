resource "azurerm_api_management_workspace_policy" "name" {
  api_management_workspace_id = string (Required)
  id = string (Optional, Computed)
  xml_content = string (Optional, Computed)
  xml_link = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
