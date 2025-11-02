resource "azurerm_mssql_managed_instance_active_directory_administrator" "name" {
  login_username = string (Required)
  managed_instance_id = string (Required)
  object_id = string (Required)
  tenant_id = string (Required)
  azuread_authentication_only = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
