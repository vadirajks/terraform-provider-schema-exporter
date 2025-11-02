resource "azurerm_vpn_server_configuration" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  vpn_authentication_types = ['list', 'string'] (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  vpn_protocols = ['set', 'string'] (Optional, Computed)

  azure_active_directory_authentication block "list" (Optional) {
    audience = string (Required)
    issuer = string (Required)
    tenant = string (Required)
  }

  client_revoked_certificate block "set" (Optional) {
    name = string (Required)
    thumbprint = string (Required)
  }

  client_root_certificate block "set" (Optional) {
    name = string (Required)
    public_cert_data = string (Required)
  }

  ipsec_policy block "list" (Optional) {
    dh_group = string (Required)
    ike_encryption = string (Required)
    ike_integrity = string (Required)
    ipsec_encryption = string (Required)
    ipsec_integrity = string (Required)
    pfs_group = string (Required)
    sa_data_size_kilobytes = number (Required)
    sa_lifetime_seconds = number (Required)
  }

  radius block "list" (Optional) {

    client_root_certificate block "set" (Optional) {
      name = string (Required)
      thumbprint = string (Required)
    }

    server block "list" (Optional) {
      address = string (Required)
      score = number (Required)
      secret = string (Required)
    }

    server_root_certificate block "set" (Optional) {
      name = string (Required)
      public_cert_data = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
