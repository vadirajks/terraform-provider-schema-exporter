data "azurerm_private_dns_resolver_virtual_network_link" "name" {
  dns_forwarding_ruleset_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Computed)
  virtual_network_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
