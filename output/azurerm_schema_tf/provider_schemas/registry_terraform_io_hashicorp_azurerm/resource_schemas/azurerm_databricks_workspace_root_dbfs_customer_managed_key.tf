resource "azurerm_databricks_workspace_root_dbfs_customer_managed_key" "name" {
  key_vault_key_id = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)
  key_vault_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
