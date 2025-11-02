data "azurerm_vpn_server_configuration" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  azure_active_directory_authentication = ['list', ['object', {'audience': 'string', 'issuer': 'string', 'tenant': 'string'}]] (Computed)
  client_revoked_certificate = ['set', ['object', {'name': 'string', 'thumbprint': 'string'}]] (Computed)
  client_root_certificate = ['set', ['object', {'name': 'string', 'public_cert_data': 'string'}]] (Computed)
  id = string (Optional, Computed)
  ipsec_policy = ['list', ['object', {'dh_group': 'string', 'ike_encryption': 'string', 'ike_integrity': 'string', 'ipsec_encryption': 'string', 'ipsec_integrity': 'string', 'pfs_group': 'string', 'sa_data_size_kilobytes': 'number', 'sa_lifetime_seconds': 'number'}]] (Computed)
  location = string (Computed)
  radius = ['list', ['object', {'client_root_certificate': ['set', ['object', {'name': 'string', 'thumbprint': 'string'}]], 'server': ['list', ['object', {'address': 'string', 'score': 'number', 'secret': 'string'}]], 'server_root_certificate': ['set', ['object', {'name': 'string', 'public_cert_data': 'string'}]]}]] (Computed)
  tags = ['map', 'string'] (Computed)
  vpn_authentication_types = ['list', 'string'] (Computed)
  vpn_protocols = ['set', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
