resource "azurerm_api_management_workspace_policy_fragment" "name" {
  api_management_workspace_id = string (Required)
  name = string (Required)
  xml_content = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  xml_format = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
