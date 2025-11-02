resource "azurerm_application_insights_api_key" "name" {
  application_insights_id = string (Required)
  name = string (Required)
  api_key = string (Computed)
  id = string (Optional, Computed)
  read_permissions = ['set', 'string'] (Optional)
  write_permissions = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
