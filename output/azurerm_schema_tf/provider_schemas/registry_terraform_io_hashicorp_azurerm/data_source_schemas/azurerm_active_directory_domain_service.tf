data "azurerm_active_directory_domain_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  deployment_id = string (Computed)
  domain_configuration_type = string (Computed)
  domain_name = string (Computed)
  filtered_sync_enabled = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  notifications = ['list', ['object', {'additional_recipients': ['list', 'string'], 'notify_dc_admins': 'bool', 'notify_global_admins': 'bool'}]] (Computed)
  replica_sets = ['list', ['object', {'domain_controller_ip_addresses': ['list', 'string'], 'external_access_ip_address': 'string', 'id': 'string', 'location': 'string', 'service_status': 'string', 'subnet_id': 'string'}]] (Computed)
  resource_id = string (Computed)
  secure_ldap = ['list', ['object', {'certificate_expiry': 'string', 'certificate_thumbprint': 'string', 'enabled': 'bool', 'external_access_enabled': 'bool', 'public_certificate': 'string'}]] (Computed)
  security = ['list', ['object', {'kerberos_armoring_enabled': 'bool', 'kerberos_rc4_encryption_enabled': 'bool', 'ntlm_v1_enabled': 'bool', 'sync_kerberos_passwords': 'bool', 'sync_ntlm_passwords': 'bool', 'sync_on_prem_passwords': 'bool', 'tls_v1_enabled': 'bool'}]] (Computed)
  sku = string (Computed)
  sync_owner = string (Computed)
  tags = ['map', 'string'] (Optional)
  tenant_id = string (Computed)
  version = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
