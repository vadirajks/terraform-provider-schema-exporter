data "azurerm_firewall_policy" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  base_policy_id = string (Computed)
  child_policies = ['list', 'string'] (Computed)
  dns = ['list', ['object', {'network_rule_fqdn_enabled': 'bool', 'proxy_enabled': 'bool', 'servers': ['list', 'string']}]] (Computed)
  firewalls = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  rule_collection_groups = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)
  threat_intelligence_allowlist = ['list', ['object', {'fqdns': ['list', 'string'], 'ip_addresses': ['list', 'string']}]] (Computed)
  threat_intelligence_mode = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
