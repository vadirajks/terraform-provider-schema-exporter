resource "azurerm_elastic_san_volume_group" "name" {
  elastic_san_id = string (Required)
  name = string (Required)
  encryption_type = string (Optional)
  id = string (Optional, Computed)
  protocol_type = string (Optional)

  encryption block "list" (Optional) {
    key_vault_key_id = string (Required)
    current_versioned_key_expiration_timestamp = string (Computed)
    current_versioned_key_id = string (Computed)
    last_key_rotation_timestamp = string (Computed)
    user_assigned_identity_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  network_rule block "list" (Optional) {
    subnet_id = string (Required)
    action = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
