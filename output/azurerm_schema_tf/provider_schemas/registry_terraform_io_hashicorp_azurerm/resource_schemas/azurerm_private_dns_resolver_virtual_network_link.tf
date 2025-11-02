resource "azurerm_private_dns_resolver_virtual_network_link" "name" {
  dns_forwarding_ruleset_id = string (Required)
  name = string (Required)
  virtual_network_id = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
