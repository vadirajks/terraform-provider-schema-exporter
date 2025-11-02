resource "azurerm_eventhub_namespace_customer_managed_key" "name" {
  eventhub_namespace_id = string (Required)
  key_vault_key_ids = ['set', 'string'] (Required)
  id = string (Optional, Computed)
  infrastructure_encryption_enabled = bool (Optional)
  user_assigned_identity_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
