data "azurerm_netapp_account_encryption" "name" {
  netapp_account_id = string (Required)
  cross_tenant_key_vault_resource_id = string (Computed)
  encryption_key = string (Computed)
  federated_client_id = string (Computed)
  id = string (Optional, Computed)
  system_assigned_identity_principal_id = string (Computed)
  user_assigned_identity_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
