data "azurerm_private_dns_resolver_dns_forwarding_ruleset" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  private_dns_resolver_outbound_endpoint_ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
