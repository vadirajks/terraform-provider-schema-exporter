resource "azurerm_private_dns_resolver_forwarding_rule" "name" {
  dns_forwarding_ruleset_id = string (Required)
  domain_name = string (Required)
  name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)

  target_dns_servers block "list" (Required) {
    ip_address = string (Required)
    port = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
