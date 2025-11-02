resource "azurerm_kusto_database_principal_assignment" "name" {
  cluster_name = string (Required)
  database_name = string (Required)
  name = string (Required)
  principal_id = string (Required)
  principal_type = string (Required)
  resource_group_name = string (Required)
  role = string (Required)
  tenant_id = string (Required)
  id = string (Optional, Computed)
  principal_name = string (Computed)
  tenant_name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
