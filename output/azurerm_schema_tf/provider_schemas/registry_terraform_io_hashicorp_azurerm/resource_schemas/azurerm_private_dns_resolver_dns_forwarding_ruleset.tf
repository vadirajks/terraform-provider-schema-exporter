resource "azurerm_private_dns_resolver_dns_forwarding_ruleset" "name" {
  location = string (Required)
  name = string (Required)
  private_dns_resolver_outbound_endpoint_ids = ['list', 'string'] (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
