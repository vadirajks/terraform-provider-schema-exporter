resource "azurerm_kusto_cluster_customer_managed_key" "name" {
  cluster_id = string (Required)
  id = string (Optional, Computed)
  key_name = string (Optional)
  key_vault_id = string (Optional)
  key_version = string (Optional)
  managed_hsm_key_id = string (Optional)
  user_identity = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
