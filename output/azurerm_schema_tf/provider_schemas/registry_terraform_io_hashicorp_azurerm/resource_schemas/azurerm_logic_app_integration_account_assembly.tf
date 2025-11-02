resource "azurerm_logic_app_integration_account_assembly" "name" {
  assembly_name = string (Required)
  integration_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  assembly_version = string (Optional)
  content = string (Optional)
  content_link_uri = string (Optional)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
