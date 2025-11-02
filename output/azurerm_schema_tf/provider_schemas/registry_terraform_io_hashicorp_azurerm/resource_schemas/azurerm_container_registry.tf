resource "azurerm_container_registry" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  admin_enabled = bool (Optional)
  admin_password = string (Computed)
  admin_username = string (Computed)
  anonymous_pull_enabled = bool (Optional)
  data_endpoint_enabled = bool (Optional)
  data_endpoint_host_names = ['set', 'string'] (Computed)
  encryption = ['list', ['object', {'identity_client_id': 'string', 'key_vault_key_id': 'string'}]] (Optional, Computed)
  export_policy_enabled = bool (Optional)
  id = string (Optional, Computed)
  login_server = string (Computed)
  network_rule_bypass_option = string (Optional)
  network_rule_set = ['list', ['object', {'default_action': 'string', 'ip_rule': ['set', ['object', {'action': 'string', 'ip_range': 'string'}]]}]] (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  quarantine_policy_enabled = bool (Optional)
  retention_policy_in_days = number (Optional)
  tags = ['map', 'string'] (Optional)
  trust_policy_enabled = bool (Optional)
  zone_redundancy_enabled = bool (Optional)

  georeplications block "list" (Optional) {
    location = string (Required)
    regional_endpoint_enabled = bool (Optional)
    tags = ['map', 'string'] (Optional)
    zone_redundancy_enabled = bool (Optional)
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
