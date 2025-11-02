resource "azurerm_databricks_workspace_customer_managed_key" "name" {
  key_vault_key_id = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
