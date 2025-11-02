resource "azurerm_api_management_api_tag_description" "name" {
  api_tag_id = string (Required)
  description = string (Optional)
  external_documentation_description = string (Optional)
  external_documentation_url = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
