data "azurerm_api_management" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  additional_location = ['list', ['object', {'capacity': 'number', 'gateway_regional_url': 'string', 'location': 'string', 'private_ip_addresses': ['list', 'string'], 'public_ip_address_id': 'string', 'public_ip_addresses': ['list', 'string'], 'zones': ['list', 'string']}]] (Computed)
  developer_portal_url = string (Computed)
  gateway_regional_url = string (Computed)
  gateway_url = string (Computed)
  hostname_configuration = ['list', ['object', {'developer_portal': ['list', ['object', {'host_name': 'string', 'key_vault_certificate_id': 'string', 'key_vault_id': 'string', 'negotiate_client_certificate': 'bool'}]], 'management': ['list', ['object', {'host_name': 'string', 'key_vault_certificate_id': 'string', 'key_vault_id': 'string', 'negotiate_client_certificate': 'bool'}]], 'portal': ['list', ['object', {'host_name': 'string', 'key_vault_certificate_id': 'string', 'key_vault_id': 'string', 'negotiate_client_certificate': 'bool'}]], 'proxy': ['list', ['object', {'default_ssl_binding': 'bool', 'host_name': 'string', 'key_vault_certificate_id': 'string', 'key_vault_id': 'string', 'negotiate_client_certificate': 'bool'}]], 'scm': ['list', ['object', {'host_name': 'string', 'key_vault_certificate_id': 'string', 'key_vault_id': 'string', 'negotiate_client_certificate': 'bool'}]]}]] (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  management_api_url = string (Computed)
  notification_sender_email = string (Computed)
  portal_url = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  public_ip_address_id = string (Computed)
  public_ip_addresses = ['list', 'string'] (Computed)
  publisher_email = string (Computed)
  publisher_name = string (Computed)
  scm_url = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Optional)
  tenant_access = ['list', ['object', {'enabled': 'bool', 'primary_key': 'string', 'secondary_key': 'string', 'tenant_id': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
