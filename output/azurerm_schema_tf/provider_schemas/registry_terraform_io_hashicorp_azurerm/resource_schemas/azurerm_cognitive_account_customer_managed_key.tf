resource "azurerm_cognitive_account_customer_managed_key" "name" {
  cognitive_account_id = string (Required)
  key_vault_key_id = string (Required)
  id = string (Optional, Computed)
  identity_client_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
