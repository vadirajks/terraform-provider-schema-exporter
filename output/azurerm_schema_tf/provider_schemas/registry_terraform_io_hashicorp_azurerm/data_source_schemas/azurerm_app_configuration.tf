data "azurerm_app_configuration" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  data_plane_proxy_authentication_mode = string (Computed)
  data_plane_proxy_private_link_delegation_enabled = bool (Computed)
  encryption = ['list', ['object', {'identity_client_id': 'string', 'key_vault_key_identifier': 'string'}]] (Computed)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  local_auth_enabled = bool (Computed)
  location = string (Computed)
  primary_read_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  primary_write_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  public_network_access = string (Computed)
  public_network_access_enabled = bool (Computed)
  purge_protection_enabled = bool (Computed)
  replica = ['list', ['object', {'endpoint': 'string', 'id': 'string', 'location': 'string', 'name': 'string'}]] (Computed)
  secondary_read_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  secondary_write_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  sku = string (Computed)
  soft_delete_retention_days = number (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
