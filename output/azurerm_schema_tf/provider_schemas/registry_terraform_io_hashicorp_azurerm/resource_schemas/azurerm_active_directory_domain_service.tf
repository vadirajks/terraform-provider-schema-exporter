resource "azurerm_active_directory_domain_service" "name" {
  domain_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  deployment_id = string (Computed)
  domain_configuration_type = string (Optional)
  filtered_sync_enabled = bool (Optional)
  id = string (Optional, Computed)
  resource_id = string (Computed)
  sync_owner = string (Computed)
  tags = ['map', 'string'] (Optional)
  tenant_id = string (Computed)
  version = number (Computed)

  initial_replica_set block "list" (Required) {
    subnet_id = string (Required)
    domain_controller_ip_addresses = ['list', 'string'] (Computed)
    external_access_ip_address = string (Computed)
    id = string (Computed)
    location = string (Computed)
    service_status = string (Computed)
  }

  notifications block "list" (Optional) {
    additional_recipients = ['set', 'string'] (Optional)
    notify_dc_admins = bool (Optional)
    notify_global_admins = bool (Optional)
  }

  secure_ldap block "list" (Optional) {
    enabled = bool (Required)
    pfx_certificate = string (Required)
    pfx_certificate_password = string (Required)
    certificate_expiry = string (Computed)
    certificate_thumbprint = string (Computed)
    external_access_enabled = bool (Optional)
    public_certificate = string (Computed)
  }

  security block "list" (Optional) {
    kerberos_armoring_enabled = bool (Optional)
    kerberos_rc4_encryption_enabled = bool (Optional)
    ntlm_v1_enabled = bool (Optional)
    sync_kerberos_passwords = bool (Optional)
    sync_ntlm_passwords = bool (Optional)
    sync_on_prem_passwords = bool (Optional)
    tls_v1_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
