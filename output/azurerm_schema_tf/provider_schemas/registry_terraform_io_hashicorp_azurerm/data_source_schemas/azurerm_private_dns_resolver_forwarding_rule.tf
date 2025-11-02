data "azurerm_private_dns_resolver_forwarding_rule" "name" {
  dns_forwarding_ruleset_id = string (Required)
  name = string (Required)
  domain_name = string (Computed)
  enabled = bool (Computed)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Computed)
  target_dns_servers = ['list', ['object', {'ip_address': 'string', 'port': 'number'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
