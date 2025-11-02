resource "azurerm_sql_managed_instance_active_directory_administrator" "name" {
  login = string (Required)
  managed_instance_name = string (Required)
  object_id = string (Required)
  resource_group_name = string (Required)
  tenant_id = string (Required)
  azuread_authentication_only = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
