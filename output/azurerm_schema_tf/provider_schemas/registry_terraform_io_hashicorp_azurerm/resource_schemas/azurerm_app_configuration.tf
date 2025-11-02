resource "azurerm_app_configuration" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  data_plane_proxy_authentication_mode = string (Optional)
  data_plane_proxy_private_link_delegation_enabled = bool (Optional)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Optional)
  primary_read_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  primary_write_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  public_network_access = string (Optional)
  purge_protection_enabled = bool (Optional)
  secondary_read_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  secondary_write_key = ['list', ['object', {'connection_string': 'string', 'id': 'string', 'secret': 'string'}]] (Computed)
  sku = string (Optional)
  soft_delete_retention_days = number (Optional)
  tags = ['map', 'string'] (Optional)

  encryption block "list" (Optional) {
    identity_client_id = string (Optional)
    key_vault_key_identifier = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  replica block "set" (Optional) {
    location = string (Required)
    name = string (Required)
    endpoint = string (Computed)
    id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
