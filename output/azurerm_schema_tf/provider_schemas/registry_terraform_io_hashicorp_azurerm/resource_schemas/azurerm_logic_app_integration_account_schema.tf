resource "azurerm_logic_app_integration_account_schema" "name" {
  content = string (Required)
  integration_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  file_name = string (Optional)
  id = string (Optional, Computed)
  metadata = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
