resource "azurerm_key_vault_managed_hardware_security_module" "name" {
  admin_object_ids = ['set', 'string'] (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  tenant_id = string (Required)
  hsm_uri = string (Computed)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  purge_protection_enabled = bool (Optional)
  security_domain_encrypted_data = string (Computed)
  security_domain_key_vault_certificate_ids = ['list', 'string'] (Optional)
  security_domain_quorum = number (Optional)
  soft_delete_retention_days = number (Optional)
  tags = ['map', 'string'] (Optional)

  network_acls block "list" (Optional) {
    bypass = string (Required)
    default_action = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
