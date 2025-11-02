data "azurerm_key_vault" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  access_policy = ['list', ['object', {'application_id': 'string', 'certificate_permissions': ['list', 'string'], 'key_permissions': ['list', 'string'], 'object_id': 'string', 'secret_permissions': ['list', 'string'], 'storage_permissions': ['list', 'string'], 'tenant_id': 'string'}]] (Computed)
  enable_rbac_authorization = bool (Computed)
  enabled_for_deployment = bool (Computed)
  enabled_for_disk_encryption = bool (Computed)
  enabled_for_template_deployment = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  network_acls = ['list', ['object', {'bypass': 'string', 'default_action': 'string', 'ip_rules': ['list', 'string'], 'virtual_network_subnet_ids': ['list', 'string']}]] (Computed)
  public_network_access_enabled = bool (Computed)
  purge_protection_enabled = bool (Computed)
  rbac_authorization_enabled = bool (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)
  tenant_id = string (Computed)
  vault_uri = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
