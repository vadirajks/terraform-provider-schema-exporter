resource "azurerm_netapp_account_encryption" "name" {
  encryption_key = string (Required)
  netapp_account_id = string (Required)
  cross_tenant_key_vault_resource_id = string (Optional)
  federated_client_id = string (Optional)
  id = string (Optional, Computed)
  system_assigned_identity_principal_id = string (Optional)
  user_assigned_identity_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
