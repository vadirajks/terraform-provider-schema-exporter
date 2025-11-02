resource "azurerm_disk_encryption_set" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  auto_key_rotation_enabled = bool (Optional)
  encryption_type = string (Optional)
  federated_client_id = string (Optional)
  id = string (Optional, Computed)
  key_vault_key_id = string (Optional)
  key_vault_key_url = string (Computed)
  managed_hsm_key_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Required) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
