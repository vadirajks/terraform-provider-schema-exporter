resource "azurerm_storage_account_customer_managed_key" "name" {
  key_name = string (Required)
  storage_account_id = string (Required)
  federated_identity_client_id = string (Optional)
  id = string (Optional, Computed)
  key_vault_id = string (Optional)
  key_vault_uri = string (Optional, Computed)
  key_version = string (Optional)
  managed_hsm_key_id = string (Optional)
  user_assigned_identity_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
