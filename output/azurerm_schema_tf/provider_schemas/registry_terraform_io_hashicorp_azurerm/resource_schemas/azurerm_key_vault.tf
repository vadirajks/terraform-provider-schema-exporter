resource "azurerm_key_vault" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  tenant_id = string (Required)
  access_policy = ['list', ['object', {'application_id': 'string', 'certificate_permissions': ['list', 'string'], 'key_permissions': ['list', 'string'], 'object_id': 'string', 'secret_permissions': ['list', 'string'], 'storage_permissions': ['list', 'string'], 'tenant_id': 'string'}]] (Optional, Computed)
  enable_rbac_authorization = bool (Optional, Computed)
  enabled_for_deployment = bool (Optional)
  enabled_for_disk_encryption = bool (Optional)
  enabled_for_template_deployment = bool (Optional)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  purge_protection_enabled = bool (Optional)
  rbac_authorization_enabled = bool (Optional, Computed)
  soft_delete_retention_days = number (Optional)
  tags = ['map', 'string'] (Optional)
  vault_uri = string (Computed)

  contact block "set" (Optional) {
    email = string (Required)
    name = string (Optional)
    phone = string (Optional)
  }

  network_acls block "list" (Optional) {
    bypass = string (Required)
    default_action = string (Required)
    ip_rules = ['set', 'string'] (Optional)
    virtual_network_subnet_ids = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
