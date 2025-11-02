resource "azurerm_netapp_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  active_directory block "list" (Optional) {
    dns_servers = ['list', 'string'] (Required)
    domain = string (Required)
    password = string (Required)
    smb_server_name = string (Required)
    username = string (Required)
    aes_encryption_enabled = bool (Optional)
    kerberos_ad_name = string (Optional)
    kerberos_kdc_ip = string (Optional)
    ldap_over_tls_enabled = bool (Optional)
    ldap_signing_enabled = bool (Optional)
    local_nfs_users_with_ldap_allowed = bool (Optional)
    organizational_unit = string (Optional)
    server_root_ca_certificate = string (Optional)
    site_name = string (Optional)
  }

  identity block "list" (Optional) {
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
