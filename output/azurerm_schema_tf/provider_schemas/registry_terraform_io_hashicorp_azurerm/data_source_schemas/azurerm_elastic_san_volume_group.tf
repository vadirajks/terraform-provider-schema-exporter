data "azurerm_elastic_san_volume_group" "name" {
  elastic_san_id = string (Required)
  name = string (Required)
  encryption = ['list', ['object', {'current_versioned_key_expiration_timestamp': 'string', 'current_versioned_key_id': 'string', 'key_vault_key_id': 'string', 'last_key_rotation_timestamp': 'string', 'user_assigned_identity_id': 'string'}]] (Computed)
  encryption_type = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  network_rule = ['list', ['object', {'action': 'string', 'subnet_id': 'string'}]] (Computed)
  protocol_type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
