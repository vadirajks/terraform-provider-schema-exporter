data "azurerm_key_vault_managed_hardware_security_module" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  admin_object_ids = ['list', 'string'] (Computed)
  hsm_uri = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  purge_protection_enabled = bool (Computed)
  sku_name = string (Computed)
  soft_delete_retention_days = number (Computed)
  tags = ['map', 'string'] (Computed)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
