resource "azurerm_hpc_cache" "name" {
  cache_size_in_gb = number (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  subnet_id = string (Required)
  automatically_rotate_key_to_latest_enabled = bool (Optional)
  id = string (Optional, Computed)
  key_vault_key_id = string (Optional)
  mount_addresses = ['list', 'string'] (Computed)
  mtu = number (Optional)
  ntp_server = string (Optional)
  tags = ['map', 'string'] (Optional)

  default_access_policy block "list" (Optional) {

    access_rule block "set" (Required) {
      access = string (Required)
      scope = string (Required)
      anonymous_gid = number (Optional)
      anonymous_uid = number (Optional)
      filter = string (Optional)
      root_squash_enabled = bool (Optional)
      submount_access_enabled = bool (Optional)
      suid_enabled = bool (Optional)
    }
  }

  directory_active_directory block "list" (Optional) {
    cache_netbios_name = string (Required)
    dns_primary_ip = string (Required)
    domain_name = string (Required)
    domain_netbios_name = string (Required)
    password = string (Required)
    username = string (Required)
    dns_secondary_ip = string (Optional)
  }

  directory_flat_file block "list" (Optional) {
    group_file_uri = string (Required)
    password_file_uri = string (Required)
  }

  directory_ldap block "list" (Optional) {
    base_dn = string (Required)
    server = string (Required)
    certificate_validation_uri = string (Optional)
    download_certificate_automatically = bool (Optional)
    encrypted = bool (Optional)

    bind block "list" (Optional) {
      dn = string (Required)
      password = string (Required)
    }
  }

  dns block "list" (Optional) {
    servers = ['list', 'string'] (Required)
    search_domain = string (Optional)
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
