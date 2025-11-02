resource "azurerm_servicebus_namespace_customer_managed_key" "name" {
  key_vault_key_id = string (Required)
  namespace_id = string (Required)
  id = string (Optional, Computed)
  infrastructure_encryption_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
