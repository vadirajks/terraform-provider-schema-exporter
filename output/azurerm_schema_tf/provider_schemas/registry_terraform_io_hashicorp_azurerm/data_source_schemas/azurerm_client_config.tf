data "azurerm_client_config" "name" {
  client_id = string (Computed)
  id = string (Optional, Computed)
  object_id = string (Computed)
  subscription_id = string (Computed)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
